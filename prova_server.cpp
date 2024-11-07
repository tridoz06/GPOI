#include <boost/beast/core.hpp>
#include <boost/beast/http.hpp>
#include <boost/asio.hpp>

#include <mysql_driver.h>
#include <mysql_connection.h>

#include <cppconn/statement.h>
#include <cppconn/resultset.h>
#include <cppconn/prepared_statement.h>

#include <iostream>
#include <memory>
#include <unordered_map>
#include <fstream>
#include <sstream>
#include <stdexcept>
#include <iomanip>

#define DB_User "trida"
#define DB_Password "Mogg4356%#TRIDAPALI"
#define DB_Name "DB_Capolavoro"

using tcp = boost::asio::ip::tcp;
namespace http = boost::beast::http;

class Session : public std::enable_shared_from_this<Session> {
public:
    explicit Session(tcp::socket socket) : socket_(std::move(socket)) {}

    void start() {
        read_request();
    }

private:
    tcp::socket socket_;
    boost::beast::flat_buffer buffer_;
    http::request<http::string_body> req_;
    http::response<http::string_body> res_;
    std::string logged_username;

    void read_request() {
        auto self = shared_from_this();
        http::async_read(socket_, buffer_, req_,
            [self](boost::beast::error_code ec, std::size_t) {
                if (!ec) {
                    self->process_request();
                } else {
                    std::cerr << "Error reading request: " << ec.message() << std::endl;
                }
            });
    }

    void process_request() {
        if (req_.method() == http::verb::get) {
            handle_get_requests();
        } 
    }

    void handle_get_requests() {
        std::string filename = std::string( req_.target() );

        if ( filename  == "/" ||  (filename.find( "index.html" ) != std::string::npos ) ) {
            serve_html_file("index.html");

        }else if( filename.find( "impresa.html" ) != std::string::npos ){
            serve_html_file("/HTML/impresa.html");

        }else if( filename.find("gestione_progetto.html") != std::string::npos ){
            serve_html_file("/HTML/gestione_progett.html" );
        
        }else if( filename.find( "leader.hmtl" ) != std::string::npos ){
            serve_html_file("/HTML/leader.html");

        }else if( filename.find( "stellantis.html") != std::string::npos ){
            serve_html_file("/HTML/stellantis.html");

        }else if( filename.find("pil.html") != std::string::npos ){
            serve_html_file("/HTML/pil.html");

        }else if( filename.find( "inflazione.html") != std::string::npos ){
            serve_html_file("/HTML/inflazione.html");

        }else if( filename.find( "scuola_imparesa.html" ) != std::string::npos){
            serve_html_file( "/HTML/scuola_impresa.html");

        }else if( filename.find( "out_projects.html") != std::string::npos ){
            serve_html_file( "/HTML/our_projects.html" );
        
        }else if( filename.find( "page.css" ) != std::string::npos ){
            serve_css_file("/CSS/page.css");
            
        }else if( filename.find( "style.css" ) != std::string::npos ){
            serve_css_file( "/CSS/style.css ");

        }else if( filename.find( "main.js" ) != std::string::npos ){
            serve_js_file( "/JS/main.js" );

        }else if( filename.find( "page.js" ) != std::string::npos ){
            serve_js_file( "/JS/page.js" );

        }
        
    }



    void serve_html_file(const std::string& filename, const std::string& message = "", const std::string& username = "") {

        std::ifstream file(filename);
        if (!file.is_open()) {
            send_not_found();
            return;
        }

        std::ostringstream ss;
        ss << file.rdbuf();
        std::string content = ss.str();

        if (!message.empty()) {
            content += "<p>" + message + "</p>";
        }

        if(!username.empty()){
            content += "<script> let username = \"" + username + "\";</script>";
        }

        serve_response(content, "text/html", http::status::ok);
    }



    void serve_css_file(const std::string& filename) {
        std::ifstream file(filename);
        if (!file.is_open()) {
            send_not_found();
            return;
        }

        std::ostringstream ss;
        ss << file.rdbuf();
        serve_response(ss.str(), "text/css", http::status::ok);
    }

    void serve_js_file(const std::string& filename) {
        std::ifstream file(filename);
        if (!file.is_open()) {
            send_not_found();
            return;
        }

        std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

        serve_response(content, "application/javascript", http::status::ok);
    }


    void serve_image_file(const std::string& filename, const std::string& mime_type) {
        std::ifstream file(filename, std::ios::binary);
        if (!file.is_open()) {
            send_not_found();
            return;
        }

        std::string content((std::istreambuf_iterator<char>(file)), std::istreambuf_iterator<char>());

        serve_response(content, mime_type, http::status::ok);
    }

    void serve_png_image(const std::string& filename) {
        serve_image_file(filename, "image/png");
    }

    void serve_jpeg_image(const std::string& filename) {
        serve_image_file(filename, "image/jpeg");
    }

    void serve_webp_image(const std::string& filename) {
        serve_image_file(filename, "image/webp");
    }


    
    void serve_response(const std::string& body, const std::string& content_type, http::status status) {
        res_.result(status);
        res_.set(http::field::content_type, content_type);
        res_.body() = body;
        res_.prepare_payload();  // Ensure the payload is prepared
        auto self = shared_from_this();
        http::async_write(socket_, res_,
            [self](boost::beast::error_code ec, std::size_t) {
                self->socket_.shutdown(tcp::socket::shutdown_send, ec);
            });
    }

    void send_not_found() {
        serve_response("404 Not Found", "text/plain", http::status::not_found);
    }




};

class Server {
public:
    Server(boost::asio::io_context& ioc, tcp::endpoint endpoint) 
        : acceptor_(ioc, endpoint) {
        start_accept();
    }

private:
    tcp::acceptor acceptor_;

    void start_accept() {
        acceptor_.async_accept(
            [this](boost::beast::error_code ec, tcp::socket socket) {
                if (!ec) {
                    std::make_shared<Session>(std::move(socket))->start();
                }
                start_accept();
            });
    }
};

int main(int argc, char* argv[]) {

    try {
        boost::asio::io_context ioc;
        tcp::endpoint endpoint(tcp::v4(), 8080);
        Server server(ioc, endpoint);
        ioc.run();
    } catch (const std::exception& e) {
        std::cerr << "Server error: " << e.what() << std::endl;
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}
