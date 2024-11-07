#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <stdexcept>

#include <mysql_driver.h>
#include <mysql_connection.h>
#include <cppconn/statement.h>
#include <cppconn/resultset.h>
#include <cppconn/prepared_statement.h>

#define DB_OPERATION_FAILED false
#define DB_OPERATION_SUCCESSFUL true


class DB_Connection{
    private:

        const std::string DB_HOST = "tcp://127.0.0.1:3306";
        const std::string DB_NAME = "sito";
        const std::string DB_USERNAME = "user_sito";
        const std::string DB_PASSWORD = "user_sito_pwd";

        std::unique_ptr< sql::Connection > conn;

        std::pair< bool, std::string > connect_to_DB( ){
            try{
                sql::mysql::MySQL_Driver* driver = sql::mysql::get_mysql_driver_instance();

                this->conn = std::unique_ptr< sql::Connection>(driver->connect(DB_HOST,  DB_USERNAME, DB_PASSWORD));

                conn->setSchema( DB_NAME );
                
                return { DB_OPERATION_SUCCESSFUL , std::string("Connection to the databases was SUCCESSFUL") };

            }catch( sql::SQLException& e){
                return {DB_OPERATION_FAILED , std::string( "Connection to the database has FAILED: ") + e.what()  + std::string( "\nSQL ERROR CODE: " ) + std::to_string( e.getErrorCode() ) + std::string( "\nSQL STATUS: " ) + e.getSQLState() };
            }

        }

    public:

        DB_Connection(){

        }

        std::pair <bool, std::string> start(){
            return connect_to_DB();
        }

        std::pair< bool, std::string > read_data( ){

        }

        std::pair< bool, std::string > write_data(){

        }

        std::pair< bool, std::string > modify_data( ){

        }
};

class CMD_Manager{
    
    private:
        std::string cmd;
        std::string cmd_text;
        std::string file_path;

        DB_Connection dbconn;
    
    public:
        CMD_Manager(){

        }

        ~CMD_Manager(){

        }

        bool start(){
            std::pair< bool, std::string> connetion_try_response = dbconn.start();
            if( connetion_try_response.first == DB_OPERATION_SUCCESSFUL ){
                std::cout << connetion_try_response.second << std::endl;
            }else{
                std::cout << connetion_try_response.second << std::endl;
                return DB_OPERATION_FAILED;
            }
        }

};


int main(){
    CMD_Manager cmd_manager;

    if( cmd_manager.start() ==  DB_OPERATION_FAILED){
        std::cout << "\n\nFATAL ERROR, KILLNG PROGRAM EXECUTION\n\n" << std::endl;
        return 0;
    }


}




