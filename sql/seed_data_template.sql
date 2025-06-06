-- Powertrain types
INSERT INTO powertrain (powertrain_type, powertrain_description) VALUES
    ('Diesel', 'Standard diesel engine.'),
    ('Petrol', 'Standard petrol engine.'),
    ('Electric', 'Battery electric powertrain.'),
    ('Hybrid', 'Combination of electric and combustion.');

-- Address types
INSERT INTO address_type (address_type_name) VALUES
    ('dealership'),
    ('staff'),
    ('supplier'),
    ('origin'),
    ('destination');

-- Addresses
INSERT INTO address (street, town, postcode, address_type_id) VALUES
    ('1 Fleet Road', 'Newcastle', 'NE1 1AA', 1),         -- Dealership 1
    ('99 Motorway Lane', 'Teesside', 'TS1 2AB', 1),      -- Dealership 2
    ('12 Green Terrace', 'Sunderland', 'SR2 7QE', 2),    -- Staff: Alice Smith
    ('34 West Grove', 'Durham', 'DH1 5HX', 2),           -- Staff: John Doe
    ('77 Industrial Park', 'Middlesbrough', 'TS3 9XY', 3), -- Supplier 1
    ('45 Logistics Ave', 'Hartlepool', 'TS24 7ZZ', 3),   -- Supplier 2
    ('200 Origin Street', 'Gateshead', 'NE8 1AA', 4),    -- Shipment origin
    ('150 Destination Rd', 'Stockton-on-Tees', 'TS18 2BB', 5), -- Shipment dest
    ('21 Rose Street', 'Sunderland', 'SR3 4AB', 2);      -- Staff: Emily Brown (NEW)

-- Contact info
INSERT INTO contact_info (email_address, phone_number) VALUES
    ('contact.dealer1@fleetdemo.com', '+441234567890'),    -- Dealer 1
    ('sales.dealer2@fleetdemo.com', '+441234567891'),      -- Dealer 2
    ('alice.smith@fleetdemo.co.uk', '+447000000001'),      -- Staff: Alice Smith
    ('john.doe@fleetdemo.co.uk', '+447000000002'),         -- Staff: John Doe
    ('supplier1@fleetdemo.net', '+441612345678'),          -- Supplier 1
    ('supplier2@fleetdemo.net', '+441612345679'),          -- Supplier 2
    ('emily.brown@fleetdemo.co.uk', '+447000000003');      -- Staff: Emily Brown (NEW)

-- Garages
INSERT INTO garage (garage_name, contact_id, address_id) VALUES
    ('North East Garage', 1, 1),
    ('Teesside Maintenance', 2, 2);

-- Dealerships
INSERT INTO dealership (dealership_name, address_id, contact_id) VALUES
    ('Scania Newcastle', 1, 1),
    ('Renault Teesside', 2, 2);

-- Vehicle types
INSERT INTO vehicle_type (vehicle_type_name) VALUES
    ('Truck'),
    ('Trailer');

-- Vehicle models
INSERT INTO vehicle_model (model_name, powertrain_id, vehicle_type_id) VALUES
    ('Scania R450', 1, 1),
    ('Renault T-Series', 1, 1),
    ('Scania Electric', 3, 1);

-- Vehicles
INSERT INTO vehicle (vehicle_number, model_id, manufactured_year, mileage) VALUES
    ('NE-FL-0001', 1, 2019, 120000),
    ('TS-FL-0002', 2, 2018, 90000),
    ('NE-FL-0003', 3, 2022, 15000);

-- Vehicle registrations
INSERT INTO vehicle_registration (vehicle_id, number_plate, start_date, expiry_date) VALUES
    (1, 'NE19 FLT', '2019-01-01', '2024-01-01'),
    (2, 'TS18 FLT', '2018-06-01', '2023-06-01'),
    (3, 'NE22 ELE', '2022-05-01', '2027-05-01');

-- Clearance levels
INSERT INTO clearance_level (clearance_type, clearance_description) VALUES
    ('Admin', 'Full system access'),
    ('Manager', 'Can manage staff and assignments'),
    ('Driver', 'Can be assigned vehicles');

-- Staff roles
INSERT INTO staff_role (role_name, clearance_id) VALUES
    ('Administrator', 1),
    ('Fleet Manager', 2),
    ('Driver', 3);

-- Staff
INSERT INTO staff (surname, forename, staff_role_id, hire_date, contact_id, address_id) VALUES
    ('Smith', 'Alice', 3, '2020-04-15', 3, 3),      -- Uses contact_id 3, address_id 3
    ('Doe', 'John', 3, '2019-08-01', 4, 4),         -- Uses contact_id 4, address_id 4
    ('Brown', 'Emily', 2, '2018-11-23', 7, 9);      -- Uses contact_id 7, address_id 9

-- Certification types
INSERT INTO certification_type (cert_name) VALUES
    ('HGV License'),
    ('Safety Training');

-- Staff certifications
INSERT INTO staff_certification (staff_id, cert_type_id, expiry_date) VALUES
    (1, 1, '2025-12-31'), -- Alice Smith
    (1, 2, '2024-06-30'),
    (2, 1, '2024-11-15'), -- John Doe
    (3, 2, '2023-12-01'); -- Emily Brown

-- Suppliers
INSERT INTO supplier (supplier_name, contact_id, address_id) VALUES
    ('Northern Parts Ltd', 5, 5),
    ('Fleet Supplies Co', 6, 6);

-- Supplier contracts
INSERT INTO supplier_contract (supplier_id, contract_start_date, contract_end_date, contract_terms, contract_value, contract_renewal_date) VALUES
    (1, '2022-01-01', '2025-01-01', 'Supply of truck parts and accessories.', 150000.00, '2024-12-15'),
    (2, '2023-03-15', '2026-03-15', 'Logistics and freight support.', 200000.00, '2025-02-28');

-- Assignment statuses
INSERT INTO assignment_status (assignment_status_name, status_description) VALUES
    ('Planned', 'Assignment scheduled but not started'),
    ('Active', 'Assignment currently in progress'),
    ('Completed', 'Assignment finished successfully'),
    ('Cancelled', 'Assignment was cancelled');

-- Assignments
INSERT INTO assignment (vehicle_id, staff_id, contract_id, assignment_start_date, assignment_deadline, assignment_status_id) VALUES
    (1, 1, 1, '2024-01-10', '2024-01-20', 2), -- Alice Smith
    (2, 2, 2, '2024-02-01', '2024-02-15', 1); -- John Doe

-- Shipments
INSERT INTO shipment (assignment_id, origin_address_id, dest_address_id, shipment_date, delivery_date) VALUES
    (1, 7, 8, '2024-01-11', '2024-01-18'),
    (2, 8, 7, '2024-02-02', '2024-02-14');

