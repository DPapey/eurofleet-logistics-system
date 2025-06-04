#include "db.h"
#include <iostream>

Database::Database(const std::string& connection_str) : conn_str(connection_str), conn(nullptr) {}

//Connection to PSQL Database
bool Database::connect() {
	try {
		conn = std::make_unique<pqxx::connection>(conn_str);
		if (conn->is_open()) {
			std::cout << "Successful connection to database\n";
			return true;
		}
		else {
			std::cerr << "Failed to open database connection\n";
			return false;
		}
	}
	catch (const std::exception &e) { 
		std::cerr << "Connection failed: " << e.what() << "\n";
    		return false;
	}
}

//Disconnect from DB
void Database::disconnect() {
	if (conn) {
		conn.reset(); //destroys connection object, closes DB connection
		std::cout << "Successfully disconnected from the database.\n";
	}

}

//Auto-Disconnect with Destructor
Database::~Database() {
	if (conn) {
		std::cout << "Auto-Disconnecting from database...\n";
		conn.reset();
	}
}

//Connecting to the DB using session environment variables.
std::string getConnectionStrFromEnv() {
	const char* host = std::getenv("DB_HOST");
	const char* port = std::getenv("DB_PORT");
	const char* dbname = std::getenv("DB_NAME");
	const char* user = std::getenv("DB_USER");
	const char* pass = std::getenv("DB_PASS");

	if (!host || !port || !dbname || !user || !pass) {
		throw std::runtime_error("Missing one or more required DB environment variables.");
	}

	return "host=" + std::string(host) + 
		" port=" + std::string(port) + 
		" dbname=" + std::string(dbname) +
		" user=" + std::string(user) + 
		" password=" + std::string(pass);
}

//Execute SQL

