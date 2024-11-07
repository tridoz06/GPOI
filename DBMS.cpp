#include <iostream>
#include <string>
#include <vector>
#include <memory>
#include <stdexcept>
#include <unordered_map>

#include <boost/algorithm/string.hpp>

#include <string.h>

#include <mysql_driver.h>
#include <mysql_connection.h>
#include <cppconn/statement.h>
#include <cppconn/resultset.h>
#include <cppconn/prepared_statement.h>

#define DB_OPERATION_FAILED false
#define DB_OPERATION_SUCCESSFUL true

#define CMDMS_OPERATION_FAILED false
#define CMDMS_OPERATION_SUCCESSFUL true


#define EXIT_CODE -1
#define CREATEARG_CODE 1
#define MODIFYPAGENAME_CODE 2
#define CREATESECTION_CODE 3
#define ADDIMAGE_CODE 4
#define DELETEARG_CODE 5
#define DELETESECTION_CODE 6
#define DELETEIMAGE_CODE 7

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

        std::unordered_map< std::string, int> command_list;
        

        std::string to_lower( std::string str ){
            boost::algorithm::to_lower( str );
            return str;
        }

        std::pair< bool, std::string> function_output;

        DB_Connection dbconn;

        std::pair <bool, std::string > create_new_argument(){

        }

        std::pair <bool, std::string > modify_page_name(){

        }

        std::pair <bool, std::string > create_section(){

        }

        std::pair <bool, std::string > add_image(){

        }

        std::pair <bool, std::string > delete_argument(){

        }

        std::pair <bool, std::string > delete_section(){

        }

        std::pair <bool, std::string > delete_image(){

        }
        


        std::pair< bool, std::string > get_commands(){

            while( command_list[ to_lower(cmd)] != EXIT_CODE  && function_output.first == CMDMS_OPERATION_SUCCESSFUL && function_output.first == DB_OPERATION_SUCCESSFUL ){
                switch( command_list[ to_lower(cmd) ] ){

                    case 0:
                        command_list.erase( to_lower(cmd) );
                        std::cout << "COMANDO NON ESISTENTE" <<std::endl;
                        break;
                    
                    case -1:
                        function_output = {CMDMS_OPERATION_SUCCESSFUL, std::string("all operatiorn were SUCCSESSFUL") };
                        break;

                    case 1:
                            function_output = create_new_argument();
                        break;

                    case 2:
                            function_output = modify_page_name();
                        break;

                    case 3:
                            function_output =  create_section();
                    break;

                    case 4:
                            function_output = add_image();
                        break;

                    case 5:
                            function_output = delete_argument();
                        break;

                    case 6:
                            function_output = delete_section();
                        break;

                    case 7:
                        function_output = delete_image();
                        break;
                }


            }


        }

    public:
        CMD_Manager(){
            this -> cmd = "";
            this -> cmd_text = "";
            this -> file_path = "";

            command_list["exit"] = EXIT_CODE;
            command_list["createarg"] = CREATEARG_CODE;
            command_list["modifypagename"] = MODIFYPAGENAME_CODE;
            command_list["createseciont"] = CREATESECTION_CODE;
            command_list["addimage"] = ADDIMAGE_CODE;
            command_list["deletearg"] = DELETEARG_CODE;
            command_list["deletesection"] = DELETESECTION_CODE;
            command_list["deleteimage"] = DELETEIMAGE_CODE;

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

            function_output = get_commands();

            

        }

};


int main(){
    CMD_Manager cmd_manager;

    if( cmd_manager.start() ==  DB_OPERATION_FAILED){
        std::cout << "\n\nFATAL ERROR, KILLNG PROGRAM EXECUTION\n\n" << std::endl;
        return 0;
    }


}




