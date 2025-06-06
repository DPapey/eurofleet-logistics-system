INSERT INTO powertrain (powertrain_type, powertrain_description) VALUES
('Diesel', 'Diesel internal combustion engine'),
('Electric', 'Electric motor powered'),
('Hybrid', 'Combination of internal combustion and electric motor');

INSERT INTO address_type (address_type_name) VALUES
('Home'),
('Work'),
('Garage'),
('Dealership'),
('Warehouse');

INSERT INTO region (region_name) VALUES
('London'),
('South East'),
('Midlands'),
('North West'),
('Scotland');

INSERT INTO postcode (postcode, town, region_id) VALUES
('SW1A 1AA', 'London', 1),
('BN1 1AA', 'Brighton', 2),
('B1 1AA', 'Birmingham', 3),
('L1 1AA', 'Liverpool', 4),
('EH1 1AA', 'Edinburgh', 5);

INSERT INTO address (street, postcode_id, address_type_id) VALUES
('10 Downing Street', 1, 2),
('15 Kings Road', 2, 1),
('22 Garage Lane', 3, 3),
('45 Dealership Drive', 4, 4),
('3 Warehouse Way', 5, 5);

INSERT INTO contact_info (email_address, phone_number) VALUES
('john.doe@eurofleetlog.co.uk', '01234567890'),
('jane.smith@eurofleetlog.co.uk', '01987654321'),
('bob.brown@eurofleetlog.co.uk', '01189998877'),
('anna.white@eurofleetlog.co.uk', '01700987654'),
('mark.johnson@eurofleetlog.co.uk', '02079460123');

INSERT INTO garage (garage_name, contact_id, address_id) VALUES
('Central Garage', 3, 3),
('North Garage', 4, 3),
('East Garage', 5, 3);

INSERT INTO dealership (dealership_name, address_id, contact_id) VALUES
('City Dealership', 4, 1),
('Town Dealership', 5, 2),
('Village Dealership', 1, 3);

INSERT INTO vehicle_type (vehicle_type_name) VALUES
('Truck'),
('Van'),
('Trailer');

INSERT INTO vehicle_model (model_name, powertrain_id, vehicle_type_id) VALUES
('Model A', 1, 1),
('Model B', 2, 2),
('Model C', 3, 3);

INSERT INTO vehicle (vehicle_number, model_id, manufactured_year, mileage) VALUES
('VAN1234', 1, 2020, 25000),
('TRK5678', 2, 2022, 10000),
('TRL9012', 3, 2021, 5000);

INSERT INTO vehicle_registration (vehicle_id, number_plate, start_date, expiry_date) VALUES
(1, 'AB12 CDE', '2023-01-01', '2024-01-01'),
(2, 'EF34 GHI', '2023-03-01', '2024-03-01'),
(3, 'JK56 LMN', '2023-06-01', '2024-06-01');

INSERT INTO clearance_level (clearance_type, clearance_description) VALUES
('Level 1', 'Basic clearance'),
('Level 2', 'Intermediate clearance'),
('Level 3', 'Advanced clearance');

INSERT INTO staff_role (role_name, clearance_id) VALUES
('Driver', 1),
('Mechanic', 2),
('Manager', 3);

INSERT INTO staff (surname, forename, staff_role_id, hire_date, contact_id, address_id) VALUES
('Doe', 'John', 1, '2020-01-15', 1, 2),
('Smith', 'Jane', 2, '2019-04-23', 2, 2),
('Brown', 'Bob', 3, '2021-08-12', 3, 1);

INSERT INTO app_user (staff_id, username, hashed_password) VALUES
(1000, 'johndoe', '$2b$12$KIXQe0/pGzWt2EjQq4pqMe8Y.HN1UmAyQYXg3HxFMyWlPSBPSx9Se'),
(1001, 'janesmith', '$2b$12$abcdefgHIJKLmnoPQRstuVWXyz0123456789abcdefghijklmnopqrstu'),
(1002, 'bobbrown', '$2b$12$ZYXWVUTSRQPONMLKJIHGFEDCBA9876543210zyxwvutsrqponmlkjihg');

INSERT INTO certification_type (cert_name) VALUES
('HGV Licence'),
('Forklift Licence'),
('First Aid Certificate');

INSERT INTO staff_certification (staff_id, cert_type_id, expiry_date) VALUES
(1000, 1, '2025-12-31'),
(1001, 2, '2024-05-30'),
(1002, 3, '2023-11-15');

INSERT INTO supplier (supplier_name, contact_id, address_id) VALUES
('Transport Supplies Ltd', 4, 5),
('Fleet Maintenance Co', 5, 3),
('Parts & More', 1, 4);

INSERT INTO supplier_contract (supplier_id, contract_start_date, contract_end_date, contract_terms, contract_value, contract_renewal_date) VALUES
(1, '2022-01-01', '2025-01-01', 'Standard supply contract for transport materials', 150000.00, '2024-12-01'),
(2, '2021-06-15', '2024-06-14', 'Fleet maintenance and repairs', 95000.00, '2024-05-30'),
(3, '2023-03-01', '2026-02-28', 'Parts supply and logistics support', 50000.00, NULL);

INSERT INTO assignment_status (assignment_status_name, status_description) VALUES
('Pending', 'Assignment created, pending approval'),
('Active', 'Assignment currently active'),
('Completed', 'Assignment completed'),
('Cancelled', 'Assignment cancelled');

INSERT INTO assignment (vehicle_id, staff_id, contract_id, assignment_start_date, assignment_deadline, assignment_status_id) VALUES
(1, 1000, 1, '2023-06-01', '2023-06-15', 2),
(2, 1001, 2, '2023-05-01', '2023-05-30', 2),
(3, 1002, 3, '2023-04-15', '2023-05-15', 3);

INSERT INTO shipment (assignment_id, origin_address_id, dest_address_id, shipment_date, delivery_date) VALUES
(1, 3, 5, '2023-06-01', '2023-06-05'),
(2, 4, 2, '2023-05-01', '2023-05-10'),
(3, 5, 1, '2023-04-16', '2023-04-20');

