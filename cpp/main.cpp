#include "db/db.h"
#include <iostream>


int main(){

	try {
		std::string connStr = getConnectionStrFromEnv();
		Database db(connStr);

		if (!db.connect()) {
			std::cerr << "Failed to connect to the DB\n";
			return 1;
		}

		db.disconnect();
	} catch (const std::exception& e) {
		std::cerr << "Error: " << e.what() << "\n";
		return 1;
	}

	return 0;
}
