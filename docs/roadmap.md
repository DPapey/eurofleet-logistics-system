# Project Roadmap — Eurofleet Logistics System

## Overview
This roadmap outlines the key phases, milestones, and deliverables planned for the Eurofleet Logistics system project, covering the database schema, C++ application, and related tooling.

---

## Phase 1: Database Schema & Core SQL (Completed / In Progress)
- [x] Migrate initial MariaDB schema to PostgreSQL 
- [x] Design, refine and implement normalized PostgreSQL schema  
- [x] Create indexes, constraints, and triggers  
- [x] Develop PL/pgSQL functions for reporting (e.g., overdue contracts)  
- [ ] Write modular SQL scripts for schema management  

## Phase 2: C++ Application Development
- [ ] Setup C++ project with libpqxx for PostgreSQL integration  
- [ ] Implement CLI commands to manage:  
    - [ ] Vehicles (add, remove, assign number plates)  
    - [ ] Shipments and deliveries  
    - [ ] Staff records and certifications  
    - [ ] Supplier contracts and assignments  
- [ ] Implement report retrieval and display features  

## Phase 3: Archiving & Data Export
- [ ] Enable exporting reports in JSON and CSV formats  
- [ ] Implement local storage and indexing for easy retrieval  
- [ ] Add search functionality for archived reports  

## Phase 4: Testing & Validation
- [ ] Develop unit and integration tests for C++ components  
- [ ] Add validation and error handling in SQL and C++ layers  
- [ ] Perform end-to-end testing of database interactions  

---

## Notes
- Regularly update this roadmap as tasks progress and new requirements emerge  
- Prioritize core functionalities for MVP before expanding features  
- Use GitHub Issues and Projects to track individual tasks in detail  
