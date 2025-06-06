#ifndef DB_H
#define DB_H

#include <string>
#include <memory>
#include <pqxx/pqxx>



class Database {
	public:
		explicit Database(const std::string& connection_str);
		~Database(); //Autodisconnect deconstructor

		bool connect();
		void disconnect();
		bool isConnected() const;

		//Execute non-query SQL (INSERT, UPDATE, DELETE)
		bool executeSQL(const std::string& sql);

		//Return SELECT statement result
		pqxx::result executeQuery(const std::string& sql);
	
		//Provide access to connection for transactions if necessary.
		pqxx::connection& getConnection() const;

		//App User Login (Create Accounts with Staff email)
		bool loginUser(const std::string username, const std::string password);

	private:
		std::string conn_str;
		std::unique_ptr<pqxx::connection> conn; //Declaring connection as a smart pointer to securely close db when necessary.
};

std::string getConnectionStrFromEnv();

#endif
