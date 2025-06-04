#ifndef DB_H
#define DB_H

#include <string>
#include <vector>
#include <pqxx/pqxx>

struct vehicle {
	int id;
	std::string license_plate;
	std::string model;
	int year;
	std::string status;
};

class Database {
	public:
		Database(const std::string& connection_str);
		~Database();

		bool connect();
		void disconnect();

		std::vector<vehicle> getVehicles() const;
		bool executeSQL(const std::string& sql);

	private:
		std::string conn_str;
		std::unique_ptr<pqxx::connection> conn; //Safely declaring a unique pointer to close db when necessary.
};

std::string getConnectionStrFromEnv();

#endif
