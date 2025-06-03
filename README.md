# Logistics Fleet Management Database Schema & C++ Application

## Project Overview

This project aims to deliver a robust and scalable system to manage **Eurofleet Logistics’** truck fleet and dealership operations across the UK and European Union. The system will track vehicles, deliveries, staff certifications, and supplier contracts, with a focus on data integrity and operational efficiency.

The initial schema was developed in MariaDB but has since been migrated to **PostgreSQL** to leverage advanced database features, scalability, and procedural programming with **PL/pgSQL**.

Core logistics functions planned include managing vehicles, registering and removing fleet units, assigning number plates, tracking shipments and deliveries, monitoring overdue contracts, and maintaining staff certifications for safety and training compliance, for specific assignments.

---

## Technologies Used

- **PostgreSQL** — Primary RDBMS for schema, data integrity, and in-database logic (PL/pgSQL)  
- **MariaDB** — Initial RDBMS for early development, demonstrating adaptability  
- **SQL (DDL & DML)** — For schema design, constraints, data manipulation, and performance tuning  
- **PL/pgSQL** — Triggers, stored procedures, and reporting functions inside the database  
- **C++ (libpqxx)** — Application logic, CLI interface, and database integration  
- **Docker** — Containerisation for consistent PostgreSQL environments  
- **Git** — Version control and project management  

---

## Features & Functionality (Planned / In Progress)

- Third Normal Form (3NF) schema to reduce redundancy and enforce data integrity  
- ACID-compliant transactions for reliable, consistent operations  
- Strong referential integrity with foreign key constraints linking shipments, vehicles, staff, and contracts  
- Modular SQL scripts: separate schema, triggers, views, seed data, and queries  
- PL/pgSQL reporting functions, e.g. `get_overdue_contracts()` for efficient data retrieval  
- C++ CLI application for fleet management operations, report retrieval, and data archival  
- Archiving and searching reports locally in JSON/CSV formats by unique report IDs or date ranges  
- Staff certification tracking to ensure compliance with training and safety requirements  
- Comprehensive error handling and testing across SQL and C++ layers  

---

## Proposed Workflow & Architecture

1. **Develop SQL Schema** — Build and refine PostgreSQL schema ensuring data integrity. Keep documentation updated.  
2. **Implement PL/pgSQL Functions** — Create stored procedures for key reports and database logic.  
3. **Develop C++ CLI Application** — Use libpqxx to connect with PostgreSQL and implement interactive commands:  
   - Add/remove vehicles, assign licence plates  
   - Manage shipments, assignments, and suppliers  
   - Handle staff records and certifications  
   - Retrieve and display reports  
4. **Archive Reports** — Save report outputs locally (JSON/CSV) with unique identifiers for easy search and retrieval.  
5. **Testing & Error Handling** — Add unit tests in C++, implement input validation and error management in SQL and application code.  
6. **Version Control** — Commit regularly with meaningful messages and tag milestones.  

---

## Skills Demonstrated

- Object-oriented design in C++  
- Layered, modular software architecture  
- Real-world relational database design with PostgreSQL and PL/pgSQL  
- Application-database integration  
- Containerisation using Docker  
- Version control and project management using Git  
- Writing reusable SQL scripts and stored procedures  
- Data archiving and retrieval strategies for performance  

---

## Development Environment

This project uses a locally hosted PostgreSQL database environment managed via Docker for consistency and ease of setup.

You can find the Docker configuration and setup scripts here:  
[dpapey/docker-db-environments](https://github.com/DPapey/docker-db-environments)

To start your PostgreSQL container, follow the instructions in the linked repo, then connect the C++ application or SQL tools to the running database instance.

---

## Project Roadmap

Stay updated on the project's progress and upcoming tasks by checking the [Project Roadmap](docs/proadmap.md). It outlines key milestones, features planned, and development phases with task tracking.

You can track what’s completed and what’s next to keep an eye on the project status.

---

### Current Progress Snapshot
- Database schema & core SQL: ✅ Completed / In Progress  
- C++ Application Development: ⬜ Planned  
- Archiving & Data Export: ⬜ Planned  
- Testing & Validation: ⬜ Planned  

---

## Licensing

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


