-- *********************************************************************
-- Update Database Script
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 12/21/10 10:10 AM
-- Against: naval@jdbc:postgresql://localhost/navaldev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Create Database Lock Table
CREATE TABLE databasechangeloglock (ID INT NOT NULL, LOCKED BOOLEAN NOT NULL, LOCKGRANTED TIMESTAMP WITH TIME ZONE, LOCKEDBY VARCHAR(255), CONSTRAINT PK_DATABASECHANGELOGLOCK PRIMARY KEY (ID));

INSERT INTO databasechangeloglock (ID, LOCKED) VALUES (1, FALSE);

-- Lock Database
-- Create Database Change Log Table
CREATE TABLE databasechangelog (ID VARCHAR(63) NOT NULL, AUTHOR VARCHAR(63) NOT NULL, FILENAME VARCHAR(200) NOT NULL, DATEEXECUTED TIMESTAMP WITH TIME ZONE NOT NULL, ORDEREXECUTED INT NOT NULL, EXECTYPE VARCHAR(10) NOT NULL, MD5SUM VARCHAR(35), DESCRIPTION VARCHAR(255), COMMENTS VARCHAR(255), TAG VARCHAR(255), LIQUIBASE VARCHAR(20), CONSTRAINT PK_DATABASECHANGELOG PRIMARY KEY (ID, AUTHOR, FILENAME));

-- Changeset db.changelog-database.xml::initial-database-creation-1::mrego::(Checksum: 3:0819191bfc79c85258e53388e6c3a269)
CREATE TABLE advance_assignment (id BIGINT NOT NULL, version BIGINT NOT NULL, report_global_advance BOOLEAN, advance_type_id BIGINT, CONSTRAINT advance_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-1', '2.0-rc7', '3:0819191bfc79c85258e53388e6c3a269', 1);

-- Changeset db.changelog-database.xml::initial-database-creation-2::mrego::(Checksum: 3:492e699609703ebfdc7f14d0b9d3fa10)
CREATE TABLE advance_assignment_template (id BIGINT NOT NULL, version BIGINT NOT NULL, advance_type_id BIGINT, order_element_template_id BIGINT, report_global_advance BOOLEAN, max_value DECIMAL(19,2), CONSTRAINT advance_assignment_template_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-2', '2.0-rc7', '3:492e699609703ebfdc7f14d0b9d3fa10', 2);

-- Changeset db.changelog-database.xml::initial-database-creation-3::mrego::(Checksum: 3:ce0671ca8c9c310243bcc2ffb2d35523)
CREATE TABLE advance_measurement (id BIGINT NOT NULL, version BIGINT NOT NULL, date DATE, value DECIMAL(19,2), advance_assignment_id BIGINT, communication_date TIMESTAMP WITH TIME ZONE, CONSTRAINT advance_measurement_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-3', '2.0-rc7', '3:ce0671ca8c9c310243bcc2ffb2d35523', 3);

-- Changeset db.changelog-database.xml::initial-database-creation-4::mrego::(Checksum: 3:5a28bfc5ca316e6f6cd3a0b3ef5f67b9)
CREATE TABLE advance_type (id BIGINT NOT NULL, version BIGINT NOT NULL, unit_name VARCHAR(255), default_max_value DECIMAL(19,4), updatable BOOLEAN, unit_precision DECIMAL(19,4), active BOOLEAN, percentage BOOLEAN, quality_form BOOLEAN, CONSTRAINT advance_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-4', '2.0-rc7', '3:5a28bfc5ca316e6f6cd3a0b3ef5f67b9', 4);

-- Changeset db.changelog-database.xml::initial-database-creation-5::mrego::(Checksum: 3:dd32a9e5c58bd33f528f3a4176736205)
CREATE TABLE all_criterions (generic_resource_allocation_id BIGINT NOT NULL, criterion_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-5', '2.0-rc7', '3:dd32a9e5c58bd33f528f3a4176736205', 5);

-- Changeset db.changelog-database.xml::initial-database-creation-6::mrego::(Checksum: 3:de107aebd954ab5c29c39bd6260b1c69)
CREATE TABLE assignment_function (id BIGINT NOT NULL, version BIGINT NOT NULL, CONSTRAINT assignment_function_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-6', '2.0-rc7', '3:de107aebd954ab5c29c39bd6260b1c69', 6);

-- Changeset db.changelog-database.xml::initial-database-creation-7::mrego::(Checksum: 3:588d5677bcc5dff757c327873f896443)
CREATE TABLE base_calendar (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), code_autogenerated BOOLEAN, last_sequence_code INT, CONSTRAINT base_calendar_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-7', '2.0-rc7', '3:588d5677bcc5dff757c327873f896443', 7);

-- Changeset db.changelog-database.xml::initial-database-creation-8::mrego::(Checksum: 3:7fa824a67c2de27b2b2a3f66e5118412)
CREATE TABLE calendar_availability (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, start_date DATE, end_date DATE, base_calendar_id BIGINT, position_in_calendar INT, CONSTRAINT calendar_availability_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-8', '2.0-rc7', '3:7fa824a67c2de27b2b2a3f66e5118412', 8);

-- Changeset db.changelog-database.xml::initial-database-creation-9::mrego::(Checksum: 3:93bc8fa1188ddda3969df439f29c8f31)
CREATE TABLE calendar_data (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, parent BIGINT, expiring_date DATE, base_calendar_id BIGINT, position_in_calendar INT, CONSTRAINT calendar_data_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-9', '2.0-rc7', '3:93bc8fa1188ddda3969df439f29c8f31', 9);

-- Changeset db.changelog-database.xml::initial-database-creation-10::mrego::(Checksum: 3:0c72c8c2330c2408a6b079239c401a91)
CREATE TABLE calendar_exception (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, date DATE, duration INT, calendar_exception_id BIGINT, base_calendar_id BIGINT, CONSTRAINT calendar_exception_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-10', '2.0-rc7', '3:0c72c8c2330c2408a6b079239c401a91', 10);

-- Changeset db.changelog-database.xml::initial-database-creation-11::mrego::(Checksum: 3:30ecc1c237e1c3c3db800537ffa8883d)
CREATE TABLE calendar_exception_type (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, code_autogenerated BOOLEAN NOT NULL, name VARCHAR(255), color VARCHAR(255), not_assignable BOOLEAN, duration INT, CONSTRAINT calendar_exception_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-11', '2.0-rc7', '3:30ecc1c237e1c3c3db800537ffa8883d', 11);

-- Changeset db.changelog-database.xml::initial-database-creation-12::mrego::(Checksum: 3:f3c4e20ee90e3380f608f73bd0bbb630)
CREATE TABLE configuration (id BIGINT NOT NULL, version BIGINT NOT NULL, configuration_id BIGINT, company_code VARCHAR(255), generate_code_for_cost_category BOOLEAN NOT NULL, generate_code_for_calendar_exception_type BOOLEAN NOT NULL, generate_code_for_work_report_type BOOLEAN NOT NULL, generate_code_for_criterion BOOLEAN NOT NULL, generate_code_for_label BOOLEAN NOT NULL, generate_code_for_work_report BOOLEAN NOT NULL, generate_code_for_resources BOOLEAN NOT NULL, generate_code_for_types_of_work_hours BOOLEAN NOT NULL, generate_code_for_material_categories BOOLEAN NOT NULL, generate_code_for_unit_types BOOLEAN NOT NULL, generate_code_for_base_calendars BOOLEAN NOT NULL, expand_company_planning_view_charts BOOLEAN NOT NULL, expand_order_planning_view_charts BOOLEAN NOT NULL, expand_resource_load_view_charts BOOLEAN NOT NULL, monte_carlo_method_tab_visible BOOLEAN NOT NULL, progress_type INT, CONSTRAINT configuration_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-12', '2.0-rc7', '3:f3c4e20ee90e3380f608f73bd0bbb630', 12);

-- Changeset db.changelog-database.xml::initial-database-creation-13::mrego::(Checksum: 3:aaaa113557606faf71ee9f5ee1df07ce)
CREATE TABLE consolidated_value (id BIGINT NOT NULL, consolidated_value_type VARCHAR(255) NOT NULL, version BIGINT NOT NULL, date DATE, value DECIMAL(19,2), task_end_date DATE, consolidation_id BIGINT, advance_measurement_id BIGINT, CONSTRAINT consolidated_value_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-13', '2.0-rc7', '3:aaaa113557606faf71ee9f5ee1df07ce', 13);

-- Changeset db.changelog-database.xml::initial-database-creation-14::mrego::(Checksum: 3:54c846355565319d7d50bd78f4f569bb)
CREATE TABLE consolidation (id BIGINT NOT NULL, consolidation_type VARCHAR(255) NOT NULL, version BIGINT NOT NULL, dir_advance_assignment_id BIGINT, ind_advance_assignment_id BIGINT, CONSTRAINT consolidation_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-14', '2.0-rc7', '3:54c846355565319d7d50bd78f4f569bb', 14);

-- Changeset db.changelog-database.xml::initial-database-creation-15::mrego::(Checksum: 3:206376e864171d400ce1602f7ef53d49)
CREATE TABLE cost_category (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), code_autogenerated BOOLEAN NOT NULL, last_hour_cost_sequence_code INT NOT NULL, enabled BOOLEAN, CONSTRAINT cost_category_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-15', '2.0-rc7', '3:206376e864171d400ce1602f7ef53d49', 15);

-- Changeset db.changelog-database.xml::initial-database-creation-16::mrego::(Checksum: 3:cf757d69a753e856b6342f679cff9fac)
CREATE TABLE criterion (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), predefined_criterion_internal_name VARCHAR(255), active BOOLEAN, id_criterion_type BIGINT NOT NULL, parent BIGINT, CONSTRAINT criterion_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-16', '2.0-rc7', '3:cf757d69a753e856b6342f679cff9fac', 16);

-- Changeset db.changelog-database.xml::initial-database-creation-17::mrego::(Checksum: 3:ce6dfb988cb41f0adbe43e1855caa76e)
CREATE TABLE criterion_requirement (id BIGINT NOT NULL, criterion_requirement_type VARCHAR(255) NOT NULL, version BIGINT NOT NULL, hours_group_id BIGINT, order_element_id BIGINT, order_element_template_id BIGINT, criterion_id BIGINT, parent BIGINT, valid BOOLEAN, CONSTRAINT criterion_requirement_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-17', '2.0-rc7', '3:ce6dfb988cb41f0adbe43e1855caa76e', 17);

-- Changeset db.changelog-database.xml::initial-database-creation-18::mrego::(Checksum: 3:967c04d80a2d485f868b3c984579c4e8)
CREATE TABLE criterion_satisfaction (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, start_date TIMESTAMP WITH TIME ZONE NOT NULL, finish_date TIMESTAMP WITH TIME ZONE, is_deleted BOOLEAN, criterion BIGINT NOT NULL, resource BIGINT NOT NULL, CONSTRAINT criterion_satisfaction_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-18', '2.0-rc7', '3:967c04d80a2d485f868b3c984579c4e8', 18);

-- Changeset db.changelog-database.xml::initial-database-creation-19::mrego::(Checksum: 3:4e9058f3e2f5b8173503167ec5c538a3)
CREATE TABLE criterion_type (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), predefined_type_internal_name VARCHAR(255), description VARCHAR(255), allow_simultaneous_criterions_per_resource BOOLEAN, allow_hierarchy BOOLEAN, last_criterion_sequence_code INT, enabled BOOLEAN, code_autogenerated BOOLEAN NOT NULL, resource INT, CONSTRAINT criterion_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-19', '2.0-rc7', '3:4e9058f3e2f5b8173503167ec5c538a3', 19);

-- Changeset db.changelog-database.xml::initial-database-creation-20::mrego::(Checksum: 3:60a882fa6c0f1d848bf4c69f9bfff35c)
CREATE TABLE day_assignment (id BIGINT NOT NULL, day_assignment_type VARCHAR(255) NOT NULL, version BIGINT NOT NULL, duration INT NOT NULL, consolidated BOOLEAN, day DATE NOT NULL, resource_id BIGINT NOT NULL, specific_container_id BIGINT, generic_container_id BIGINT, derived_container_id BIGINT, CONSTRAINT day_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-20', '2.0-rc7', '3:60a882fa6c0f1d848bf4c69f9bfff35c', 20);

-- Changeset db.changelog-database.xml::initial-database-creation-21::mrego::(Checksum: 3:19b23f729aa196a1abed154f225db676)
CREATE TABLE dependency (id BIGINT NOT NULL, version BIGINT NOT NULL, origin BIGINT, destination BIGINT, queue_dependency BIGINT, type INT, CONSTRAINT dependency_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-21', '2.0-rc7', '3:19b23f729aa196a1abed154f225db676', 21);

-- Changeset db.changelog-database.xml::initial-database-creation-22::mrego::(Checksum: 3:947b787c1bbe91a331dd46cb1640f5e5)
CREATE TABLE derived_allocation (id BIGINT NOT NULL, version BIGINT NOT NULL, resource_allocation_id BIGINT, configurationunit BIGINT NOT NULL, CONSTRAINT derived_allocation_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-22', '2.0-rc7', '3:947b787c1bbe91a331dd46cb1640f5e5', 22);

-- Changeset db.changelog-database.xml::initial-database-creation-23::mrego::(Checksum: 3:48f908ec702ae89b5da9f0eac7479005)
CREATE TABLE derived_day_assignments_container (id BIGINT NOT NULL, version BIGINT NOT NULL, derived_allocation_id BIGINT, scenario BIGINT, CONSTRAINT derived_day_assignments_container_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-23', '2.0-rc7', '3:48f908ec702ae89b5da9f0eac7479005', 23);

-- Changeset db.changelog-database.xml::initial-database-creation-24::mrego::(Checksum: 3:84355bc36e649a2786237afa2239406b)
CREATE TABLE description_values (description_value_id BIGINT NOT NULL, fieldname VARCHAR(255), value VARCHAR(255));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-24', '2.0-rc7', '3:84355bc36e649a2786237afa2239406b', 24);

-- Changeset db.changelog-database.xml::initial-database-creation-25::mrego::(Checksum: 3:b8724c07bf0377b89a789f4068225748)
CREATE TABLE description_values_in_line (description_value_id BIGINT NOT NULL, field_name VARCHAR(255), value VARCHAR(255));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-25', '2.0-rc7', '3:b8724c07bf0377b89a789f4068225748', 25);

-- Changeset db.changelog-database.xml::initial-database-creation-26::mrego::(Checksum: 3:f9826236b01812c13b8773d5ab43eba3)
CREATE TABLE direct_advance_assignment (advance_assignment_id BIGINT NOT NULL, direct_order_element_id BIGINT, max_value DECIMAL(19,2), CONSTRAINT direct_advance_assignment_pkey PRIMARY KEY (advance_assignment_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-26', '2.0-rc7', '3:f9826236b01812c13b8773d5ab43eba3', 26);

-- Changeset db.changelog-database.xml::initial-database-creation-27::mrego::(Checksum: 3:c793cee4a905e7c283e5670c7a78ce75)
CREATE TABLE effort_per_day (base_calendar_id BIGINT NOT NULL, effort INT, day_id INT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-27', '2.0-rc7', '3:c793cee4a905e7c283e5670c7a78ce75', 27);

-- Changeset db.changelog-database.xml::initial-database-creation-28::mrego::(Checksum: 3:10e53ad074ddb8a722b7327c489af2a4)
CREATE TABLE entity_sequence (id BIGINT NOT NULL, version BIGINT NOT NULL, entity_name INT, prefix VARCHAR(255), last_value INT, number_of_digits INT, active BOOLEAN, CONSTRAINT entity_sequence_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-28', '2.0-rc7', '3:10e53ad074ddb8a722b7327c489af2a4', 28);

-- Changeset db.changelog-database.xml::initial-database-creation-29::mrego::(Checksum: 3:ffd33e338772b05e1ec66bc5f536b857)
CREATE TABLE external_company (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), nif VARCHAR(255), client BOOLEAN, subcontractor BOOLEAN, interacts_with_applications BOOLEAN, app_uri VARCHAR(255), our_company_login VARCHAR(255), our_company_password VARCHAR(255), company_user BIGINT, CONSTRAINT external_company_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-29', '2.0-rc7', '3:ffd33e338772b05e1ec66bc5f536b857', 29);

-- Changeset db.changelog-database.xml::initial-database-creation-30::mrego::(Checksum: 3:de8601efc174c9011c267a989abc558d)
CREATE TABLE generic_day_assignments_container (id BIGINT NOT NULL, version BIGINT NOT NULL, resource_allocation_id BIGINT, scenario BIGINT, start_date DATE, duration_start_in_first_day INT, end_date DATE, duration_in_last_day INT, CONSTRAINT generic_day_assignments_container_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-30', '2.0-rc7', '3:de8601efc174c9011c267a989abc558d', 30);

-- Changeset db.changelog-database.xml::initial-database-creation-31::mrego::(Checksum: 3:fc5ec26502de974f7ab46118f4f53196)
CREATE TABLE generic_resource_allocation (resource_allocation_id BIGINT NOT NULL, resource_type INT, CONSTRAINT generic_resource_allocation_pkey PRIMARY KEY (resource_allocation_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-31', '2.0-rc7', '3:fc5ec26502de974f7ab46118f4f53196', 31);

-- Changeset db.changelog-database.xml::initial-database-creation-32::mrego::(Checksum: 3:b3be37758841b13194d3710d6defef04)
CREATE TABLE heading_field (heading_id BIGINT NOT NULL, fieldname VARCHAR(255), length INT, positionnumber INT);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-32', '2.0-rc7', '3:b3be37758841b13194d3710d6defef04', 32);

-- Changeset db.changelog-database.xml::initial-database-creation-33::mrego::(Checksum: 3:a951462763f5d55a3f7e10f12f81335f)
CREATE TABLE hour_cost (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, price_cost DECIMAL(19,2), init_date DATE, end_date DATE, type_of_work_hours_id BIGINT, cost_category_id BIGINT, CONSTRAINT hour_cost_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-33', '2.0-rc7', '3:a951462763f5d55a3f7e10f12f81335f', 33);

-- Changeset db.changelog-database.xml::initial-database-creation-34::mrego::(Checksum: 3:a51224ce4bb0ca6d2b3f7bd992c65f0a)
CREATE TABLE hours_group (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, resource_type VARCHAR(255), working_hours INT NOT NULL, percentage DECIMAL(19,2), fixed_percentage BOOLEAN, parent_order_line BIGINT, order_line_template BIGINT, CONSTRAINT hours_group_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-34', '2.0-rc7', '3:a51224ce4bb0ca6d2b3f7bd992c65f0a', 34);

-- Changeset db.changelog-database.xml::initial-database-creation-35::mrego::(Checksum: 3:8afd863ae4753040b121f5858594660b)
CREATE TABLE indirect_advance_assignment (advance_assignment_id BIGINT NOT NULL, indirect_order_element_id BIGINT, CONSTRAINT indirect_advance_assignment_pkey PRIMARY KEY (advance_assignment_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-35', '2.0-rc7', '3:8afd863ae4753040b121f5858594660b', 35);

-- Changeset db.changelog-database.xml::initial-database-creation-36::mrego::(Checksum: 3:0754fc448f05289e922e36fe342d121d)
CREATE TABLE label (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), label_type_id BIGINT, CONSTRAINT label_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-36', '2.0-rc7', '3:0754fc448f05289e922e36fe342d121d', 36);

-- Changeset db.changelog-database.xml::initial-database-creation-37::mrego::(Checksum: 3:5cfa72b6d860176124f25ff3a9d331fc)
CREATE TABLE label_type (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), code_autogenerated BOOLEAN NOT NULL, last_label_sequence_code INT, CONSTRAINT label_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-37', '2.0-rc7', '3:5cfa72b6d860176124f25ff3a9d331fc', 37);

-- Changeset db.changelog-database.xml::initial-database-creation-38::mrego::(Checksum: 3:f831e87d1de1fc1338d42b8e833dc9c9)
CREATE TABLE limiting_resource_queue (id BIGINT NOT NULL, version BIGINT NOT NULL, resource_id BIGINT, CONSTRAINT limiting_resource_queue_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-38', '2.0-rc7', '3:f831e87d1de1fc1338d42b8e833dc9c9', 38);

-- Changeset db.changelog-database.xml::initial-database-creation-39::mrego::(Checksum: 3:6bd033fff9beeafa67d07445dbaee07f)
CREATE TABLE limiting_resource_queue_dependency (id BIGINT NOT NULL, type INT, origin_queue_element_id BIGINT, destiny_queue_element_id BIGINT, CONSTRAINT limiting_resource_queue_dependency_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-39', '2.0-rc7', '3:6bd033fff9beeafa67d07445dbaee07f', 39);

-- Changeset db.changelog-database.xml::initial-database-creation-40::mrego::(Checksum: 3:bdd3c4d65620a2a8f7b1a964a353f58f)
CREATE TABLE limiting_resource_queue_element (id BIGINT NOT NULL, version BIGINT NOT NULL, resource_allocation_id BIGINT, limiting_resource_queue_id BIGINT, earlier_start_date_because_of_gantt TIMESTAMP WITH TIME ZONE, earliest_end_date_because_of_gantt TIMESTAMP WITH TIME ZONE, creation_timestamp BIGINT, start_date DATE, start_hour INT, end_date DATE, end_hour INT, CONSTRAINT limiting_resource_queue_element_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-40', '2.0-rc7', '3:bdd3c4d65620a2a8f7b1a964a353f58f', 40);

-- Changeset db.changelog-database.xml::initial-database-creation-41::mrego::(Checksum: 3:096d3c30326f7805f4b0039355445d54)
CREATE TABLE line_field (heading_id BIGINT NOT NULL, fieldname VARCHAR(255), length INT, positionnumber INT);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-41', '2.0-rc7', '3:096d3c30326f7805f4b0039355445d54', 41);

-- Changeset db.changelog-database.xml::initial-database-creation-42::mrego::(Checksum: 3:ded3fb067f8bc57e6638e6920fd44604)
CREATE TABLE machine (machine_id BIGINT NOT NULL, name VARCHAR(255), description VARCHAR(255), CONSTRAINT machine_pkey PRIMARY KEY (machine_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-42', '2.0-rc7', '3:ded3fb067f8bc57e6638e6920fd44604', 42);

-- Changeset db.changelog-database.xml::initial-database-creation-43::mrego::(Checksum: 3:55f995d5648794d3432adc45e49630ac)
CREATE TABLE machine_configuration_unit_required_criterions (id BIGINT NOT NULL, criterion_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-43', '2.0-rc7', '3:55f995d5648794d3432adc45e49630ac', 43);

-- Changeset db.changelog-database.xml::initial-database-creation-44::mrego::(Checksum: 3:36bec1cf129dbbe7479b6fd37ec4cfc8)
CREATE TABLE machine_worker_assignment (id BIGINT NOT NULL, version BIGINT NOT NULL, start_date TIMESTAMP WITH TIME ZONE, finish_date TIMESTAMP WITH TIME ZONE, configuration_id BIGINT NOT NULL, worker_id BIGINT, CONSTRAINT machine_worker_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-44', '2.0-rc7', '3:36bec1cf129dbbe7479b6fd37ec4cfc8', 44);

-- Changeset db.changelog-database.xml::initial-database-creation-45::mrego::(Checksum: 3:14bba3e0f5ceb3f2fd6f8957e1838de4)
CREATE TABLE machine_workers_configuration_unit (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255) NOT NULL, alpha DECIMAL(19,2) NOT NULL, machine BIGINT NOT NULL, CONSTRAINT machine_workers_configuration_unit_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-45', '2.0-rc7', '3:14bba3e0f5ceb3f2fd6f8957e1838de4', 45);

-- Changeset db.changelog-database.xml::initial-database-creation-46::mrego::(Checksum: 3:20a4b538a58ecad5fefff00c68060415)
CREATE TABLE material (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, description VARCHAR(255), default_unit_price DECIMAL(19,2), unit_type BIGINT, disabled BOOLEAN, category_id BIGINT, CONSTRAINT material_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-46', '2.0-rc7', '3:20a4b538a58ecad5fefff00c68060415', 46);

-- Changeset db.changelog-database.xml::initial-database-creation-47::mrego::(Checksum: 3:20d9ca0a2dac404d34031a303d36332f)
CREATE TABLE material_assignment (id BIGINT NOT NULL, version BIGINT NOT NULL, units DECIMAL(19,2), unit_price DECIMAL(19,2), material_id BIGINT, estimated_availability TIMESTAMP WITH TIME ZONE, status INT, order_element_id BIGINT, CONSTRAINT material_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-47', '2.0-rc7', '3:20d9ca0a2dac404d34031a303d36332f', 47);

-- Changeset db.changelog-database.xml::initial-database-creation-48::mrego::(Checksum: 3:9422bfd2634488255bcbb32d73d4d9a6)
CREATE TABLE material_assignment_template (id BIGINT NOT NULL, version BIGINT NOT NULL, units DECIMAL(19,2), unit_price DECIMAL(19,2), material_id BIGINT, order_element_template_id BIGINT, CONSTRAINT material_assignment_template_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-48', '2.0-rc7', '3:9422bfd2634488255bcbb32d73d4d9a6', 48);

-- Changeset db.changelog-database.xml::initial-database-creation-49::mrego::(Checksum: 3:bb378576fc9548e6e0bf30c553be56c2)
CREATE TABLE material_category (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, name VARCHAR(255), code_autogenerated BOOLEAN NOT NULL, last_material_sequence_code INT NOT NULL, parent_id BIGINT, CONSTRAINT material_category_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-49', '2.0-rc7', '3:bb378576fc9548e6e0bf30c553be56c2', 49);

-- Changeset db.changelog-database.xml::initial-database-creation-50::mrego::(Checksum: 3:86be514721a43f3a69e0fc5575f68bcf)
CREATE TABLE order_authorization (id BIGINT NOT NULL, order_authorization_subclass VARCHAR(255) NOT NULL, version BIGINT NOT NULL, authorization_type VARCHAR(255) NOT NULL, order_id BIGINT, user_id BIGINT, profile_id BIGINT, CONSTRAINT order_authorization_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-50', '2.0-rc7', '3:86be514721a43f3a69e0fc5575f68bcf', 50);

-- Changeset db.changelog-database.xml::initial-database-creation-51::mrego::(Checksum: 3:6a7ac8677daeb7b232876fef8bc2eb13)
CREATE TABLE order_element (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), description VARCHAR(255), code VARCHAR(255), init_date TIMESTAMP WITH TIME ZONE, deadline TIMESTAMP WITH TIME ZONE, last_advance_measurement_for_spreading DECIMAL(19,2), dirty_last_advance_measurement_for_spreading BOOLEAN, parent BIGINT, template BIGINT, external_code VARCHAR(255), sum_charged_hours_id BIGINT, position_in_container INT, CONSTRAINT order_element_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-51', '2.0-rc7', '3:6a7ac8677daeb7b232876fef8bc2eb13', 51);

-- Changeset db.changelog-database.xml::initial-database-creation-52::mrego::(Checksum: 3:132f159f7460a378fe40004d8844911c)
CREATE TABLE order_element_label (order_element_id BIGINT NOT NULL, label_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-52', '2.0-rc7', '3:132f159f7460a378fe40004d8844911c', 52);

-- Changeset db.changelog-database.xml::initial-database-creation-53::mrego::(Checksum: 3:e86194e70e6973332ef4538bdc5d7a1a)
CREATE TABLE order_element_template (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), description VARCHAR(255), code VARCHAR(255), start_as_days_from_beginning INT, deadline_as_days_from_beginning INT, scheduling_state_type INT, parent BIGINT, position_in_container INT, CONSTRAINT order_element_template_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-53', '2.0-rc7', '3:e86194e70e6973332ef4538bdc5d7a1a', 53);

-- Changeset db.changelog-database.xml::initial-database-creation-54::mrego::(Checksum: 3:2524421c32a9b419da3fe430869fdb1d)
CREATE TABLE order_element_template_label (order_element_template_id BIGINT NOT NULL, label_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-54', '2.0-rc7', '3:2524421c32a9b419da3fe430869fdb1d', 54);

-- Changeset db.changelog-database.xml::initial-database-creation-55::mrego::(Checksum: 3:f07c8df4ae4b20f431ed20c225b80172)
CREATE TABLE order_element_template_quality_form (order_element_template_id BIGINT NOT NULL, quality_form_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-55', '2.0-rc7', '3:f07c8df4ae4b20f431ed20c225b80172', 55);

-- Changeset db.changelog-database.xml::initial-database-creation-56::mrego::(Checksum: 3:d180f6978451999d3c71c31e22a05f12)
CREATE TABLE order_line (order_element_id BIGINT NOT NULL, last_hours_group_sequence_code INT, CONSTRAINT order_line_pkey PRIMARY KEY (order_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-56', '2.0-rc7', '3:d180f6978451999d3c71c31e22a05f12', 56);

-- Changeset db.changelog-database.xml::initial-database-creation-57::mrego::(Checksum: 3:96dee6dd4c6fe24bdf27aec7375f97a2)
CREATE TABLE order_line_group (order_element_id BIGINT NOT NULL, CONSTRAINT order_line_group_pkey PRIMARY KEY (order_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-57', '2.0-rc7', '3:96dee6dd4c6fe24bdf27aec7375f97a2', 57);

-- Changeset db.changelog-database.xml::initial-database-creation-58::mrego::(Checksum: 3:57a5a9423e13e7d46ab17b29ef36e3ac)
CREATE TABLE order_line_group_template (group_template_id BIGINT NOT NULL, CONSTRAINT order_line_group_template_pkey PRIMARY KEY (group_template_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-58', '2.0-rc7', '3:57a5a9423e13e7d46ab17b29ef36e3ac', 58);

-- Changeset db.changelog-database.xml::initial-database-creation-59::mrego::(Checksum: 3:481dae68046dee1729404fcb4b8f6724)
CREATE TABLE order_line_template (order_line_template_id BIGINT NOT NULL, last_hours_group_sequence_code INT, CONSTRAINT order_line_template_pkey PRIMARY KEY (order_line_template_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-59', '2.0-rc7', '3:481dae68046dee1729404fcb4b8f6724', 59);

-- Changeset db.changelog-database.xml::initial-database-creation-60::mrego::(Checksum: 3:3c79c9a14789f861812e28b85f42ba1a)
CREATE TABLE order_table (order_element_id BIGINT NOT NULL, responsible VARCHAR(255), dependencies_constraints_have_priority BOOLEAN, code_autogenerated BOOLEAN, last_order_element_sequence_code INT, work_budget DECIMAL(19,2), materials_budget DECIMAL(19,2), total_hours INT, customer_reference VARCHAR(255), external_code VARCHAR(255), state INT, customer BIGINT, base_calendar_id BIGINT, CONSTRAINT order_table_pkey PRIMARY KEY (order_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-60', '2.0-rc7', '3:3c79c9a14789f861812e28b85f42ba1a', 60);

-- Changeset db.changelog-database.xml::initial-database-creation-61::mrego::(Checksum: 3:b0647147970dcc6926527bcc26e08d0d)
CREATE TABLE order_template (order_template_id BIGINT NOT NULL, base_calendar_id BIGINT, CONSTRAINT order_template_pkey PRIMARY KEY (order_template_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-61', '2.0-rc7', '3:b0647147970dcc6926527bcc26e08d0d', 61);

-- Changeset db.changelog-database.xml::initial-database-creation-62::mrego::(Checksum: 3:7a0cee9dc0952cca4c3e2a32508a4433)
CREATE TABLE order_version (id BIGINT NOT NULL, version BIGINT NOT NULL, modification_by_owner_timestamp TIMESTAMP WITH TIME ZONE, ownerscenario BIGINT, CONSTRAINT order_version_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-62', '2.0-rc7', '3:7a0cee9dc0952cca4c3e2a32508a4433', 62);

-- Changeset db.changelog-database.xml::initial-database-creation-63::mrego::(Checksum: 3:2b9225897f01e983677b51310e4fe0c6)
CREATE TABLE planning_data (planning_data_id BIGINT NOT NULL, progress_by_duration DECIMAL(19,2), progress_by_num_hours DECIMAL(19,2), CONSTRAINT planning_data_pkey PRIMARY KEY (planning_data_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-63', '2.0-rc7', '3:2b9225897f01e983677b51310e4fe0c6', 63);

-- Changeset db.changelog-database.xml::initial-database-creation-64::mrego::(Checksum: 3:8c6b353a40e4bbfe9ddec68b6e2ed109)
CREATE TABLE profile_roles (profile_id BIGINT NOT NULL, elt VARCHAR(255));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-64', '2.0-rc7', '3:8c6b353a40e4bbfe9ddec68b6e2ed109', 64);

-- Changeset db.changelog-database.xml::initial-database-creation-65::mrego::(Checksum: 3:181a3cfd4d56baa702ea56857d70c6a5)
CREATE TABLE profile_table (id BIGINT NOT NULL, version BIGINT NOT NULL, profile_name VARCHAR(255) NOT NULL, CONSTRAINT profile_table_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-65', '2.0-rc7', '3:181a3cfd4d56baa702ea56857d70c6a5', 65);

-- Changeset db.changelog-database.xml::initial-database-creation-66::mrego::(Checksum: 3:1ce12362bbe5c9289c1b1417b4534017)
CREATE TABLE quality_form (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), description VARCHAR(255), quality_form_type INT, report_advance BOOLEAN, advance_type_id BIGINT, CONSTRAINT quality_form_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-66', '2.0-rc7', '3:1ce12362bbe5c9289c1b1417b4534017', 66);

-- Changeset db.changelog-database.xml::initial-database-creation-67::mrego::(Checksum: 3:3db8192b7fc2c73f2d6f0b811b86193a)
CREATE TABLE quality_form_items (quality_form_id BIGINT NOT NULL, name VARCHAR(255), percentage DECIMAL(19,2), position INT, idx INT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-67', '2.0-rc7', '3:3db8192b7fc2c73f2d6f0b811b86193a', 67);

-- Changeset db.changelog-database.xml::initial-database-creation-68::mrego::(Checksum: 3:49669d8f9f006e24a66e6baef277ebaf)
CREATE TABLE resource (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, code_autogenerated BOOLEAN NOT NULL, limited_resource BOOLEAN NOT NULL, base_calendar_id BIGINT, CONSTRAINT resource_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-68', '2.0-rc7', '3:49669d8f9f006e24a66e6baef277ebaf', 68);

-- Changeset db.changelog-database.xml::initial-database-creation-69::mrego::(Checksum: 3:ec29eb383f779659440de1992b1b6bba)
CREATE TABLE resource_allocation (id BIGINT NOT NULL, version BIGINT NOT NULL, resources_per_day DECIMAL(19,2), intended_total_hours INT, original_total_assignment INT, task BIGINT, assignment_function BIGINT, CONSTRAINT resource_allocation_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-69', '2.0-rc7', '3:ec29eb383f779659440de1992b1b6bba', 69);

-- Changeset db.changelog-database.xml::initial-database-creation-70::mrego::(Checksum: 3:668c637d3c53b7592d3dc67fc4703cff)
CREATE TABLE resource_calendar (base_calendar_id BIGINT NOT NULL, capacity INT NOT NULL, CONSTRAINT resource_calendar_pkey PRIMARY KEY (base_calendar_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-70', '2.0-rc7', '3:668c637d3c53b7592d3dc67fc4703cff', 70);

-- Changeset db.changelog-database.xml::initial-database-creation-71::mrego::(Checksum: 3:4f9d5316304450ab582b0858ce87c849)
CREATE TABLE resources_cost_category_assignment (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, init_date DATE, end_date DATE, cost_category_id BIGINT, resource_id BIGINT, CONSTRAINT resources_cost_category_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-71', '2.0-rc7', '3:4f9d5316304450ab582b0858ce87c849', 71);

-- Changeset db.changelog-database.xml::initial-database-creation-72::mrego::(Checksum: 3:7a3e44f865f5a910f79c5f06e0b64f14)
CREATE TABLE roles_table (user_id BIGINT NOT NULL, elt VARCHAR(255));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-72', '2.0-rc7', '3:7a3e44f865f5a910f79c5f06e0b64f14', 72);

-- Changeset db.changelog-database.xml::initial-database-creation-73::mrego::(Checksum: 3:a635c19cae307c38b2763e3b9d58d224)
CREATE TABLE scenario (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), description VARCHAR(255), last_not_owned_reassignations_time_stamp TIMESTAMP WITH TIME ZONE, predecessor BIGINT, CONSTRAINT scenario_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-73', '2.0-rc7', '3:a635c19cae307c38b2763e3b9d58d224', 73);

-- Changeset db.changelog-database.xml::initial-database-creation-74::mrego::(Checksum: 3:95ac63bf89b9b48c007e8460e7e48cdb)
CREATE TABLE scenario_orders (order_id BIGINT NOT NULL, order_version_id BIGINT NOT NULL, scenario_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-74', '2.0-rc7', '3:95ac63bf89b9b48c007e8460e7e48cdb', 74);

-- Changeset db.changelog-database.xml::initial-database-creation-75::mrego::(Checksum: 3:28e6cc28eded2e909048c08ffacc1748)
CREATE TABLE scheduling_data_for_version (id BIGINT NOT NULL, version BIGINT NOT NULL, scheduling_state_type INT, order_element_id BIGINT, CONSTRAINT scheduling_data_for_version_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-75', '2.0-rc7', '3:28e6cc28eded2e909048c08ffacc1748', 75);

-- Changeset db.changelog-database.xml::initial-database-creation-76::mrego::(Checksum: 3:f32e144cefab5640c93a41de30b01609)
CREATE TABLE scheduling_states_by_order_version (order_element_id BIGINT NOT NULL, scheduling_state_for_version_id BIGINT NOT NULL, order_version_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-76', '2.0-rc7', '3:f32e144cefab5640c93a41de30b01609', 76);

-- Changeset db.changelog-database.xml::initial-database-creation-77::mrego::(Checksum: 3:5504fcfe56f3f27aedab1932b345ef67)
CREATE TABLE sigmoid_function (assignment_function_id BIGINT NOT NULL, CONSTRAINT sigmoid_function_pkey PRIMARY KEY (assignment_function_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-77', '2.0-rc7', '3:5504fcfe56f3f27aedab1932b345ef67', 77);

-- Changeset db.changelog-database.xml::initial-database-creation-78::mrego::(Checksum: 3:bfb3ce3ba16ec8f8206c296f743868e5)
CREATE TABLE specific_day_assignments_container (id BIGINT NOT NULL, version BIGINT NOT NULL, resource_allocation_id BIGINT, scenario BIGINT, start_date DATE, duration_start_in_first_day INT, end_date DATE, duration_in_last_day INT, CONSTRAINT specific_day_assignments_container_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-78', '2.0-rc7', '3:bfb3ce3ba16ec8f8206c296f743868e5', 78);

-- Changeset db.changelog-database.xml::initial-database-creation-79::mrego::(Checksum: 3:7b7e2576df7e2b013c4609c905a1e89f)
CREATE TABLE specific_resource_allocation (resource_allocation_id BIGINT NOT NULL, resource BIGINT, CONSTRAINT specific_resource_allocation_pkey PRIMARY KEY (resource_allocation_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-79', '2.0-rc7', '3:7b7e2576df7e2b013c4609c905a1e89f', 79);

-- Changeset db.changelog-database.xml::initial-database-creation-80::mrego::(Checksum: 3:f095dee1e812c9f76e21c526566bd348)
CREATE TABLE stretches (assignment_function_id BIGINT NOT NULL, date DATE NOT NULL, length_percentage DECIMAL(19,2) NOT NULL, amount_work_percentage DECIMAL(19,2) NOT NULL, stretch_position INT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-80', '2.0-rc7', '3:f095dee1e812c9f76e21c526566bd348', 80);

-- Changeset db.changelog-database.xml::initial-database-creation-81::mrego::(Checksum: 3:0e6f358e54f708c3e05debfeae8027f8)
CREATE TABLE stretches_function (assignment_function_id BIGINT NOT NULL, type INT, CONSTRAINT stretches_function_pkey PRIMARY KEY (assignment_function_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-81', '2.0-rc7', '3:0e6f358e54f708c3e05debfeae8027f8', 81);

-- Changeset db.changelog-database.xml::initial-database-creation-82::mrego::(Checksum: 3:660f1dd76f869c29fde7efc6f7e1255e)
CREATE TABLE subcontracted_task_data (id BIGINT NOT NULL, version BIGINT NOT NULL, external_company BIGINT, subcontratation_date TIMESTAMP WITH TIME ZONE, subcontract_communication_date TIMESTAMP WITH TIME ZONE, work_description VARCHAR(255), subcontract_price DECIMAL(19,2), subcontracted_code VARCHAR(255), node_without_children_exported BOOLEAN, labels_exported BOOLEAN, material_assignments_exported BOOLEAN, hours_groups_exported BOOLEAN, state INT, CONSTRAINT subcontracted_task_data_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-82', '2.0-rc7', '3:660f1dd76f869c29fde7efc6f7e1255e', 82);

-- Changeset db.changelog-database.xml::initial-database-creation-83::mrego::(Checksum: 3:43f98ac2e8ef569c2ace92091588dfc5)
CREATE TABLE sum_charged_hours (id BIGINT NOT NULL, version BIGINT NOT NULL, direct_charged_hours INT, indirect_charged_hours INT, CONSTRAINT sum_charged_hours_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-83', '2.0-rc7', '3:43f98ac2e8ef569c2ace92091588dfc5', 83);

-- Changeset db.changelog-database.xml::initial-database-creation-84::mrego::(Checksum: 3:72aa9950802d4e8da713013ae72ea212)
CREATE TABLE task (task_element_id BIGINT NOT NULL, calculated_value INT, start_constraint_type INT, constraint_date DATE, workable_days INT, allocation_direction INT, subcontracted_task_data_id BIGINT, priority INT, CONSTRAINT task_pkey PRIMARY KEY (task_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-84', '2.0-rc7', '3:72aa9950802d4e8da713013ae72ea212', 84);

-- Changeset db.changelog-database.xml::initial-database-creation-85::mrego::(Checksum: 3:5f58cf1966364d46c430e933f520332c)
CREATE TABLE task_element (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), notes VARCHAR(255), start_date DATE NOT NULL, start_day_duration INT, end_date DATE NOT NULL, end_day_duration INT, deadline DATE, advance_percentage DECIMAL(19,4), sum_of_hours_allocated INT, parent BIGINT, base_calendar_id BIGINT, position_in_parent INT, CONSTRAINT task_element_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-85', '2.0-rc7', '3:5f58cf1966364d46c430e933f520332c', 85);

-- Changeset db.changelog-database.xml::initial-database-creation-86::mrego::(Checksum: 3:930edd522020ea950b89ea3fcc60293f)
CREATE TABLE task_group (task_element_id BIGINT NOT NULL, CONSTRAINT task_group_pkey PRIMARY KEY (task_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-86', '2.0-rc7', '3:930edd522020ea950b89ea3fcc60293f', 86);

-- Changeset db.changelog-database.xml::initial-database-creation-87::mrego::(Checksum: 3:eef1806c4faaa543eabf7aa919ee1871)
CREATE TABLE task_milestone (task_element_id BIGINT NOT NULL, start_constraint_type INT, constraint_date DATE, CONSTRAINT task_milestone_pkey PRIMARY KEY (task_element_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-87', '2.0-rc7', '3:eef1806c4faaa543eabf7aa919ee1871', 87);

-- Changeset db.changelog-database.xml::initial-database-creation-88::mrego::(Checksum: 3:ba5ed5b46b50e4e696f26943e4846b38)
CREATE TABLE task_quality_form (id BIGINT NOT NULL, version BIGINT NOT NULL, quality_form_id BIGINT, order_element_id BIGINT, report_advance BOOLEAN, CONSTRAINT task_quality_form_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-88', '2.0-rc7', '3:ba5ed5b46b50e4e696f26943e4846b38', 88);

-- Changeset db.changelog-database.xml::initial-database-creation-89::mrego::(Checksum: 3:25d42a7f59acd170516f566f91db477b)
CREATE TABLE task_quality_form_items (task_quality_form_id BIGINT NOT NULL, name VARCHAR(255), percentage DECIMAL(19,2), position INT, passed BOOLEAN, date TIMESTAMP WITH TIME ZONE, idx INT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-89', '2.0-rc7', '3:25d42a7f59acd170516f566f91db477b', 89);

-- Changeset db.changelog-database.xml::initial-database-creation-90::mrego::(Checksum: 3:0220e67c3c6e052be5b2683f3aff6cd9)
CREATE TABLE task_source (id BIGINT NOT NULL, version BIGINT NOT NULL, schedulingdata BIGINT, CONSTRAINT task_source_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-90', '2.0-rc7', '3:0220e67c3c6e052be5b2683f3aff6cd9', 90);

-- Changeset db.changelog-database.xml::initial-database-creation-91::mrego::(Checksum: 3:dbeb7f14726427f4332caba3c3882781)
CREATE TABLE task_source_hours_groups (task_source_id BIGINT NOT NULL, hours_group_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-91', '2.0-rc7', '3:dbeb7f14726427f4332caba3c3882781', 91);

-- Changeset db.changelog-database.xml::initial-database-creation-92::mrego::(Checksum: 3:a4f2631814df0304d6e1a9142e0174a1)
CREATE TABLE type_of_work_hours (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), code VARCHAR(255), default_price DECIMAL(19,2), enabled BOOLEAN, code_autogenerated BOOLEAN NOT NULL, CONSTRAINT type_of_work_hours_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-92', '2.0-rc7', '3:a4f2631814df0304d6e1a9142e0174a1', 92);

-- Changeset db.changelog-database.xml::initial-database-creation-93::mrego::(Checksum: 3:665d61220b4af809bb0048a73af9529d)
CREATE TABLE unit_type (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, measure VARCHAR(255), code_autogenerated BOOLEAN NOT NULL, CONSTRAINT unit_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-93', '2.0-rc7', '3:665d61220b4af809bb0048a73af9529d', 93);

-- Changeset db.changelog-database.xml::initial-database-creation-94::mrego::(Checksum: 3:77fb476c14c92eda11701adb0a6d406f)
CREATE TABLE user_profiles (user_id BIGINT NOT NULL, profile_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-94', '2.0-rc7', '3:77fb476c14c92eda11701adb0a6d406f', 94);

-- Changeset db.changelog-database.xml::initial-database-creation-95::mrego::(Checksum: 3:2e07882701f4d10d2c5249aefdae87ee)
CREATE TABLE user_table (id BIGINT NOT NULL, version BIGINT NOT NULL, login_name VARCHAR(255) NOT NULL, password VARCHAR(255) NOT NULL, email VARCHAR(255), disabled BOOLEAN, lastconnectedscenario BIGINT, CONSTRAINT user_table_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-95', '2.0-rc7', '3:2e07882701f4d10d2c5249aefdae87ee', 95);

-- Changeset db.changelog-database.xml::initial-database-creation-96::mrego::(Checksum: 3:12e1f91eae40df9eda60c20d6f9c8874)
CREATE TABLE virtual_worker (virtual_worker_id BIGINT NOT NULL, observations VARCHAR(255), CONSTRAINT virtual_worker_pkey PRIMARY KEY (virtual_worker_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-96', '2.0-rc7', '3:12e1f91eae40df9eda60c20d6f9c8874', 96);

-- Changeset db.changelog-database.xml::initial-database-creation-97::mrego::(Checksum: 3:72db70644086a38aa90367c038a89350)
CREATE TABLE work_report (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, date TIMESTAMP WITH TIME ZONE, code_autogenerated BOOLEAN NOT NULL, last_work_report_line_sequence_code INT, ork_report_type_id BIGINT NOT NULL, resource_id BIGINT, order_element_id BIGINT, CONSTRAINT work_report_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-97', '2.0-rc7', '3:72db70644086a38aa90367c038a89350', 97);

-- Changeset db.changelog-database.xml::initial-database-creation-98::mrego::(Checksum: 3:1d6bac1b7849a0442a162078696893e3)
CREATE TABLE work_report_label_type_assignment (id BIGINT NOT NULL, version BIGINT NOT NULL, labels_shared_by_lines BOOLEAN, position_number INT, label_type_id BIGINT, label_id BIGINT, work_report_type_id BIGINT, CONSTRAINT work_report_label_type_assignment_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-98', '2.0-rc7', '3:1d6bac1b7849a0442a162078696893e3', 98);

-- Changeset db.changelog-database.xml::initial-database-creation-99::mrego::(Checksum: 3:7f6646bbd481090fa616c199b956b014)
CREATE TABLE work_report_line (id BIGINT NOT NULL, version BIGINT NOT NULL, code VARCHAR(255) NOT NULL, num_hours INT, date TIMESTAMP WITH TIME ZONE, clock_start INT, clock_finish INT, work_report_id BIGINT, resource_id BIGINT NOT NULL, order_element_id BIGINT NOT NULL, type_work_hours_id BIGINT NOT NULL, CONSTRAINT work_report_line_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-99', '2.0-rc7', '3:7f6646bbd481090fa616c199b956b014', 99);

-- Changeset db.changelog-database.xml::initial-database-creation-100::mrego::(Checksum: 3:bbbcbaf05cf76c8236d9137a4a7a25ec)
CREATE TABLE work_report_type (id BIGINT NOT NULL, version BIGINT NOT NULL, name VARCHAR(255), code VARCHAR(255), date_is_shared_by_lines BOOLEAN, resource_is_shared_in_lines BOOLEAN, order_element_is_shared_in_lines BOOLEAN, code_autogenerated BOOLEAN NOT NULL, hours_management INT, CONSTRAINT work_report_type_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-100', '2.0-rc7', '3:bbbcbaf05cf76c8236d9137a4a7a25ec', 100);

-- Changeset db.changelog-database.xml::initial-database-creation-101::mrego::(Checksum: 3:15f1e5f6e1f7c3308b084e536e88b9b8)
CREATE TABLE worker (worker_id BIGINT NOT NULL, first_name VARCHAR(255), surname VARCHAR(255), nif VARCHAR(255), CONSTRAINT worker_pkey PRIMARY KEY (worker_id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-101', '2.0-rc7', '3:15f1e5f6e1f7c3308b084e536e88b9b8', 101);

-- Changeset db.changelog-database.xml::initial-database-creation-102::mrego::(Checksum: 3:69b1aeed86840d511ac06119ad1f3c2a)
CREATE TABLE workreports_labels (work_report_id BIGINT NOT NULL, label_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-102', '2.0-rc7', '3:69b1aeed86840d511ac06119ad1f3c2a', 102);

-- Changeset db.changelog-database.xml::initial-database-creation-103::mrego::(Checksum: 3:57d3f2fd8967dfd691fd95d30fb1c134)
CREATE TABLE workreportslines_labels (work_report_line_id BIGINT NOT NULL, label_id BIGINT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-103', '2.0-rc7', '3:57d3f2fd8967dfd691fd95d30fb1c134', 103);

-- Changeset db.changelog-database.xml::initial-database-creation-104::mrego::(Checksum: 3:0e57f86b004bedba6c607c8d2c566164)
ALTER TABLE all_criterions ADD CONSTRAINT all_criterions_pkey PRIMARY KEY (generic_resource_allocation_id, criterion_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-104', '2.0-rc7', '3:0e57f86b004bedba6c607c8d2c566164', 104);

-- Changeset db.changelog-database.xml::initial-database-creation-105::mrego::(Checksum: 3:55a89da076a5b87ce5e49e1db3ed3fb9)
ALTER TABLE effort_per_day ADD CONSTRAINT effort_per_day_pkey PRIMARY KEY (base_calendar_id, day_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-105', '2.0-rc7', '3:55a89da076a5b87ce5e49e1db3ed3fb9', 105);

-- Changeset db.changelog-database.xml::initial-database-creation-106::mrego::(Checksum: 3:4db964219e3dde449c0a54d58d204a7b)
ALTER TABLE machine_configuration_unit_required_criterions ADD CONSTRAINT machine_configuration_unit_required_criterions_pkey PRIMARY KEY (id, criterion_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-106', '2.0-rc7', '3:4db964219e3dde449c0a54d58d204a7b', 106);

-- Changeset db.changelog-database.xml::initial-database-creation-107::mrego::(Checksum: 3:0d50d294d4db44aed32f8c909114645d)
ALTER TABLE order_element_label ADD CONSTRAINT order_element_label_pkey PRIMARY KEY (order_element_id, label_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-107', '2.0-rc7', '3:0d50d294d4db44aed32f8c909114645d', 107);

-- Changeset db.changelog-database.xml::initial-database-creation-108::mrego::(Checksum: 3:9c39ac8c3d6ebc758e69da66cfc20283)
ALTER TABLE order_element_template_label ADD CONSTRAINT order_element_template_label_pkey PRIMARY KEY (order_element_template_id, label_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-108', '2.0-rc7', '3:9c39ac8c3d6ebc758e69da66cfc20283', 108);

-- Changeset db.changelog-database.xml::initial-database-creation-109::mrego::(Checksum: 3:254739c105dc46829b4019e6cd4daa8e)
ALTER TABLE order_element_template_quality_form ADD CONSTRAINT order_element_template_quality_form_pkey PRIMARY KEY (order_element_template_id, quality_form_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-109', '2.0-rc7', '3:254739c105dc46829b4019e6cd4daa8e', 109);

-- Changeset db.changelog-database.xml::initial-database-creation-110::mrego::(Checksum: 3:330cbde32db56aa70e52784794b743ff)
ALTER TABLE quality_form_items ADD CONSTRAINT quality_form_items_pkey PRIMARY KEY (quality_form_id, idx);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-110', '2.0-rc7', '3:330cbde32db56aa70e52784794b743ff', 110);

-- Changeset db.changelog-database.xml::initial-database-creation-111::mrego::(Checksum: 3:39d0f5be8bc00a3752b5f49dd92866de)
ALTER TABLE scenario_orders ADD CONSTRAINT scenario_orders_pkey PRIMARY KEY (scenario_id, order_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-111', '2.0-rc7', '3:39d0f5be8bc00a3752b5f49dd92866de', 111);

-- Changeset db.changelog-database.xml::initial-database-creation-112::mrego::(Checksum: 3:005cd1ac6366225c7124eb995c790329)
ALTER TABLE scheduling_states_by_order_version ADD CONSTRAINT scheduling_states_by_order_version_pkey PRIMARY KEY (order_element_id, order_version_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-112', '2.0-rc7', '3:005cd1ac6366225c7124eb995c790329', 112);

-- Changeset db.changelog-database.xml::initial-database-creation-113::mrego::(Checksum: 3:aa9ef6bec758b8fef0d7f58d652f23ed)
ALTER TABLE stretches ADD CONSTRAINT stretches_pkey PRIMARY KEY (assignment_function_id, stretch_position);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-113', '2.0-rc7', '3:aa9ef6bec758b8fef0d7f58d652f23ed', 113);

-- Changeset db.changelog-database.xml::initial-database-creation-114::mrego::(Checksum: 3:57037ae27d15fb149b2b18b70e3ac640)
ALTER TABLE task_quality_form_items ADD CONSTRAINT task_quality_form_items_pkey PRIMARY KEY (task_quality_form_id, idx);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-114', '2.0-rc7', '3:57037ae27d15fb149b2b18b70e3ac640', 114);

-- Changeset db.changelog-database.xml::initial-database-creation-115::mrego::(Checksum: 3:9a325bc706e5f056e25b5029c144c5d8)
ALTER TABLE task_source_hours_groups ADD CONSTRAINT task_source_hours_groups_pkey PRIMARY KEY (task_source_id, hours_group_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-115', '2.0-rc7', '3:9a325bc706e5f056e25b5029c144c5d8', 115);

-- Changeset db.changelog-database.xml::initial-database-creation-116::mrego::(Checksum: 3:f5bef61b4276a1bf815b80abfbbdd0dd)
ALTER TABLE user_profiles ADD CONSTRAINT user_profiles_pkey PRIMARY KEY (user_id, profile_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-116', '2.0-rc7', '3:f5bef61b4276a1bf815b80abfbbdd0dd', 116);

-- Changeset db.changelog-database.xml::initial-database-creation-117::mrego::(Checksum: 3:7eff22e0b4befe8f4c445f1c5a58a15e)
ALTER TABLE workreports_labels ADD CONSTRAINT workreports_labels_pkey PRIMARY KEY (work_report_id, label_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-117', '2.0-rc7', '3:7eff22e0b4befe8f4c445f1c5a58a15e', 117);

-- Changeset db.changelog-database.xml::initial-database-creation-118::mrego::(Checksum: 3:dadfa8f8caf1ae02cfc16ecbed0c8b90)
ALTER TABLE workreportslines_labels ADD CONSTRAINT workreportslines_labels_pkey PRIMARY KEY (work_report_line_id, label_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Primary Key', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-118', '2.0-rc7', '3:dadfa8f8caf1ae02cfc16ecbed0c8b90', 118);

-- Changeset db.changelog-database.xml::initial-database-creation-119::mrego::(Checksum: 3:138d0588ac80f0a920e484db36f4e97d)
ALTER TABLE advance_type ADD CONSTRAINT advance_type_unit_name_key UNIQUE (unit_name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-119', '2.0-rc7', '3:138d0588ac80f0a920e484db36f4e97d', 119);

-- Changeset db.changelog-database.xml::initial-database-creation-120::mrego::(Checksum: 3:2a81f473aa411fe1bf94ff891f950f05)
ALTER TABLE base_calendar ADD CONSTRAINT base_calendar_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-120', '2.0-rc7', '3:2a81f473aa411fe1bf94ff891f950f05', 120);

-- Changeset db.changelog-database.xml::initial-database-creation-121::mrego::(Checksum: 3:465b67c4800169a5ad1a1fa4cf9937ce)
ALTER TABLE calendar_availability ADD CONSTRAINT calendar_availability_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-121', '2.0-rc7', '3:465b67c4800169a5ad1a1fa4cf9937ce', 121);

-- Changeset db.changelog-database.xml::initial-database-creation-122::mrego::(Checksum: 3:d9da052c7f29fb3f76a2a4056af176bd)
ALTER TABLE calendar_data ADD CONSTRAINT calendar_data_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-122', '2.0-rc7', '3:d9da052c7f29fb3f76a2a4056af176bd', 122);

-- Changeset db.changelog-database.xml::initial-database-creation-123::mrego::(Checksum: 3:7ebb4272b707b682e405cb30ebb3fccb)
ALTER TABLE calendar_exception ADD CONSTRAINT calendar_exception_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-123', '2.0-rc7', '3:7ebb4272b707b682e405cb30ebb3fccb', 123);

-- Changeset db.changelog-database.xml::initial-database-creation-124::mrego::(Checksum: 3:360b5d5226fa5eb0d62b8531c2812a05)
ALTER TABLE calendar_exception_type ADD CONSTRAINT calendar_exception_type_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-124', '2.0-rc7', '3:360b5d5226fa5eb0d62b8531c2812a05', 124);

-- Changeset db.changelog-database.xml::initial-database-creation-125::mrego::(Checksum: 3:963fdb094cb961a23659f3e19a1ddde3)
ALTER TABLE calendar_exception_type ADD CONSTRAINT calendar_exception_type_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-125', '2.0-rc7', '3:963fdb094cb961a23659f3e19a1ddde3', 125);

-- Changeset db.changelog-database.xml::initial-database-creation-126::mrego::(Checksum: 3:b20bb3c187e6488863f9d5481665fdac)
ALTER TABLE cost_category ADD CONSTRAINT cost_category_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-126', '2.0-rc7', '3:b20bb3c187e6488863f9d5481665fdac', 126);

-- Changeset db.changelog-database.xml::initial-database-creation-127::mrego::(Checksum: 3:f3035f410a920573b57eb459d1bcd6b1)
ALTER TABLE cost_category ADD CONSTRAINT cost_category_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-127', '2.0-rc7', '3:f3035f410a920573b57eb459d1bcd6b1', 127);

-- Changeset db.changelog-database.xml::initial-database-creation-128::mrego::(Checksum: 3:ca1cdff9e1a997ff2c7b285e84221ab3)
ALTER TABLE criterion ADD CONSTRAINT criterion_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-128', '2.0-rc7', '3:ca1cdff9e1a997ff2c7b285e84221ab3', 128);

-- Changeset db.changelog-database.xml::initial-database-creation-129::mrego::(Checksum: 3:b475e7347003735620c2366fe038ee40)
ALTER TABLE criterion ADD CONSTRAINT criterion_name_key UNIQUE (id_criterion_type, name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-129', '2.0-rc7', '3:b475e7347003735620c2366fe038ee40', 129);

-- Changeset db.changelog-database.xml::initial-database-creation-130::mrego::(Checksum: 3:5523e28282da63951996a88d29635632)
ALTER TABLE criterion_satisfaction ADD CONSTRAINT criterion_satisfaction_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-130', '2.0-rc7', '3:5523e28282da63951996a88d29635632', 130);

-- Changeset db.changelog-database.xml::initial-database-creation-131::mrego::(Checksum: 3:484e71ddda004fcbb6f56b3a1df07c12)
ALTER TABLE criterion_type ADD CONSTRAINT criterion_type_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-131', '2.0-rc7', '3:484e71ddda004fcbb6f56b3a1df07c12', 131);

-- Changeset db.changelog-database.xml::initial-database-creation-132::mrego::(Checksum: 3:750f465a29368e3c472c7717368e5315)
ALTER TABLE criterion_type ADD CONSTRAINT criterion_type_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-132', '2.0-rc7', '3:750f465a29368e3c472c7717368e5315', 132);

-- Changeset db.changelog-database.xml::initial-database-creation-133::mrego::(Checksum: 3:ed11a2642a9063cae1be4ee314990279)
ALTER TABLE external_company ADD CONSTRAINT external_company_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-133', '2.0-rc7', '3:ed11a2642a9063cae1be4ee314990279', 133);

-- Changeset db.changelog-database.xml::initial-database-creation-134::mrego::(Checksum: 3:632199e3f5e02d7b644fef85e7c7a148)
ALTER TABLE external_company ADD CONSTRAINT external_company_nif_key UNIQUE (nif);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-134', '2.0-rc7', '3:632199e3f5e02d7b644fef85e7c7a148', 134);

-- Changeset db.changelog-database.xml::initial-database-creation-135::mrego::(Checksum: 3:f6136a87270d6999c38c78c5a4507ba0)
ALTER TABLE hour_cost ADD CONSTRAINT hour_cost_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-135', '2.0-rc7', '3:f6136a87270d6999c38c78c5a4507ba0', 135);

-- Changeset db.changelog-database.xml::initial-database-creation-136::mrego::(Checksum: 3:3b8cdb7c8a87aded69e76f1127d93338)
ALTER TABLE hours_group ADD CONSTRAINT hours_group_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-136', '2.0-rc7', '3:3b8cdb7c8a87aded69e76f1127d93338', 136);

-- Changeset db.changelog-database.xml::initial-database-creation-137::mrego::(Checksum: 3:f21de5aaf5812d3b53ff6ba37c500419)
ALTER TABLE label ADD CONSTRAINT label_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-137', '2.0-rc7', '3:f21de5aaf5812d3b53ff6ba37c500419', 137);

-- Changeset db.changelog-database.xml::initial-database-creation-138::mrego::(Checksum: 3:212ee29342faa1bb2b4a50cfdfdf9a78)
ALTER TABLE label ADD CONSTRAINT label_name_key UNIQUE (label_type_id, name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-138', '2.0-rc7', '3:212ee29342faa1bb2b4a50cfdfdf9a78', 138);

-- Changeset db.changelog-database.xml::initial-database-creation-139::mrego::(Checksum: 3:c1cd1a61a496daaf1bc3e941f84aa781)
ALTER TABLE label_type ADD CONSTRAINT label_type_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-139', '2.0-rc7', '3:c1cd1a61a496daaf1bc3e941f84aa781', 139);

-- Changeset db.changelog-database.xml::initial-database-creation-140::mrego::(Checksum: 3:d5266cebc05f66e670752fd599970deb)
ALTER TABLE label_type ADD CONSTRAINT label_type_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-140', '2.0-rc7', '3:d5266cebc05f66e670752fd599970deb', 140);

-- Changeset db.changelog-database.xml::initial-database-creation-141::mrego::(Checksum: 3:1846e834301cbacca345ad1d30c97783)
ALTER TABLE limiting_resource_queue ADD CONSTRAINT limiting_resource_queue_resource_id_key UNIQUE (resource_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-141', '2.0-rc7', '3:1846e834301cbacca345ad1d30c97783', 141);

-- Changeset db.changelog-database.xml::initial-database-creation-142::mrego::(Checksum: 3:02dd707d2304800fa3353b76b4b14a79)
ALTER TABLE limiting_resource_queue_element ADD CONSTRAINT limiting_resource_queue_element_resource_allocation_id_key UNIQUE (resource_allocation_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-142', '2.0-rc7', '3:02dd707d2304800fa3353b76b4b14a79', 142);

-- Changeset db.changelog-database.xml::initial-database-creation-143::mrego::(Checksum: 3:c7d786a54bd2744456d86331287eaf88)
ALTER TABLE material ADD CONSTRAINT material_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-143', '2.0-rc7', '3:c7d786a54bd2744456d86331287eaf88', 143);

-- Changeset db.changelog-database.xml::initial-database-creation-144::mrego::(Checksum: 3:d83e1d31be4d2a88a30cef280323dc14)
ALTER TABLE material_category ADD CONSTRAINT material_category_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-144', '2.0-rc7', '3:d83e1d31be4d2a88a30cef280323dc14', 144);

-- Changeset db.changelog-database.xml::initial-database-creation-145::mrego::(Checksum: 3:2c8d1d5abd94c1f1b77b812e5a218703)
ALTER TABLE order_element ADD CONSTRAINT order_element_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-145', '2.0-rc7', '3:2c8d1d5abd94c1f1b77b812e5a218703', 145);

-- Changeset db.changelog-database.xml::initial-database-creation-146::mrego::(Checksum: 3:98959c39111d467dbaef246b4e77c7d4)
ALTER TABLE order_element ADD CONSTRAINT order_element_sum_charged_hours_id_key UNIQUE (sum_charged_hours_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-146', '2.0-rc7', '3:98959c39111d467dbaef246b4e77c7d4', 146);

-- Changeset db.changelog-database.xml::initial-database-creation-147::mrego::(Checksum: 3:2f5b3db90f5fe8d7166b8698732d89ee)
ALTER TABLE profile_table ADD CONSTRAINT profile_table_profile_name_key UNIQUE (profile_name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-147', '2.0-rc7', '3:2f5b3db90f5fe8d7166b8698732d89ee', 147);

-- Changeset db.changelog-database.xml::initial-database-creation-148::mrego::(Checksum: 3:b6ab8ac7897d485ec2c01795fdbacba6)
ALTER TABLE quality_form ADD CONSTRAINT quality_form_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-148', '2.0-rc7', '3:b6ab8ac7897d485ec2c01795fdbacba6', 148);

-- Changeset db.changelog-database.xml::initial-database-creation-149::mrego::(Checksum: 3:4621bf17b5d622b52e70ee84a2720ce4)
ALTER TABLE resource ADD CONSTRAINT resource_base_calendar_id_key UNIQUE (base_calendar_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-149', '2.0-rc7', '3:4621bf17b5d622b52e70ee84a2720ce4', 149);

-- Changeset db.changelog-database.xml::initial-database-creation-150::mrego::(Checksum: 3:d706f00de9bf475742860188e15d7b41)
ALTER TABLE resource ADD CONSTRAINT resource_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-150', '2.0-rc7', '3:d706f00de9bf475742860188e15d7b41', 150);

-- Changeset db.changelog-database.xml::initial-database-creation-151::mrego::(Checksum: 3:003b820bd40132476357aae25ba7d50b)
ALTER TABLE resources_cost_category_assignment ADD CONSTRAINT resources_cost_category_assignment_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-151', '2.0-rc7', '3:003b820bd40132476357aae25ba7d50b', 151);

-- Changeset db.changelog-database.xml::initial-database-creation-152::mrego::(Checksum: 3:cbe9e0b14bac88a7b895d8bc4c4777d7)
ALTER TABLE task ADD CONSTRAINT task_subcontracted_task_data_id_key UNIQUE (subcontracted_task_data_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-152', '2.0-rc7', '3:cbe9e0b14bac88a7b895d8bc4c4777d7', 152);

-- Changeset db.changelog-database.xml::initial-database-creation-153::mrego::(Checksum: 3:38dc59e34869bc2425c7c820ba45cb9b)
ALTER TABLE task_source ADD CONSTRAINT task_source_schedulingdata_key UNIQUE (schedulingdata);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-153', '2.0-rc7', '3:38dc59e34869bc2425c7c820ba45cb9b', 153);

-- Changeset db.changelog-database.xml::initial-database-creation-154::mrego::(Checksum: 3:1822fb3caf8d43038c67a53fdb75e432)
ALTER TABLE type_of_work_hours ADD CONSTRAINT type_of_work_hours_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-154', '2.0-rc7', '3:1822fb3caf8d43038c67a53fdb75e432', 154);

-- Changeset db.changelog-database.xml::initial-database-creation-155::mrego::(Checksum: 3:8416952db331ffa2dd27dc4f5734036c)
ALTER TABLE type_of_work_hours ADD CONSTRAINT type_of_work_hours_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-155', '2.0-rc7', '3:8416952db331ffa2dd27dc4f5734036c', 155);

-- Changeset db.changelog-database.xml::initial-database-creation-156::mrego::(Checksum: 3:4c2b2e5a5a4ee0175cab19c8b6ee084c)
ALTER TABLE unit_type ADD CONSTRAINT unit_type_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-156', '2.0-rc7', '3:4c2b2e5a5a4ee0175cab19c8b6ee084c', 156);

-- Changeset db.changelog-database.xml::initial-database-creation-157::mrego::(Checksum: 3:c5bf072f2de5890c8b3e22c07577f5ad)
ALTER TABLE user_table ADD CONSTRAINT user_table_login_name_key UNIQUE (login_name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-157', '2.0-rc7', '3:c5bf072f2de5890c8b3e22c07577f5ad', 157);

-- Changeset db.changelog-database.xml::initial-database-creation-158::mrego::(Checksum: 3:61b84144638971ed2b9f8a2a0fb1484f)
ALTER TABLE work_report ADD CONSTRAINT work_report_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-158', '2.0-rc7', '3:61b84144638971ed2b9f8a2a0fb1484f', 158);

-- Changeset db.changelog-database.xml::initial-database-creation-159::mrego::(Checksum: 3:edef41963c0d8e8d51ad15aa7a757420)
ALTER TABLE work_report_line ADD CONSTRAINT work_report_line_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-159', '2.0-rc7', '3:edef41963c0d8e8d51ad15aa7a757420', 159);

-- Changeset db.changelog-database.xml::initial-database-creation-160::mrego::(Checksum: 3:6d94d16cf714dd8872660b484e632513)
ALTER TABLE work_report_type ADD CONSTRAINT work_report_type_code_key UNIQUE (code);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-160', '2.0-rc7', '3:6d94d16cf714dd8872660b484e632513', 160);

-- Changeset db.changelog-database.xml::initial-database-creation-161::mrego::(Checksum: 3:c47020da3e40d9b6239153776affab17)
ALTER TABLE work_report_type ADD CONSTRAINT work_report_type_name_key UNIQUE (name);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Unique Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-161', '2.0-rc7', '3:c47020da3e40d9b6239153776affab17', 161);

-- Changeset db.changelog-database.xml::initial-database-creation-162::mrego::(Checksum: 3:8c1de34a4070d7a104ef5595ff365355)
ALTER TABLE advance_assignment ADD CONSTRAINT fkd4192eaab216ed4c FOREIGN KEY (advance_type_id) REFERENCES advance_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-162', '2.0-rc7', '3:8c1de34a4070d7a104ef5595ff365355', 162);

-- Changeset db.changelog-database.xml::initial-database-creation-163::mrego::(Checksum: 3:00c8bf9c83805a10ad1abbfe6cabdba8)
ALTER TABLE advance_assignment_template ADD CONSTRAINT fkd9bfae6fb216ed4c FOREIGN KEY (advance_type_id) REFERENCES advance_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-163', '2.0-rc7', '3:00c8bf9c83805a10ad1abbfe6cabdba8', 163);

-- Changeset db.changelog-database.xml::initial-database-creation-164::mrego::(Checksum: 3:3fa310189e738082742a06c3751f2f3e)
ALTER TABLE advance_assignment_template ADD CONSTRAINT fkd9bfae6f19b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-164', '2.0-rc7', '3:3fa310189e738082742a06c3751f2f3e', 164);

-- Changeset db.changelog-database.xml::initial-database-creation-165::mrego::(Checksum: 3:0ed5111ef301a24755a17b99ba609336)
ALTER TABLE advance_measurement ADD CONSTRAINT fkdaba2f7f2f2d3aec FOREIGN KEY (advance_assignment_id) REFERENCES advance_assignment(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-165', '2.0-rc7', '3:0ed5111ef301a24755a17b99ba609336', 165);

-- Changeset db.changelog-database.xml::initial-database-creation-166::mrego::(Checksum: 3:f781f197771175ae97a798ae4c732613)
ALTER TABLE advance_measurement ADD CONSTRAINT fkdaba2f7fa9e53843 FOREIGN KEY (advance_assignment_id) REFERENCES direct_advance_assignment(advance_assignment_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-166', '2.0-rc7', '3:f781f197771175ae97a798ae4c732613', 166);

-- Changeset db.changelog-database.xml::initial-database-creation-167::mrego::(Checksum: 3:f82641b8c47ac3372c38bd410315f1d7)
ALTER TABLE all_criterions ADD CONSTRAINT fk7980035061f02c44 FOREIGN KEY (criterion_id) REFERENCES criterion(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-167', '2.0-rc7', '3:f82641b8c47ac3372c38bd410315f1d7', 167);

-- Changeset db.changelog-database.xml::initial-database-creation-168::mrego::(Checksum: 3:e819b9f5b305d94a874ffff77f1b0b00)
ALTER TABLE all_criterions ADD CONSTRAINT fk79800350b1524a73 FOREIGN KEY (generic_resource_allocation_id) REFERENCES generic_resource_allocation(resource_allocation_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-168', '2.0-rc7', '3:e819b9f5b305d94a874ffff77f1b0b00', 168);

-- Changeset db.changelog-database.xml::initial-database-creation-169::mrego::(Checksum: 3:e638fd6a15647613720dfab7af6c67af)
ALTER TABLE calendar_availability ADD CONSTRAINT fk557738bca44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-169', '2.0-rc7', '3:e638fd6a15647613720dfab7af6c67af', 169);

-- Changeset db.changelog-database.xml::initial-database-creation-170::mrego::(Checksum: 3:5f2cae397111f9c4c4112a513b9e811f)
ALTER TABLE calendar_data ADD CONSTRAINT fk74fc040ba44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-170', '2.0-rc7', '3:5f2cae397111f9c4c4112a513b9e811f', 170);

-- Changeset db.changelog-database.xml::initial-database-creation-171::mrego::(Checksum: 3:0cd6d510389a9b5c7e7707baabf175d1)
ALTER TABLE calendar_data ADD CONSTRAINT fk74fc040b7fa34e3f FOREIGN KEY (parent) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-171', '2.0-rc7', '3:0cd6d510389a9b5c7e7707baabf175d1', 171);

-- Changeset db.changelog-database.xml::initial-database-creation-172::mrego::(Checksum: 3:1e0dbe21557bd995cc4e10c17b06ad77)
ALTER TABLE calendar_exception ADD CONSTRAINT fka215508ea44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-172', '2.0-rc7', '3:1e0dbe21557bd995cc4e10c17b06ad77', 172);

-- Changeset db.changelog-database.xml::initial-database-creation-173::mrego::(Checksum: 3:3c00120a79d285e58d49014dc3b3def2)
ALTER TABLE calendar_exception ADD CONSTRAINT fka215508eadad7e51 FOREIGN KEY (calendar_exception_id) REFERENCES calendar_exception_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-173', '2.0-rc7', '3:3c00120a79d285e58d49014dc3b3def2', 173);

-- Changeset db.changelog-database.xml::initial-database-creation-174::mrego::(Checksum: 3:a5d223789fb73e1b821bdd45c72478c8)
ALTER TABLE configuration ADD CONSTRAINT fk733374f6cc119699 FOREIGN KEY (configuration_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-174', '2.0-rc7', '3:a5d223789fb73e1b821bdd45c72478c8', 174);

-- Changeset db.changelog-database.xml::initial-database-creation-175::mrego::(Checksum: 3:b7e560667260a76220664084e75a699b)
ALTER TABLE consolidated_value ADD CONSTRAINT fk35588e2db96bba28 FOREIGN KEY (advance_measurement_id) REFERENCES advance_measurement(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-175', '2.0-rc7', '3:b7e560667260a76220664084e75a699b', 175);

-- Changeset db.changelog-database.xml::initial-database-creation-176::mrego::(Checksum: 3:a04c06f20662d01674c2481258088719)
ALTER TABLE consolidated_value ADD CONSTRAINT fk35588e2d3ae24ff8 FOREIGN KEY (consolidation_id) REFERENCES consolidation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-176', '2.0-rc7', '3:a04c06f20662d01674c2481258088719', 176);

-- Changeset db.changelog-database.xml::initial-database-creation-177::mrego::(Checksum: 3:eda6446777e754a9b28667808386fc07)
ALTER TABLE consolidation ADD CONSTRAINT fkc9400e2c9f1d6611 FOREIGN KEY (dir_advance_assignment_id) REFERENCES direct_advance_assignment(advance_assignment_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-177', '2.0-rc7', '3:eda6446777e754a9b28667808386fc07', 177);

-- Changeset db.changelog-database.xml::initial-database-creation-178::mrego::(Checksum: 3:cc43a952d1f4e90ae8ca08a86400b5b8)
ALTER TABLE consolidation ADD CONSTRAINT fkc9400e2cff2b2ba3 FOREIGN KEY (id) REFERENCES task(task_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-178', '2.0-rc7', '3:cc43a952d1f4e90ae8ca08a86400b5b8', 178);

-- Changeset db.changelog-database.xml::initial-database-creation-179::mrego::(Checksum: 3:3b7feac7849308d546f9e32306a0337b)
ALTER TABLE consolidation ADD CONSTRAINT fkc9400e2c430ea1de FOREIGN KEY (ind_advance_assignment_id) REFERENCES indirect_advance_assignment(advance_assignment_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-179', '2.0-rc7', '3:3b7feac7849308d546f9e32306a0337b', 179);

-- Changeset db.changelog-database.xml::initial-database-creation-180::mrego::(Checksum: 3:626dfbab1f6c43cbf5eda15af6c2d0b4)
ALTER TABLE criterion ADD CONSTRAINT fk16e20ea114a5c61 FOREIGN KEY (id_criterion_type) REFERENCES criterion_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-180', '2.0-rc7', '3:626dfbab1f6c43cbf5eda15af6c2d0b4', 180);

-- Changeset db.changelog-database.xml::initial-database-creation-181::mrego::(Checksum: 3:5d35e584fe5144871639463ab48448d9)
ALTER TABLE criterion ADD CONSTRAINT fk16e20ea13a156175 FOREIGN KEY (parent) REFERENCES criterion(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-181', '2.0-rc7', '3:5d35e584fe5144871639463ab48448d9', 181);

-- Changeset db.changelog-database.xml::initial-database-creation-182::mrego::(Checksum: 3:54f532733816ed1173eb0a0978bc5d80)
ALTER TABLE criterion_requirement ADD CONSTRAINT fkef395fa561f02c44 FOREIGN KEY (criterion_id) REFERENCES criterion(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-182', '2.0-rc7', '3:54f532733816ed1173eb0a0978bc5d80', 182);

-- Changeset db.changelog-database.xml::initial-database-creation-183::mrego::(Checksum: 3:edf8db4cfb961a06787936314df7b94e)
ALTER TABLE criterion_requirement ADD CONSTRAINT fkef395fa5e036cfed FOREIGN KEY (hours_group_id) REFERENCES hours_group(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-183', '2.0-rc7', '3:edf8db4cfb961a06787936314df7b94e', 183);

-- Changeset db.changelog-database.xml::initial-database-creation-184::mrego::(Checksum: 3:1e122af08a912e15ee5c66f91b6c5bfa)
ALTER TABLE criterion_requirement ADD CONSTRAINT fkef395fa5efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-184', '2.0-rc7', '3:1e122af08a912e15ee5c66f91b6c5bfa', 184);

-- Changeset db.changelog-database.xml::initial-database-creation-185::mrego::(Checksum: 3:49c144bddd204a4b53a3fa24016b0be2)
ALTER TABLE criterion_requirement ADD CONSTRAINT fkef395fa519b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-185', '2.0-rc7', '3:49c144bddd204a4b53a3fa24016b0be2', 185);

-- Changeset db.changelog-database.xml::initial-database-creation-186::mrego::(Checksum: 3:7f27b6d4f3c5e0b00fb64f7131248b36)
ALTER TABLE criterion_requirement ADD CONSTRAINT fkef395fa5f41d57f2 FOREIGN KEY (parent) REFERENCES criterion_requirement(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-186', '2.0-rc7', '3:7f27b6d4f3c5e0b00fb64f7131248b36', 186);

-- Changeset db.changelog-database.xml::initial-database-creation-187::mrego::(Checksum: 3:9c92c633ec12d7a6df8b65c97ad0fa35)
ALTER TABLE criterion_satisfaction ADD CONSTRAINT fk225ff96a8c4c676c FOREIGN KEY (criterion) REFERENCES criterion(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-187', '2.0-rc7', '3:9c92c633ec12d7a6df8b65c97ad0fa35', 187);

-- Changeset db.changelog-database.xml::initial-database-creation-188::mrego::(Checksum: 3:94a94a8ce91fc86d16d4fa653a0d1453)
ALTER TABLE criterion_satisfaction ADD CONSTRAINT fk225ff96aeae850b2 FOREIGN KEY (resource) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-188', '2.0-rc7', '3:94a94a8ce91fc86d16d4fa653a0d1453', 188);

-- Changeset db.changelog-database.xml::initial-database-creation-189::mrego::(Checksum: 3:b338072cafac27857c87f450a2ad6c46)
ALTER TABLE day_assignment ADD CONSTRAINT fkbb493f50510e7a78 FOREIGN KEY (derived_container_id) REFERENCES derived_day_assignments_container(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-189', '2.0-rc7', '3:b338072cafac27857c87f450a2ad6c46', 189);

-- Changeset db.changelog-database.xml::initial-database-creation-190::mrego::(Checksum: 3:9d5bd211cfd49f3b9fc91441f5eb908f)
ALTER TABLE day_assignment ADD CONSTRAINT fkbb493f5019256004 FOREIGN KEY (generic_container_id) REFERENCES generic_day_assignments_container(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-190', '2.0-rc7', '3:9d5bd211cfd49f3b9fc91441f5eb908f', 190);

-- Changeset db.changelog-database.xml::initial-database-creation-191::mrego::(Checksum: 3:bc7668fdd82c710bf043fa2f8a95dbeb)
ALTER TABLE day_assignment ADD CONSTRAINT fkbb493f5048d21790 FOREIGN KEY (resource_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-191', '2.0-rc7', '3:bc7668fdd82c710bf043fa2f8a95dbeb', 191);

-- Changeset db.changelog-database.xml::initial-database-creation-192::mrego::(Checksum: 3:9a377a1c95da43a4a33381c22ed4e951)
ALTER TABLE day_assignment ADD CONSTRAINT fkbb493f50756348a8 FOREIGN KEY (specific_container_id) REFERENCES specific_day_assignments_container(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-192', '2.0-rc7', '3:9a377a1c95da43a4a33381c22ed4e951', 192);

-- Changeset db.changelog-database.xml::initial-database-creation-193::mrego::(Checksum: 3:73a6387f780aa23e047099f18b15b50f)
ALTER TABLE dependency ADD CONSTRAINT fkfe6ed34be838f362 FOREIGN KEY (destination) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-193', '2.0-rc7', '3:73a6387f780aa23e047099f18b15b50f', 193);

-- Changeset db.changelog-database.xml::initial-database-creation-194::mrego::(Checksum: 3:8b99d9b4b1544d9b15595cfcc5e5ec4f)
ALTER TABLE dependency ADD CONSTRAINT fkfe6ed34b1545e7a FOREIGN KEY (origin) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-194', '2.0-rc7', '3:8b99d9b4b1544d9b15595cfcc5e5ec4f', 194);

-- Changeset db.changelog-database.xml::initial-database-creation-195::mrego::(Checksum: 3:c267aaa5cd192977a88171f504e04f29)
ALTER TABLE dependency ADD CONSTRAINT fkfe6ed34b9e788f90 FOREIGN KEY (queue_dependency) REFERENCES limiting_resource_queue_dependency(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-195', '2.0-rc7', '3:c267aaa5cd192977a88171f504e04f29', 195);

-- Changeset db.changelog-database.xml::initial-database-creation-196::mrego::(Checksum: 3:8667c573c47e4d0fbcc32caa84df333a)
ALTER TABLE derived_allocation ADD CONSTRAINT fkf0260c4287b470f0 FOREIGN KEY (configurationunit) REFERENCES machine_workers_configuration_unit(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-196', '2.0-rc7', '3:8667c573c47e4d0fbcc32caa84df333a', 196);

-- Changeset db.changelog-database.xml::initial-database-creation-197::mrego::(Checksum: 3:f11c3d339e18a174df76d41cd195f9de)
ALTER TABLE derived_allocation ADD CONSTRAINT fkf0260c4275ed79ba FOREIGN KEY (resource_allocation_id) REFERENCES resource_allocation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-197', '2.0-rc7', '3:f11c3d339e18a174df76d41cd195f9de', 197);

-- Changeset db.changelog-database.xml::initial-database-creation-198::mrego::(Checksum: 3:05a89763fa1de7b97f16102791cfefed)
ALTER TABLE derived_day_assignments_container ADD CONSTRAINT fkb83176c31b8e7cf2 FOREIGN KEY (derived_allocation_id) REFERENCES derived_allocation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-198', '2.0-rc7', '3:05a89763fa1de7b97f16102791cfefed', 198);

-- Changeset db.changelog-database.xml::initial-database-creation-199::mrego::(Checksum: 3:c14c67e4fab2a4378ba63d3da1fb628a)
ALTER TABLE derived_day_assignments_container ADD CONSTRAINT fkb83176c3421c7cf4 FOREIGN KEY (scenario) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-199', '2.0-rc7', '3:c14c67e4fab2a4378ba63d3da1fb628a', 199);

-- Changeset db.changelog-database.xml::initial-database-creation-200::mrego::(Checksum: 3:382f1905a4228bd3e9f0c040c970cde3)
ALTER TABLE description_values ADD CONSTRAINT fk7d1ee2c5fec79eb0 FOREIGN KEY (description_value_id) REFERENCES work_report(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-200', '2.0-rc7', '3:382f1905a4228bd3e9f0c040c970cde3', 200);

-- Changeset db.changelog-database.xml::initial-database-creation-201::mrego::(Checksum: 3:1bac4b4ae207d8838f091c32cb2df31e)
ALTER TABLE description_values_in_line ADD CONSTRAINT fk1e6bf5475c390c4 FOREIGN KEY (description_value_id) REFERENCES work_report_line(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-201', '2.0-rc7', '3:1bac4b4ae207d8838f091c32cb2df31e', 201);

-- Changeset db.changelog-database.xml::initial-database-creation-202::mrego::(Checksum: 3:40a79714aa74711e54e351fd7ae769a8)
ALTER TABLE direct_advance_assignment ADD CONSTRAINT fk172a16c02f2d3aec FOREIGN KEY (advance_assignment_id) REFERENCES advance_assignment(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-202', '2.0-rc7', '3:40a79714aa74711e54e351fd7ae769a8', 202);

-- Changeset db.changelog-database.xml::initial-database-creation-203::mrego::(Checksum: 3:a1500cdb8370f8da80715f3150d2da41)
ALTER TABLE direct_advance_assignment ADD CONSTRAINT fk172a16c0a1127ce5 FOREIGN KEY (direct_order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-203', '2.0-rc7', '3:a1500cdb8370f8da80715f3150d2da41', 203);

-- Changeset db.changelog-database.xml::initial-database-creation-204::mrego::(Checksum: 3:7ed433c571a7829ad2eb6e5389433468)
ALTER TABLE effort_per_day ADD CONSTRAINT fkc405554bfd5e49bc FOREIGN KEY (base_calendar_id) REFERENCES calendar_data(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-204', '2.0-rc7', '3:7ed433c571a7829ad2eb6e5389433468', 204);

-- Changeset db.changelog-database.xml::initial-database-creation-205::mrego::(Checksum: 3:684a3d66bf7275618fdaf47f577dca5f)
ALTER TABLE external_company ADD CONSTRAINT fkd8e14c09b36a6d51 FOREIGN KEY (company_user) REFERENCES user_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-205', '2.0-rc7', '3:684a3d66bf7275618fdaf47f577dca5f', 205);

-- Changeset db.changelog-database.xml::initial-database-creation-206::mrego::(Checksum: 3:f90e8c7e57222696be65ba1a75afe0e1)
ALTER TABLE generic_day_assignments_container ADD CONSTRAINT fkc01655fdee970b FOREIGN KEY (resource_allocation_id) REFERENCES generic_resource_allocation(resource_allocation_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-206', '2.0-rc7', '3:f90e8c7e57222696be65ba1a75afe0e1', 206);

-- Changeset db.changelog-database.xml::initial-database-creation-207::mrego::(Checksum: 3:d903424e7e44b1c1fb8c9d00bbaa5ff9)
ALTER TABLE generic_day_assignments_container ADD CONSTRAINT fkc01655fd421c7cf4 FOREIGN KEY (scenario) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-207', '2.0-rc7', '3:d903424e7e44b1c1fb8c9d00bbaa5ff9', 207);

-- Changeset db.changelog-database.xml::initial-database-creation-208::mrego::(Checksum: 3:6f03b7841548675d0c674dfc8a58a76a)
ALTER TABLE generic_resource_allocation ADD CONSTRAINT fkf788b34975ed79ba FOREIGN KEY (resource_allocation_id) REFERENCES resource_allocation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-208', '2.0-rc7', '3:6f03b7841548675d0c674dfc8a58a76a', 208);

-- Changeset db.changelog-database.xml::initial-database-creation-209::mrego::(Checksum: 3:69684a0db21bbdbec2ffba0b151a73bd)
ALTER TABLE heading_field ADD CONSTRAINT fk2908787d415884f6 FOREIGN KEY (heading_id) REFERENCES work_report_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-209', '2.0-rc7', '3:69684a0db21bbdbec2ffba0b151a73bd', 209);

-- Changeset db.changelog-database.xml::initial-database-creation-210::mrego::(Checksum: 3:70d4db37a0127109f4e99eede4265e9e)
ALTER TABLE hour_cost ADD CONSTRAINT fk3b9a8148c29ad8eb FOREIGN KEY (cost_category_id) REFERENCES cost_category(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-210', '2.0-rc7', '3:70d4db37a0127109f4e99eede4265e9e', 210);

-- Changeset db.changelog-database.xml::initial-database-creation-211::mrego::(Checksum: 3:0dc5817e042530305a63787cd51c3d44)
ALTER TABLE hour_cost ADD CONSTRAINT fk3b9a8148d5b6184d FOREIGN KEY (type_of_work_hours_id) REFERENCES type_of_work_hours(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-211', '2.0-rc7', '3:0dc5817e042530305a63787cd51c3d44', 211);

-- Changeset db.changelog-database.xml::initial-database-creation-212::mrego::(Checksum: 3:1b87cb4d62001fa3a6cd5df2bfee271f)
ALTER TABLE hours_group ADD CONSTRAINT fkd9b7594f8bdc6ac6 FOREIGN KEY (order_line_template) REFERENCES order_line_template(order_line_template_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-212', '2.0-rc7', '3:1b87cb4d62001fa3a6cd5df2bfee271f', 212);

-- Changeset db.changelog-database.xml::initial-database-creation-213::mrego::(Checksum: 3:43bb14279d4807f3bb02f8c800ac6ec6)
ALTER TABLE hours_group ADD CONSTRAINT fkd9b7594f1ed629ea FOREIGN KEY (parent_order_line) REFERENCES order_line(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-213', '2.0-rc7', '3:43bb14279d4807f3bb02f8c800ac6ec6', 213);

-- Changeset db.changelog-database.xml::initial-database-creation-214::mrego::(Checksum: 3:2250070459940c11e7ff31a4192c9355)
ALTER TABLE indirect_advance_assignment ADD CONSTRAINT fk64cbad3b2f2d3aec FOREIGN KEY (advance_assignment_id) REFERENCES advance_assignment(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-214', '2.0-rc7', '3:2250070459940c11e7ff31a4192c9355', 214);

-- Changeset db.changelog-database.xml::initial-database-creation-215::mrego::(Checksum: 3:1abe6242372fb6a1b8b7d5ed11c40cf6)
ALTER TABLE indirect_advance_assignment ADD CONSTRAINT fk64cbad3b218d7620 FOREIGN KEY (indirect_order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-215', '2.0-rc7', '3:1abe6242372fb6a1b8b7d5ed11c40cf6', 215);

-- Changeset db.changelog-database.xml::initial-database-creation-216::mrego::(Checksum: 3:365ccb2007a7db5a42a8558640d149e9)
ALTER TABLE indirect_advance_assignment ADD CONSTRAINT fk64cbad3b8202350f FOREIGN KEY (indirect_order_element_id) REFERENCES order_line_group(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-216', '2.0-rc7', '3:365ccb2007a7db5a42a8558640d149e9', 216);

-- Changeset db.changelog-database.xml::initial-database-creation-217::mrego::(Checksum: 3:ec8d6d84ea00f6c7ece30c6d1ada877d)
ALTER TABLE label ADD CONSTRAINT fk61f7ef4707cd777 FOREIGN KEY (label_type_id) REFERENCES label_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-217', '2.0-rc7', '3:ec8d6d84ea00f6c7ece30c6d1ada877d', 217);

-- Changeset db.changelog-database.xml::initial-database-creation-218::mrego::(Checksum: 3:00a5c1aff60bf17c4f63c781d3d8868f)
ALTER TABLE limiting_resource_queue ADD CONSTRAINT fk7e57469848d21790 FOREIGN KEY (resource_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-218', '2.0-rc7', '3:00a5c1aff60bf17c4f63c781d3d8868f', 218);

-- Changeset db.changelog-database.xml::initial-database-creation-219::mrego::(Checksum: 3:80d78dda5a5d7a6e5b490c9b28841b16)
ALTER TABLE limiting_resource_queue_dependency ADD CONSTRAINT fk59485352e42f8d29 FOREIGN KEY (destiny_queue_element_id) REFERENCES limiting_resource_queue_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-219', '2.0-rc7', '3:80d78dda5a5d7a6e5b490c9b28841b16', 219);

-- Changeset db.changelog-database.xml::initial-database-creation-220::mrego::(Checksum: 3:3a8fd566182b2a101e0e843990cfa8df)
ALTER TABLE limiting_resource_queue_dependency ADD CONSTRAINT fk5948535228f2695 FOREIGN KEY (origin_queue_element_id) REFERENCES limiting_resource_queue_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-220', '2.0-rc7', '3:3a8fd566182b2a101e0e843990cfa8df', 220);

-- Changeset db.changelog-database.xml::initial-database-creation-221::mrego::(Checksum: 3:229616a00b74e7128b9eeb41293cd91e)
ALTER TABLE limiting_resource_queue_element ADD CONSTRAINT fk1fc5f455bd2209e8 FOREIGN KEY (limiting_resource_queue_id) REFERENCES limiting_resource_queue(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-221', '2.0-rc7', '3:229616a00b74e7128b9eeb41293cd91e', 221);

-- Changeset db.changelog-database.xml::initial-database-creation-222::mrego::(Checksum: 3:ed9f60b9f8d7881c11360f2a020bdf4b)
ALTER TABLE limiting_resource_queue_element ADD CONSTRAINT fk1fc5f45575ed79ba FOREIGN KEY (resource_allocation_id) REFERENCES resource_allocation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-222', '2.0-rc7', '3:ed9f60b9f8d7881c11360f2a020bdf4b', 222);

-- Changeset db.changelog-database.xml::initial-database-creation-223::mrego::(Checksum: 3:fee2321152589ea84c5743175d4c180a)
ALTER TABLE line_field ADD CONSTRAINT fk88eecef415884f6 FOREIGN KEY (heading_id) REFERENCES work_report_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-223', '2.0-rc7', '3:fee2321152589ea84c5743175d4c180a', 223);

-- Changeset db.changelog-database.xml::initial-database-creation-224::mrego::(Checksum: 3:f6ef1f3ee7da7a147539b46f9c1cf60b)
ALTER TABLE machine ADD CONSTRAINT fk31314447937680b7 FOREIGN KEY (machine_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-224', '2.0-rc7', '3:f6ef1f3ee7da7a147539b46f9c1cf60b', 224);

-- Changeset db.changelog-database.xml::initial-database-creation-225::mrego::(Checksum: 3:21557deb9ad7b4c25504862864502b1c)
ALTER TABLE machine_configuration_unit_required_criterions ADD CONSTRAINT fk95548d7861f02c44 FOREIGN KEY (criterion_id) REFERENCES criterion(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-225', '2.0-rc7', '3:21557deb9ad7b4c25504862864502b1c', 225);

-- Changeset db.changelog-database.xml::initial-database-creation-226::mrego::(Checksum: 3:24adfcd3a41ae5648ffc2002dae0e4ef)
ALTER TABLE machine_configuration_unit_required_criterions ADD CONSTRAINT fk95548d7875999a91 FOREIGN KEY (id) REFERENCES machine_workers_configuration_unit(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-226', '2.0-rc7', '3:24adfcd3a41ae5648ffc2002dae0e4ef', 226);

-- Changeset db.changelog-database.xml::initial-database-creation-227::mrego::(Checksum: 3:bdd3cffbe9466ccbf6a1a791d61230fd)
ALTER TABLE machine_worker_assignment ADD CONSTRAINT fka2c1583686b2de7a FOREIGN KEY (configuration_id) REFERENCES machine_workers_configuration_unit(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-227', '2.0-rc7', '3:bdd3cffbe9466ccbf6a1a791d61230fd', 227);

-- Changeset db.changelog-database.xml::initial-database-creation-228::mrego::(Checksum: 3:2182868d8f52e97c110e8901f8e2fc34)
ALTER TABLE machine_worker_assignment ADD CONSTRAINT fka2c158369bebcf10 FOREIGN KEY (worker_id) REFERENCES worker(worker_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-228', '2.0-rc7', '3:2182868d8f52e97c110e8901f8e2fc34', 228);

-- Changeset db.changelog-database.xml::initial-database-creation-229::mrego::(Checksum: 3:43b57b5e0d38ae69053bfcaf10d4ba8d)
ALTER TABLE machine_workers_configuration_unit ADD CONSTRAINT fkd47281efffeb5538 FOREIGN KEY (machine) REFERENCES machine(machine_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-229', '2.0-rc7', '3:43b57b5e0d38ae69053bfcaf10d4ba8d', 229);

-- Changeset db.changelog-database.xml::initial-database-creation-230::mrego::(Checksum: 3:96d1199f9a6a19da0e6bac41293cf0ab)
ALTER TABLE material ADD CONSTRAINT fk11d365279578651e FOREIGN KEY (category_id) REFERENCES material_category(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-230', '2.0-rc7', '3:96d1199f9a6a19da0e6bac41293cf0ab', 230);

-- Changeset db.changelog-database.xml::initial-database-creation-231::mrego::(Checksum: 3:d493ad51ca6712c994efb741c1cd5cee)
ALTER TABLE material ADD CONSTRAINT fk11d36527f11b2d0 FOREIGN KEY (unit_type) REFERENCES unit_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-231', '2.0-rc7', '3:d493ad51ca6712c994efb741c1cd5cee', 231);

-- Changeset db.changelog-database.xml::initial-database-creation-232::mrego::(Checksum: 3:611e912194a15238fe4fd70e46ecd271)
ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425b5c68337 FOREIGN KEY (material_id) REFERENCES material(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-232', '2.0-rc7', '3:611e912194a15238fe4fd70e46ecd271', 232);

-- Changeset db.changelog-database.xml::initial-database-creation-233::mrego::(Checksum: 3:4823fd19347ba5a9c14b862fac025901)
ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-233', '2.0-rc7', '3:4823fd19347ba5a9c14b862fac025901', 233);

-- Changeset db.changelog-database.xml::initial-database-creation-234::mrego::(Checksum: 3:7aa2f827cf3710d979cd5c62770417bb)
ALTER TABLE material_assignment_template ADD CONSTRAINT fk35254354b5c68337 FOREIGN KEY (material_id) REFERENCES material(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-234', '2.0-rc7', '3:7aa2f827cf3710d979cd5c62770417bb', 234);

-- Changeset db.changelog-database.xml::initial-database-creation-235::mrego::(Checksum: 3:1d77a4d184e0f24891d62762883540af)
ALTER TABLE material_assignment_template ADD CONSTRAINT fk3525435419b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-235', '2.0-rc7', '3:1d77a4d184e0f24891d62762883540af', 235);

-- Changeset db.changelog-database.xml::initial-database-creation-236::mrego::(Checksum: 3:354ab31aec28364faae025882682084a)
ALTER TABLE material_category ADD CONSTRAINT fk84c66516b53669f2 FOREIGN KEY (parent_id) REFERENCES material_category(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-236', '2.0-rc7', '3:354ab31aec28364faae025882682084a', 236);

-- Changeset db.changelog-database.xml::initial-database-creation-237::mrego::(Checksum: 3:fb6d4b2090d92c3a4d685cb13176ee98)
ALTER TABLE order_authorization ADD CONSTRAINT fkb92b594887287288 FOREIGN KEY (order_id) REFERENCES order_table(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-237', '2.0-rc7', '3:fb6d4b2090d92c3a4d685cb13176ee98', 237);

-- Changeset db.changelog-database.xml::initial-database-creation-238::mrego::(Checksum: 3:e91f5bf74998ca513288ed138c0da97d)
ALTER TABLE order_authorization ADD CONSTRAINT fkb92b5948edc4db41 FOREIGN KEY (profile_id) REFERENCES profile_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-238', '2.0-rc7', '3:e91f5bf74998ca513288ed138c0da97d', 238);

-- Changeset db.changelog-database.xml::initial-database-creation-239::mrego::(Checksum: 3:f07664fc56241ad077820f8da9bad209)
ALTER TABLE order_authorization ADD CONSTRAINT fkb92b59485567ad13 FOREIGN KEY (user_id) REFERENCES user_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-239', '2.0-rc7', '3:f07664fc56241ad077820f8da9bad209', 239);

-- Changeset db.changelog-database.xml::initial-database-creation-240::mrego::(Checksum: 3:3cf705e46d55107e249d5a69dbfbe650)
ALTER TABLE order_element ADD CONSTRAINT fk92271f0b1e635c19 FOREIGN KEY (parent) REFERENCES order_line_group(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-240', '2.0-rc7', '3:3cf705e46d55107e249d5a69dbfbe650', 240);

-- Changeset db.changelog-database.xml::initial-database-creation-241::mrego::(Checksum: 3:3de02419d8b4096899d78e2cd84d7e0b)
ALTER TABLE order_element ADD CONSTRAINT fk92271f0b7ec17fa6 FOREIGN KEY (sum_charged_hours_id) REFERENCES sum_charged_hours(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-241', '2.0-rc7', '3:3de02419d8b4096899d78e2cd84d7e0b', 241);

-- Changeset db.changelog-database.xml::initial-database-creation-242::mrego::(Checksum: 3:4b074cd6de5562d41ae3506d8d4b35f3)
ALTER TABLE order_element ADD CONSTRAINT fk92271f0bd97bcc8c FOREIGN KEY (template) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-242', '2.0-rc7', '3:4b074cd6de5562d41ae3506d8d4b35f3', 242);

-- Changeset db.changelog-database.xml::initial-database-creation-243::mrego::(Checksum: 3:b577e13ab196e4c075b8be09841abb4a)
ALTER TABLE order_element_label ADD CONSTRAINT fke8344cc0c1c2746e FOREIGN KEY (label_id) REFERENCES label(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-243', '2.0-rc7', '3:b577e13ab196e4c075b8be09841abb4a', 243);

-- Changeset db.changelog-database.xml::initial-database-creation-244::mrego::(Checksum: 3:9ad3d17bbbac8f995a1313d24c37c816)
ALTER TABLE order_element_label ADD CONSTRAINT fke8344cc0efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-244', '2.0-rc7', '3:9ad3d17bbbac8f995a1313d24c37c816', 244);

-- Changeset db.changelog-database.xml::initial-database-creation-245::mrego::(Checksum: 3:6ed5e004af84bf9f2cfe8858fd2a5693)
ALTER TABLE order_element_template ADD CONSTRAINT fk4339b2e41638aab FOREIGN KEY (parent) REFERENCES order_line_group_template(group_template_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-245', '2.0-rc7', '3:6ed5e004af84bf9f2cfe8858fd2a5693', 245);

-- Changeset db.changelog-database.xml::initial-database-creation-246::mrego::(Checksum: 3:72287bc729bb6699bb3bc2210d12dfd4)
ALTER TABLE order_element_template_label ADD CONSTRAINT fk616de2a3c1c2746e FOREIGN KEY (label_id) REFERENCES label(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-246', '2.0-rc7', '3:72287bc729bb6699bb3bc2210d12dfd4', 246);

-- Changeset db.changelog-database.xml::initial-database-creation-247::mrego::(Checksum: 3:cb0dc7b3886d0b94d5052539bd683a16)
ALTER TABLE order_element_template_label ADD CONSTRAINT fk616de2a319b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-247', '2.0-rc7', '3:cb0dc7b3886d0b94d5052539bd683a16', 247);

-- Changeset db.changelog-database.xml::initial-database-creation-248::mrego::(Checksum: 3:359b88a585529cbf0d688ded52661d0d)
ALTER TABLE order_element_template_quality_form ADD CONSTRAINT fkfe6fb57519b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-248', '2.0-rc7', '3:359b88a585529cbf0d688ded52661d0d', 248);

-- Changeset db.changelog-database.xml::initial-database-creation-249::mrego::(Checksum: 3:bc3e3f311891541c94bafaa8250b3837)
ALTER TABLE order_element_template_quality_form ADD CONSTRAINT fkfe6fb5758b37665c FOREIGN KEY (quality_form_id) REFERENCES quality_form(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-249', '2.0-rc7', '3:bc3e3f311891541c94bafaa8250b3837', 249);

-- Changeset db.changelog-database.xml::initial-database-creation-250::mrego::(Checksum: 3:873b0ba69634f01ec622ca9b24d9e70a)
ALTER TABLE order_line ADD CONSTRAINT fk2d124245efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-250', '2.0-rc7', '3:873b0ba69634f01ec622ca9b24d9e70a', 250);

-- Changeset db.changelog-database.xml::initial-database-creation-251::mrego::(Checksum: 3:c137a192ad74895a6049234b596fecb5)
ALTER TABLE order_line_group ADD CONSTRAINT fkdce41405efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-251', '2.0-rc7', '3:c137a192ad74895a6049234b596fecb5', 251);

-- Changeset db.changelog-database.xml::initial-database-creation-252::mrego::(Checksum: 3:793cd0492af23c4c209def47673ca914)
ALTER TABLE order_line_group_template ADD CONSTRAINT fk9c819f74ddc82952 FOREIGN KEY (group_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-252', '2.0-rc7', '3:793cd0492af23c4c209def47673ca914', 252);

-- Changeset db.changelog-database.xml::initial-database-creation-253::mrego::(Checksum: 3:d76b0b4675c504576f872e68c5e9bda7)
ALTER TABLE order_line_template ADD CONSTRAINT fke4c379349fb7fc18 FOREIGN KEY (order_line_template_id) REFERENCES order_element_template(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-253', '2.0-rc7', '3:d76b0b4675c504576f872e68c5e9bda7', 253);

-- Changeset db.changelog-database.xml::initial-database-creation-254::mrego::(Checksum: 3:eee13cf5dc3e864e56c6a9b03079578e)
ALTER TABLE order_table ADD CONSTRAINT fk75a2f39da44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-254', '2.0-rc7', '3:eee13cf5dc3e864e56c6a9b03079578e', 254);

-- Changeset db.changelog-database.xml::initial-database-creation-255::mrego::(Checksum: 3:f9088ee9f92067cab4b207d3aae3a37b)
ALTER TABLE order_table ADD CONSTRAINT fk75a2f39d4ec080cf FOREIGN KEY (customer) REFERENCES external_company(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-255', '2.0-rc7', '3:f9088ee9f92067cab4b207d3aae3a37b', 255);

-- Changeset db.changelog-database.xml::initial-database-creation-256::mrego::(Checksum: 3:e2326617f1c9b860249a0c0777ec20f6)
ALTER TABLE order_table ADD CONSTRAINT fk75a2f39d504f463e FOREIGN KEY (order_element_id) REFERENCES order_line_group(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-256', '2.0-rc7', '3:e2326617f1c9b860249a0c0777ec20f6', 256);

-- Changeset db.changelog-database.xml::initial-database-creation-257::mrego::(Checksum: 3:adf9400fc812eb6c8f7d32aa787742e6)
ALTER TABLE order_template ADD CONSTRAINT fk6476ce4ba44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-257', '2.0-rc7', '3:adf9400fc812eb6c8f7d32aa787742e6', 257);

-- Changeset db.changelog-database.xml::initial-database-creation-258::mrego::(Checksum: 3:60fc7ab467e364cd6a3d72d2f4f1d736)
ALTER TABLE order_template ADD CONSTRAINT fk6476ce4b9a4a7d90 FOREIGN KEY (order_template_id) REFERENCES order_line_group_template(group_template_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-258', '2.0-rc7', '3:60fc7ab467e364cd6a3d72d2f4f1d736', 258);

-- Changeset db.changelog-database.xml::initial-database-creation-259::mrego::(Checksum: 3:a6cacd22103e0447094d9a161d7b7445)
ALTER TABLE order_version ADD CONSTRAINT fka391ce7a2380ca7 FOREIGN KEY (ownerscenario) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-259', '2.0-rc7', '3:a6cacd22103e0447094d9a161d7b7445', 259);

-- Changeset db.changelog-database.xml::initial-database-creation-260::mrego::(Checksum: 3:76bf1eb3a6880473927e7a101d037bd8)
ALTER TABLE planning_data ADD CONSTRAINT fkbb58534c6ccf87c5 FOREIGN KEY (planning_data_id) REFERENCES task_group(task_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-260', '2.0-rc7', '3:76bf1eb3a6880473927e7a101d037bd8', 260);

-- Changeset db.changelog-database.xml::initial-database-creation-261::mrego::(Checksum: 3:5e2d94e8e56a7c57936a8bce78066b96)
ALTER TABLE profile_roles ADD CONSTRAINT fkd557d8a7edc4db41 FOREIGN KEY (profile_id) REFERENCES profile_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-261', '2.0-rc7', '3:5e2d94e8e56a7c57936a8bce78066b96', 261);

-- Changeset db.changelog-database.xml::initial-database-creation-262::mrego::(Checksum: 3:b6e995091bd0a2aed951e2fbf3f215a3)
ALTER TABLE quality_form ADD CONSTRAINT fkf635cc04b216ed4c FOREIGN KEY (advance_type_id) REFERENCES advance_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-262', '2.0-rc7', '3:b6e995091bd0a2aed951e2fbf3f215a3', 262);

-- Changeset db.changelog-database.xml::initial-database-creation-263::mrego::(Checksum: 3:5a57fa35a8c7ca09756afcad21d8e86f)
ALTER TABLE quality_form_items ADD CONSTRAINT fkad6003c58b37665c FOREIGN KEY (quality_form_id) REFERENCES quality_form(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-263', '2.0-rc7', '3:5a57fa35a8c7ca09756afcad21d8e86f', 263);

-- Changeset db.changelog-database.xml::initial-database-creation-264::mrego::(Checksum: 3:a7fc2f018277eaaa7649fb46b6b27ab6)
ALTER TABLE resource ADD CONSTRAINT fkebabc40edc874c20 FOREIGN KEY (base_calendar_id) REFERENCES resource_calendar(base_calendar_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-264', '2.0-rc7', '3:a7fc2f018277eaaa7649fb46b6b27ab6', 264);

-- Changeset db.changelog-database.xml::initial-database-creation-265::mrego::(Checksum: 3:528d191ec33204cee277f7312c49cc2c)
ALTER TABLE resource_allocation ADD CONSTRAINT fke8a96db115671e92 FOREIGN KEY (assignment_function) REFERENCES assignment_function(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-265', '2.0-rc7', '3:528d191ec33204cee277f7312c49cc2c', 265);

-- Changeset db.changelog-database.xml::initial-database-creation-266::mrego::(Checksum: 3:deb083face872d4d49b666a9b8bdfaba)
ALTER TABLE resource_allocation ADD CONSTRAINT fke8a96db1ff61540d FOREIGN KEY (task) REFERENCES task(task_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-266', '2.0-rc7', '3:deb083face872d4d49b666a9b8bdfaba', 266);

-- Changeset db.changelog-database.xml::initial-database-creation-267::mrego::(Checksum: 3:a7b87e7b2788c237ebeef3591092532e)
ALTER TABLE resource_calendar ADD CONSTRAINT fk9619184fa44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-267', '2.0-rc7', '3:a7b87e7b2788c237ebeef3591092532e', 267);

-- Changeset db.changelog-database.xml::initial-database-creation-268::mrego::(Checksum: 3:8e9f116ff4830eb847589e5b4e62852e)
ALTER TABLE resources_cost_category_assignment ADD CONSTRAINT fk27c2a216c29ad8eb FOREIGN KEY (cost_category_id) REFERENCES cost_category(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-268', '2.0-rc7', '3:8e9f116ff4830eb847589e5b4e62852e', 268);

-- Changeset db.changelog-database.xml::initial-database-creation-269::mrego::(Checksum: 3:595c174489187fc62b19670995c5cbff)
ALTER TABLE resources_cost_category_assignment ADD CONSTRAINT fk27c2a21648d21790 FOREIGN KEY (resource_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-269', '2.0-rc7', '3:595c174489187fc62b19670995c5cbff', 269);

-- Changeset db.changelog-database.xml::initial-database-creation-270::mrego::(Checksum: 3:d7a769415b86b93205327adc4b037e45)
ALTER TABLE roles_table ADD CONSTRAINT fk2e7e6bcc5567ad13 FOREIGN KEY (user_id) REFERENCES user_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-270', '2.0-rc7', '3:d7a769415b86b93205327adc4b037e45', 270);

-- Changeset db.changelog-database.xml::initial-database-creation-271::mrego::(Checksum: 3:06906c810ec8b347c75867ab21f7dc4c)
ALTER TABLE scenario ADD CONSTRAINT fkd1c57390fd99606d FOREIGN KEY (predecessor) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-271', '2.0-rc7', '3:06906c810ec8b347c75867ab21f7dc4c', 271);

-- Changeset db.changelog-database.xml::initial-database-creation-272::mrego::(Checksum: 3:a28d48ed75ff265b6472e9749f95d1a5)
ALTER TABLE scenario_orders ADD CONSTRAINT fk91bbca7487287288 FOREIGN KEY (order_id) REFERENCES order_table(order_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-272', '2.0-rc7', '3:a28d48ed75ff265b6472e9749f95d1a5', 272);

-- Changeset db.changelog-database.xml::initial-database-creation-273::mrego::(Checksum: 3:5990b5955a764200dd54eb4dd3b0a7cf)
ALTER TABLE scenario_orders ADD CONSTRAINT fk91bbca7423b85cf1 FOREIGN KEY (order_version_id) REFERENCES order_version(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-273', '2.0-rc7', '3:5990b5955a764200dd54eb4dd3b0a7cf', 273);

-- Changeset db.changelog-database.xml::initial-database-creation-274::mrego::(Checksum: 3:5d4cc1738a27175979f1c973b1bd5ea9)
ALTER TABLE scenario_orders ADD CONSTRAINT fk91bbca74c0fb9d8e FOREIGN KEY (scenario_id) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-274', '2.0-rc7', '3:5d4cc1738a27175979f1c973b1bd5ea9', 274);

-- Changeset db.changelog-database.xml::initial-database-creation-275::mrego::(Checksum: 3:d9130cc23b8afa27fd84f7c72d818efd)
ALTER TABLE scheduling_data_for_version ADD CONSTRAINT fk672eed98efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-275', '2.0-rc7', '3:d9130cc23b8afa27fd84f7c72d818efd', 275);

-- Changeset db.changelog-database.xml::initial-database-creation-276::mrego::(Checksum: 3:18feaa2b4b9cbce46ea7b7a0c710de9f)
ALTER TABLE scheduling_states_by_order_version ADD CONSTRAINT fk84f61df1efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-276', '2.0-rc7', '3:18feaa2b4b9cbce46ea7b7a0c710de9f', 276);

-- Changeset db.changelog-database.xml::initial-database-creation-277::mrego::(Checksum: 3:506fb6a53c157ce68105f451ad5958ff)
ALTER TABLE scheduling_states_by_order_version ADD CONSTRAINT fk84f61df123b85cf1 FOREIGN KEY (order_version_id) REFERENCES order_version(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-277', '2.0-rc7', '3:506fb6a53c157ce68105f451ad5958ff', 277);

-- Changeset db.changelog-database.xml::initial-database-creation-278::mrego::(Checksum: 3:b02c658ae947d20ac0ee1d207ebd210e)
ALTER TABLE scheduling_states_by_order_version ADD CONSTRAINT fk84f61df19bfe55d0 FOREIGN KEY (scheduling_state_for_version_id) REFERENCES scheduling_data_for_version(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-278', '2.0-rc7', '3:b02c658ae947d20ac0ee1d207ebd210e', 278);

-- Changeset db.changelog-database.xml::initial-database-creation-279::mrego::(Checksum: 3:c346d8903750d250fabc343064880e6f)
ALTER TABLE sigmoid_function ADD CONSTRAINT fkc9c3fe691a5e11f8 FOREIGN KEY (assignment_function_id) REFERENCES assignment_function(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-279', '2.0-rc7', '3:c346d8903750d250fabc343064880e6f', 279);

-- Changeset db.changelog-database.xml::initial-database-creation-280::mrego::(Checksum: 3:37fcf9ad58b891a096b9c95f4ea57b58)
ALTER TABLE specific_day_assignments_container ADD CONSTRAINT fkcee469987518838c FOREIGN KEY (resource_allocation_id) REFERENCES specific_resource_allocation(resource_allocation_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-280', '2.0-rc7', '3:37fcf9ad58b891a096b9c95f4ea57b58', 280);

-- Changeset db.changelog-database.xml::initial-database-creation-281::mrego::(Checksum: 3:611486b58c51ad97deab489a17b23e2e)
ALTER TABLE specific_day_assignments_container ADD CONSTRAINT fkcee46998421c7cf4 FOREIGN KEY (scenario) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-281', '2.0-rc7', '3:611486b58c51ad97deab489a17b23e2e', 281);

-- Changeset db.changelog-database.xml::initial-database-creation-282::mrego::(Checksum: 3:0efe8669ed086af6da655a53d4ced916)
ALTER TABLE specific_resource_allocation ADD CONSTRAINT fkf0e85724eae850b2 FOREIGN KEY (resource) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-282', '2.0-rc7', '3:0efe8669ed086af6da655a53d4ced916', 282);

-- Changeset db.changelog-database.xml::initial-database-creation-283::mrego::(Checksum: 3:730ece3259ea1ee3ffa53563790465d8)
ALTER TABLE specific_resource_allocation ADD CONSTRAINT fkf0e8572475ed79ba FOREIGN KEY (resource_allocation_id) REFERENCES resource_allocation(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-283', '2.0-rc7', '3:730ece3259ea1ee3ffa53563790465d8', 283);

-- Changeset db.changelog-database.xml::initial-database-creation-284::mrego::(Checksum: 3:5eb111d4b478c0c9a66a3a4a112c1c6b)
ALTER TABLE stretches ADD CONSTRAINT fkee374673ae0677b8 FOREIGN KEY (assignment_function_id) REFERENCES stretches_function(assignment_function_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-284', '2.0-rc7', '3:5eb111d4b478c0c9a66a3a4a112c1c6b', 284);

-- Changeset db.changelog-database.xml::initial-database-creation-285::mrego::(Checksum: 3:b7d27d03ee27cc13c76c5262d518b876)
ALTER TABLE stretches_function ADD CONSTRAINT fk4949f0241a5e11f8 FOREIGN KEY (assignment_function_id) REFERENCES assignment_function(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-285', '2.0-rc7', '3:b7d27d03ee27cc13c76c5262d518b876', 285);

-- Changeset db.changelog-database.xml::initial-database-creation-286::mrego::(Checksum: 3:3663d9ecd66964bffcc07bcfce7bdcdc)
ALTER TABLE subcontracted_task_data ADD CONSTRAINT fk35bc4ed63804cfa FOREIGN KEY (external_company) REFERENCES external_company(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-286', '2.0-rc7', '3:3663d9ecd66964bffcc07bcfce7bdcdc', 286);

-- Changeset db.changelog-database.xml::initial-database-creation-287::mrego::(Checksum: 3:35e0a6356d11ed9dfe53c300b9e2ffee)
ALTER TABLE task ADD CONSTRAINT fk3635855b595a0 FOREIGN KEY (subcontracted_task_data_id) REFERENCES subcontracted_task_data(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-287', '2.0-rc7', '3:35e0a6356d11ed9dfe53c300b9e2ffee', 287);

-- Changeset db.changelog-database.xml::initial-database-creation-288::mrego::(Checksum: 3:4ae0336d6b9d807036d03ad041b67052)
ALTER TABLE task ADD CONSTRAINT fk3635854936bb8c FOREIGN KEY (task_element_id) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-288', '2.0-rc7', '3:4ae0336d6b9d807036d03ad041b67052', 288);

-- Changeset db.changelog-database.xml::initial-database-creation-289::mrego::(Checksum: 3:2da61d1b760209a704e29bfa4a22455e)
ALTER TABLE task_element ADD CONSTRAINT fkc631a642a44abee3 FOREIGN KEY (base_calendar_id) REFERENCES base_calendar(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-289', '2.0-rc7', '3:2da61d1b760209a704e29bfa4a22455e', 289);

-- Changeset db.changelog-database.xml::initial-database-creation-290::mrego::(Checksum: 3:2604fb5ddeccc31b1dccd4cd0bad4342)
ALTER TABLE task_element ADD CONSTRAINT fkc631a642a5f3c581 FOREIGN KEY (parent) REFERENCES task_group(task_element_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-290', '2.0-rc7', '3:2604fb5ddeccc31b1dccd4cd0bad4342', 290);

-- Changeset db.changelog-database.xml::initial-database-creation-291::mrego::(Checksum: 3:da9d240fdde86539e1580b84687e0189)
ALTER TABLE task_group ADD CONSTRAINT fk4d9497454936bb8c FOREIGN KEY (task_element_id) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-291', '2.0-rc7', '3:da9d240fdde86539e1580b84687e0189', 291);

-- Changeset db.changelog-database.xml::initial-database-creation-292::mrego::(Checksum: 3:0dc9aa5380e9a48fe9aaf306235988a4)
ALTER TABLE task_milestone ADD CONSTRAINT fkd04de7364936bb8c FOREIGN KEY (task_element_id) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-292', '2.0-rc7', '3:0dc9aa5380e9a48fe9aaf306235988a4', 292);

-- Changeset db.changelog-database.xml::initial-database-creation-293::mrego::(Checksum: 3:58c6315352f7cefbddeb9b3a38d1e140)
ALTER TABLE task_quality_form ADD CONSTRAINT fk4356e07eefda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-293', '2.0-rc7', '3:58c6315352f7cefbddeb9b3a38d1e140', 293);

-- Changeset db.changelog-database.xml::initial-database-creation-294::mrego::(Checksum: 3:91398a7f542f90a13d1f857ca3937de1)
ALTER TABLE task_quality_form ADD CONSTRAINT fk4356e07e8b37665c FOREIGN KEY (quality_form_id) REFERENCES quality_form(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-294', '2.0-rc7', '3:91398a7f542f90a13d1f857ca3937de1', 294);

-- Changeset db.changelog-database.xml::initial-database-creation-295::mrego::(Checksum: 3:5395eb857489412499e37c691ea36b8f)
ALTER TABLE task_quality_form_items ADD CONSTRAINT fk101a54bf87fa6b5d FOREIGN KEY (task_quality_form_id) REFERENCES task_quality_form(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-295', '2.0-rc7', '3:5395eb857489412499e37c691ea36b8f', 295);

-- Changeset db.changelog-database.xml::initial-database-creation-296::mrego::(Checksum: 3:494a1128a80caad8d24c5f3574ef6edd)
ALTER TABLE task_source ADD CONSTRAINT fk7950e0153d72bc6f FOREIGN KEY (id) REFERENCES task_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-296', '2.0-rc7', '3:494a1128a80caad8d24c5f3574ef6edd', 296);

-- Changeset db.changelog-database.xml::initial-database-creation-297::mrego::(Checksum: 3:fa3b4dd73dd82e3a26c6563c9828fba3)
ALTER TABLE task_source ADD CONSTRAINT fk7950e0159a2c0abd FOREIGN KEY (schedulingdata) REFERENCES scheduling_data_for_version(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-297', '2.0-rc7', '3:fa3b4dd73dd82e3a26c6563c9828fba3', 297);

-- Changeset db.changelog-database.xml::initial-database-creation-298::mrego::(Checksum: 3:e83453938c668f856d1df1537ec25d37)
ALTER TABLE task_source_hours_groups ADD CONSTRAINT fka01fe4eee036cfed FOREIGN KEY (hours_group_id) REFERENCES hours_group(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-298', '2.0-rc7', '3:e83453938c668f856d1df1537ec25d37', 298);

-- Changeset db.changelog-database.xml::initial-database-creation-299::mrego::(Checksum: 3:c5655c084990797f73bf295660881932)
ALTER TABLE task_source_hours_groups ADD CONSTRAINT fka01fe4ee8c80ccb7 FOREIGN KEY (task_source_id) REFERENCES task_source(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-299', '2.0-rc7', '3:c5655c084990797f73bf295660881932', 299);

-- Changeset db.changelog-database.xml::initial-database-creation-300::mrego::(Checksum: 3:4747b6b28b49b810444aa6af7c133fab)
ALTER TABLE user_profiles ADD CONSTRAINT fkc74605deedc4db41 FOREIGN KEY (profile_id) REFERENCES profile_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-300', '2.0-rc7', '3:4747b6b28b49b810444aa6af7c133fab', 300);

-- Changeset db.changelog-database.xml::initial-database-creation-301::mrego::(Checksum: 3:f73d714400c8712c0715e2da673e9509)
ALTER TABLE user_profiles ADD CONSTRAINT fkc74605de5567ad13 FOREIGN KEY (user_id) REFERENCES user_table(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-301', '2.0-rc7', '3:f73d714400c8712c0715e2da673e9509', 301);

-- Changeset db.changelog-database.xml::initial-database-creation-302::mrego::(Checksum: 3:4d50b8c05ded66b150571543bcd91a37)
ALTER TABLE user_table ADD CONSTRAINT fk7358465a4cd98327 FOREIGN KEY (lastconnectedscenario) REFERENCES scenario(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-302', '2.0-rc7', '3:4d50b8c05ded66b150571543bcd91a37', 302);

-- Changeset db.changelog-database.xml::initial-database-creation-303::mrego::(Checksum: 3:7a5e18b1ed8e9813ca4920bd0856ecd0)
ALTER TABLE virtual_worker ADD CONSTRAINT fkee053f32f2ed6dc FOREIGN KEY (virtual_worker_id) REFERENCES worker(worker_id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-303', '2.0-rc7', '3:7a5e18b1ed8e9813ca4920bd0856ecd0', 303);

-- Changeset db.changelog-database.xml::initial-database-creation-304::mrego::(Checksum: 3:e52f19afd5f5966cff359311b4c3acac)
ALTER TABLE work_report ADD CONSTRAINT fkfd7aa622efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-304', '2.0-rc7', '3:e52f19afd5f5966cff359311b4c3acac', 304);

-- Changeset db.changelog-database.xml::initial-database-creation-305::mrego::(Checksum: 3:8548d763866edc7944ec1b0facb1560f)
ALTER TABLE work_report ADD CONSTRAINT fkfd7aa62278e4e2ea FOREIGN KEY (ork_report_type_id) REFERENCES work_report_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-305', '2.0-rc7', '3:8548d763866edc7944ec1b0facb1560f', 305);

-- Changeset db.changelog-database.xml::initial-database-creation-306::mrego::(Checksum: 3:fc14a87fde20c7151888cea5c48c6f39)
ALTER TABLE work_report ADD CONSTRAINT fkfd7aa62248d21790 FOREIGN KEY (resource_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-306', '2.0-rc7', '3:fc14a87fde20c7151888cea5c48c6f39', 306);

-- Changeset db.changelog-database.xml::initial-database-creation-307::mrego::(Checksum: 3:23a513bb939d6d2751a1550188c32222)
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920c1c2746e FOREIGN KEY (label_id) REFERENCES label(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-307', '2.0-rc7', '3:23a513bb939d6d2751a1550188c32222', 307);

-- Changeset db.changelog-database.xml::initial-database-creation-308::mrego::(Checksum: 3:4144c0d934e5fd823f19ef91da210ffa)
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920707cd777 FOREIGN KEY (label_type_id) REFERENCES label_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-308', '2.0-rc7', '3:4144c0d934e5fd823f19ef91da210ffa', 308);

-- Changeset db.changelog-database.xml::initial-database-creation-309::mrego::(Checksum: 3:c0d764328d333e644989448a4cd480bb)
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920131853a1 FOREIGN KEY (work_report_type_id) REFERENCES work_report_type(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-309', '2.0-rc7', '3:c0d764328d333e644989448a4cd480bb', 309);

-- Changeset db.changelog-database.xml::initial-database-creation-310::mrego::(Checksum: 3:461ea2548e20f99478f3203dbf33bc16)
ALTER TABLE work_report_line ADD CONSTRAINT fke2af47f1efda874f FOREIGN KEY (order_element_id) REFERENCES order_element(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-310', '2.0-rc7', '3:461ea2548e20f99478f3203dbf33bc16', 310);

-- Changeset db.changelog-database.xml::initial-database-creation-311::mrego::(Checksum: 3:3eeefe2f703d57218dde9b05fcdbc5cf)
ALTER TABLE work_report_line ADD CONSTRAINT fke2af47f148d21790 FOREIGN KEY (resource_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-311', '2.0-rc7', '3:3eeefe2f703d57218dde9b05fcdbc5cf', 311);

-- Changeset db.changelog-database.xml::initial-database-creation-312::mrego::(Checksum: 3:564cd8aac65a0319c9c3c75a486ace41)
ALTER TABLE work_report_line ADD CONSTRAINT fke2af47f1e7e1020b FOREIGN KEY (type_work_hours_id) REFERENCES type_of_work_hours(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-312', '2.0-rc7', '3:564cd8aac65a0319c9c3c75a486ace41', 312);

-- Changeset db.changelog-database.xml::initial-database-creation-313::mrego::(Checksum: 3:48d80e1c9868d51d687680b42fe47f3d)
ALTER TABLE work_report_line ADD CONSTRAINT fke2af47f1f1a3177c FOREIGN KEY (work_report_id) REFERENCES work_report(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-313', '2.0-rc7', '3:48d80e1c9868d51d687680b42fe47f3d', 313);

-- Changeset db.changelog-database.xml::initial-database-creation-314::mrego::(Checksum: 3:6c6213c38e211d11aa77f0766a18e1fe)
ALTER TABLE worker ADD CONSTRAINT fkd162537e40901220 FOREIGN KEY (worker_id) REFERENCES resource(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-314', '2.0-rc7', '3:6c6213c38e211d11aa77f0766a18e1fe', 314);

-- Changeset db.changelog-database.xml::initial-database-creation-315::mrego::(Checksum: 3:f522ccbad33e6a463b265e241c4ae0db)
ALTER TABLE workreports_labels ADD CONSTRAINT fkf796fbd0c1c2746e FOREIGN KEY (label_id) REFERENCES label(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-315', '2.0-rc7', '3:f522ccbad33e6a463b265e241c4ae0db', 315);

-- Changeset db.changelog-database.xml::initial-database-creation-316::mrego::(Checksum: 3:e5777dd44529b270c7514bc322d72105)
ALTER TABLE workreports_labels ADD CONSTRAINT fkf796fbd0f1a3177c FOREIGN KEY (work_report_id) REFERENCES work_report(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-316', '2.0-rc7', '3:e5777dd44529b270c7514bc322d72105', 316);

-- Changeset db.changelog-database.xml::initial-database-creation-317::mrego::(Checksum: 3:5a1c1fb8b9f6cce7fbaa03b255b5a033)
ALTER TABLE workreportslines_labels ADD CONSTRAINT fkcb8fc1cdc1c2746e FOREIGN KEY (label_id) REFERENCES label(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-317', '2.0-rc7', '3:5a1c1fb8b9f6cce7fbaa03b255b5a033', 317);

-- Changeset db.changelog-database.xml::initial-database-creation-318::mrego::(Checksum: 3:ad070f00871b05e431528e34c3f09cde)
ALTER TABLE workreportslines_labels ADD CONSTRAINT fkcb8fc1cd5078e161 FOREIGN KEY (work_report_line_id) REFERENCES work_report_line(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-318', '2.0-rc7', '3:ad070f00871b05e431528e34c3f09cde', 318);

-- Changeset db.changelog-database.xml::initial-database-creation-319::mrego::(Checksum: 3:1dde4f2407d314306ae29ad174d98de3)
CREATE TABLE hibernate_unique_key (next_hi INT);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-319', '2.0-rc7', '3:1dde4f2407d314306ae29ad174d98de3', 319);

-- Changeset db.changelog-database.xml::initial-database-creation-320::mrego::(Checksum: 3:5a5608b194d0ec72e2b8f53675ff8de0)
INSERT INTO hibernate_unique_key (next_hi) VALUES (1);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Insert Row', 'EXECUTED', 'db.changelog-database.xml', 'initial-database-creation-320', '2.0-rc7', '3:5a5608b194d0ec72e2b8f53675ff8de0', 320);

-- Changeset db.changelog-initial.xml::resize-precision-in-planning_data::dpino::(Checksum: 3:3ee94e7e64b7ed2592dfb71db6923a1c)
-- Resize precision for 'progress_by_duration' and 'progress_by_num_hours' fields
ALTER TABLE planning_data ALTER COLUMN progress_by_duration TYPE numeric(19,6);

ALTER TABLE planning_data ALTER COLUMN progress_by_num_hours TYPE numeric(19,6);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('dpino', 'Resize precision for ''progress_by_duration'' and ''progress_by_num_hours'' fields', NOW(), 'Modify data type (x2)', 'EXECUTED', 'db.changelog-initial.xml', 'resize-precision-in-planning_data', '2.0-rc7', '3:3ee94e7e64b7ed2592dfb71db6923a1c', 321);

-- Changeset db.changelog-initial.xml::add-company-logo-url-configuration-setting::ltilve::(Checksum: 3:009cd5341d49b5415bf7ec539de24c79)
-- Add new column with configuration setting
ALTER TABLE configuration ADD company_logo_url VARCHAR(255);

UPDATE configuration SET company_logo_url = NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add new column with configuration setting', NOW(), 'Add Column, Update Data', 'EXECUTED', 'db.changelog-initial.xml', 'add-company-logo-url-configuration-setting', '2.0-rc7', '3:009cd5341d49b5415bf7ec539de24c79', 322);

-- Changeset db.changelog-initial.xml::add scheduling mode::ogonzalez::(Checksum: 3:8a4ed0c0131906744a85a38278180e13)
-- column for org.libreplan.business.orders.entities.Order.schedulingMode
ALTER TABLE order_table ADD scheduling_mode INT;

UPDATE order_table SET scheduling_mode = '0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'column for org.libreplan.business.orders.entities.Order.schedulingMode', NOW(), 'Add Column, Update Data', 'EXECUTED', 'db.changelog-initial.xml', 'add scheduling mode', '2.0-rc7', '3:8a4ed0c0131906744a85a38278180e13', 323);

-- Changeset db.changelog-initial.xml::rename start_constraint_type in task and task milestone::ogonzalez::(Checksum: 3:0ba5792ffc0bff2a1ce571047b008796)
-- Caused by renaming org.libreplan.business.planner.entities.TaskPositionConstraint.startConstraintType
ALTER TABLE task RENAME COLUMN start_constraint_type TO constraint_type;

ALTER TABLE task_milestone RENAME COLUMN start_constraint_type TO constraint_type;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'Caused by renaming org.libreplan.business.planner.entities.TaskPositionConstraint.startConstraintType', NOW(), 'Rename Column (x2)', 'EXECUTED', 'db.changelog-initial.xml', 'rename start_constraint_type in task and task milestone', '2.0-rc7', '3:0ba5792ffc0bff2a1ce571047b008796', 324);

-- Changeset db.changelog-initial.xml::add-scenarios-enabled-configuration-setting::ltilve::(Checksum: 3:53d99bb420a0c55c8eaa9389e3fc0ed5)
-- Add new column with scenarios visibility flag
ALTER TABLE configuration ADD scenarios_visible BOOLEAN;

UPDATE configuration SET scenarios_visible = FALSE;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add new column with scenarios visibility flag', NOW(), 'Add Column, Update Data', 'EXECUTED', 'db.changelog-initial.xml', 'add-scenarios-enabled-configuration-setting', '2.0-rc7', '3:53d99bb420a0c55c8eaa9389e3fc0ed5', 325);


-- *********************************************************************
-- Update Database Script - LibrePlan 1.0.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog-initial.xml
-- Ran at: 1/7/11 3:49 PM
-- Against: naval@jdbc:postgresql://localhost/navaldev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-initial.xml::change-types-start-finish-date-criterion-satisfaction::ogonzalez::(Checksum: 3:93527c263e394c3960738fc2e9734c4c)
-- Change types of start and finish date to date for criterion satisfaction table
ALTER TABLE criterion_satisfaction ALTER COLUMN start_date TYPE DATE;

ALTER TABLE criterion_satisfaction ALTER COLUMN finish_date TYPE DATE;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'Change types of start and finish date to date for criterion satisfaction table', NOW(), 'Modify data type (x2)', 'EXECUTED', 'db.changelog-initial.xml', 'change-types-start-finish-date-criterion-satisfaction', '2.0-rc7', '3:93527c263e394c3960738fc2e9734c4c', 326);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.1.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 5/11/11 1:11 PM
-- Against: naval@jdbc:postgresql://localhost/navaldev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-initial.xml::remove-stretches-with-amountWorkPercentage-equal-100::dpino::(Checksum: 3:a0f7f55dd790eefb369fbf139642a868)
-- Removes all stretches which amountWorkPercentage value is 100 as now these stretches will be created automatically and never stored into DB
DELETE FROM stretches WHERE amount_work_percentage = 1.00;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('dpino', 'Removes all stretches which amountWorkPercentage value is 100 as now these stretches will be created automatically and never stored into DB', NOW(), 'Custom SQL', 'EXECUTED', 'db.changelog-initial.xml', 'remove-stretches-with-amountWorkPercentage-equal-100', '2.0-rc7', '3:a0f7f55dd790eefb369fbf139642a868', 327);

-- Changeset db.changelog-1.0.xml::use-capacity-instead-of-effort_duration-and-not_over_assignable::ogonzalez::(Checksum: 3:71ae3b8d8998329d68e95d8ad2135745)
-- Convert from duration + notAssignable (not over assignable) to capacity property
ALTER TABLE calendar_exception_type ADD allowed_extra_effort INT DEFAULT null;

ALTER TABLE calendar_exception_type RENAME COLUMN duration TO standard_effort;

UPDATE calendar_exception_type SET allowed_extra_effort = 0 WHERE not_assignable;

ALTER TABLE calendar_exception_type DROP COLUMN not_assignable;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'Convert from duration + notAssignable (not over assignable) to capacity property', NOW(), 'Add Column, Rename Column, Update Data, Drop Column', 'EXECUTED', 'db.changelog-1.0.xml', 'use-capacity-instead-of-effort_duration-and-not_over_assignable', '2.0-rc7', '3:71ae3b8d8998329d68e95d8ad2135745', 328);

-- Changeset db.changelog-1.0.xml::use-capacity-for-exceptions::ogonzalez::(Checksum: 3:83576dfaa5871f36aa3f7d4119814f8f)
-- Convert from duration to capacity property for calendar exceptions
ALTER TABLE calendar_exception ADD allowed_extra_effort INT DEFAULT null;

ALTER TABLE calendar_exception RENAME COLUMN duration TO standard_effort;

update calendar_exception SET allowed_extra_effort =
            (select allowed_extra_effort from calendar_exception_type
                where calendar_exception_type.id = calendar_exception.calendar_exception_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'Convert from duration to capacity property for calendar exceptions', NOW(), 'Add Column, Rename Column, Custom SQL', 'EXECUTED', 'db.changelog-1.0.xml', 'use-capacity-for-exceptions', '2.0-rc7', '3:83576dfaa5871f36aa3f7d4119814f8f', 329);

-- Changeset db.changelog-1.0.xml::use-capacity-for-capacity-per-day-for-calendar-data::ogonzalez::(Checksum: 3:a643cf37da0098f0cad242d306bb5d05)
-- Convert from duration to capacity in effort per day for CalendarData
ALTER TABLE effort_per_day RENAME TO capacity_per_day;

ALTER TABLE capacity_per_day ADD allowed_extra_effort INT DEFAULT null;

ALTER TABLE capacity_per_day RENAME COLUMN effort TO standard_effort;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'Convert from duration to capacity in effort per day for CalendarData', NOW(), 'Rename Table, Add Column, Rename Column', 'EXECUTED', 'db.changelog-1.0.xml', 'use-capacity-for-capacity-per-day-for-calendar-data', '2.0-rc7', '3:a643cf37da0098f0cad242d306bb5d05', 330);

-- Changeset db.changelog-1.0.xml::by_default_weekends_are_not_overassignable::ogonzalez::(Checksum: 3:8ddf0ca2b0fc243475ee2f4c21172565)
-- By default weekends are not over assignable
update capacity_per_day SET allowed_extra_effort = 0
        where day_id IN (5, 6) AND allowed_extra_effort IS NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'By default weekends are not over assignable', NOW(), 'Custom SQL', 'EXECUTED', 'db.changelog-1.0.xml', 'by_default_weekends_are_not_overassignable', '2.0-rc7', '3:8ddf0ca2b0fc243475ee2f4c21172565', 331);

-- Changeset db.changelog-1.0.xml::replace-column-limited_resource-with-resource_type::jaragunde::(Checksum: 3:b6640208fbf11943fa46d8953516bad7)
-- Replace column limited_resource with resource_type in resource table
ALTER TABLE resource ADD resource_type VARCHAR(64);

UPDATE resource SET resource_type = 'NON_LIMITING_RESOURCE' WHERE limited_resource = false;

UPDATE resource SET resource_type = 'LIMITING_RESOURCE' WHERE limited_resource = true;

ALTER TABLE resource ALTER COLUMN  resource_type SET NOT NULL;

ALTER TABLE resource DROP COLUMN limited_resource;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('jaragunde', 'Replace column limited_resource with resource_type in resource table', NOW(), 'Add Column, Update Data (x2), Add Not-Null Constraint, Drop Column', 'EXECUTED', 'db.changelog-1.0.xml', 'replace-column-limited_resource-with-resource_type', '2.0-rc7', '3:b6640208fbf11943fa46d8953516bad7', 332);

-- Changeset db.changelog-1.0.xml::add-new-column-changed_default_admin_password::smontes::(Checksum: 3:f1a662e7435430892ac7d6cf903c4ce8)
-- Add new column changed_default_admin_password with default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_admin_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_admin_password SET DEFAULT 'FALSE';

UPDATE configuration SET changed_default_admin_password = 'FALSE' WHERE changed_default_admin_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_admin_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column changed_default_admin_password with default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.0.xml', 'add-new-column-changed_default_admin_password', '2.0-rc7', '3:f1a662e7435430892ac7d6cf903c4ce8', 333);

-- Changeset db.changelog-1.0.xml::add-new-column-changed_default_user_password::smontes::(Checksum: 3:cf1274e98ff8796a0f4e3527004c8cd0)
-- Add new column changed_default_user_password with default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_user_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_user_password SET DEFAULT 'FALSE';

UPDATE configuration SET changed_default_user_password = 'FALSE' WHERE changed_default_user_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_user_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column changed_default_user_password with default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.0.xml', 'add-new-column-changed_default_user_password', '2.0-rc7', '3:cf1274e98ff8796a0f4e3527004c8cd0', 334);

-- Changeset db.changelog-1.0.xml::add-new-column-changed_default_wsreader_password::smontes::(Checksum: 3:90bb4041ae144714e7bc703ee73d70c1)
-- Add new column changed_default_wsreader_password with default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_wsreader_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_wsreader_password SET DEFAULT 'FALSE';

UPDATE configuration SET changed_default_wsreader_password = 'FALSE' WHERE changed_default_wsreader_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_wsreader_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column changed_default_wsreader_password with default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.0.xml', 'add-new-column-changed_default_wsreader_password', '2.0-rc7', '3:90bb4041ae144714e7bc703ee73d70c1', 335);

-- Changeset db.changelog-1.0.xml::add-new-column-changed_default_wswriter_password::smontes::(Checksum: 3:124f7fbb425a88220c72c315639a546e)
-- Add new column changed_default_wswriter_password with default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_wswriter_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_wswriter_password SET DEFAULT 'FALSE';

UPDATE configuration SET changed_default_wswriter_password = 'FALSE' WHERE changed_default_wswriter_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_wswriter_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column changed_default_wswriter_password with default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.0.xml', 'add-new-column-changed_default_wswriter_password', '2.0-rc7', '3:124f7fbb425a88220c72c315639a546e', 336);

-- Changeset db.changelog-1.0.xml::add-intended_resources_per_day-column-to-resource-allocation::ogonzalez::(Checksum: 3:0f818026f55b70d7907ff07b6d6c7f1d)
-- add intended_resources_per_day column to resource-allocation
ALTER TABLE resource_allocation ADD intended_resources_per_day DECIMAL(19,2);

update resource_allocation SET intended_resources_per_day = resources_per_day;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'add intended_resources_per_day column to resource-allocation', NOW(), 'Add Column, Custom SQL', 'EXECUTED', 'db.changelog-1.0.xml', 'add-intended_resources_per_day-column-to-resource-allocation', '2.0-rc7', '3:0f818026f55b70d7907ff07b6d6c7f1d', 337);

-- Changeset db.changelog-1.0.xml::change-original-total-assignment-to-use-effort-duration::ogonzalez::(Checksum: 3:e29e39577cdd5015b9be6999d8310544)
-- rename original_total_assignment to intended_total_assignment and now it's interpreted as an EffortDuration
ALTER TABLE resource_allocation ADD intended_total_assignment INT;

ALTER TABLE resource_allocation ALTER COLUMN  intended_total_assignment SET DEFAULT 0;

UPDATE resource_allocation SET intended_total_assignment = 3600 * original_total_assignment WHERE original_total_assignment IS NOT NULL;

ALTER TABLE resource_allocation DROP COLUMN original_total_assignment;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', 'rename original_total_assignment to intended_total_assignment and now it''s interpreted as an EffortDuration', NOW(), 'Add Column, Add Default Value, Custom SQL, Drop Column', 'EXECUTED', 'db.changelog-1.0.xml', 'change-original-total-assignment-to-use-effort-duration', '2.0-rc7', '3:e29e39577cdd5015b9be6999d8310544', 338);

-- Changeset db.changelog-1.0.xml::add-intended_non_consolidated_effort::ogonzalez::(Checksum: 3:e7ac605310143d646b9c8fd0de19c51a)
ALTER TABLE resource_allocation ADD intended_non_consolidated_effort INT;

ALTER TABLE resource_allocation ALTER COLUMN  intended_non_consolidated_effort SET DEFAULT 0;

UPDATE resource_allocation SET intended_non_consolidated_effort = intended_total_assignment;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', '', NOW(), 'Add Column, Add Default Value, Custom SQL', 'EXECUTED', 'db.changelog-1.0.xml', 'add-intended_non_consolidated_effort', '2.0-rc7', '3:e7ac605310143d646b9c8fd0de19c51a', 339);

-- Changeset db.changelog-1.0.xml::add-effort-duration-to-task-and-milestone::mrego::(Checksum: 3:818f79da6b908a1a7c579e60deb53e26)
-- constraintDate attribute in class TaskPositionConstraint has been changed to IntraDayDate.
--             It is needed to add some columns to store EffortDuration in Task and TaskMilestone.
ALTER TABLE task ADD constraint_date_effort_duration INT;

ALTER TABLE task_milestone ADD constraint_date_effort_duration INT;

ALTER TABLE task ALTER COLUMN  constraint_date_effort_duration SET DEFAULT 0;

ALTER TABLE task_milestone ALTER COLUMN  constraint_date_effort_duration SET DEFAULT 0;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'constraintDate attribute in class TaskPositionConstraint has been changed to IntraDayDate.
            It is needed to add some columns to store EffortDuration in Task and TaskMilestone.', NOW(), 'Add Column (x2), Add Default Value (x2)', 'EXECUTED', 'db.changelog-1.0.xml', 'add-effort-duration-to-task-and-milestone', '2.0-rc7', '3:818f79da6b908a1a7c579e60deb53e26', 340);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.2.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 11/25/11 11:26 AM
-- Against: naval@jdbc:postgresql://localhost/navaldev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.1.xml::add-new-column-ldap-host::calvarinop::(Checksum: 3:7984328274b0af25bf454a71f709a0dc)
-- Add new column to store ldap host
ALTER TABLE configuration ADD ldap_host VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap host', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-host', '2.0-rc7', '3:7984328274b0af25bf454a71f709a0dc', 341);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-port::calvarinop::(Checksum: 3:a698fd66dc9b58c8e7df0ffafc6f7d1c)
-- Add new column to store ldap port
ALTER TABLE configuration ADD ldap_port VARCHAR(5);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap port', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-port', '2.0-rc7', '3:a698fd66dc9b58c8e7df0ffafc6f7d1c', 342);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-base::calvarinop::(Checksum: 3:be1cce8488649e3d266a5df219713071)
-- Add new column to store ldap base
ALTER TABLE configuration ADD ldap_base VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap base', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-base', '2.0-rc7', '3:be1cce8488649e3d266a5df219713071', 343);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-userdn::calvarinop::(Checksum: 3:c4c93711bd374e215a65f6f45b6a5f44)
-- Add new column to store ldap userdn
ALTER TABLE configuration ADD ldap_userdn VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap userdn', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-userdn', '2.0-rc7', '3:c4c93711bd374e215a65f6f45b6a5f44', 344);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-password::calvarinop::(Checksum: 3:22761f7b110aec44930935cb79f179d5)
-- Add new column to store ldap password
ALTER TABLE configuration ADD ldap_password VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap password', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-password', '2.0-rc7', '3:22761f7b110aec44930935cb79f179d5', 345);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-userid::calvarinop::(Checksum: 3:b628b315f6a3d2266cb6d280f9525f5f)
-- Add new column to store ldap userid
ALTER TABLE configuration ADD ldap_userid VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap userid', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-userid', '2.0-rc7', '3:b628b315f6a3d2266cb6d280f9525f5f', 346);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-save-password-db::calvarinop::(Checksum: 3:b4447892b37ee903664f9b5bd54e7a2e)
-- Add new column to store ldap passwords in database
ALTER TABLE configuration ADD ldap_save_password_db BOOLEAN;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap passwords in database', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-save-password-db', '2.0-rc7', '3:b4447892b37ee903664f9b5bd54e7a2e', 347);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-auth-enabled::calvarinop::(Checksum: 3:979a11f6d147433ec84e6165927683fa)
-- Add new column to store ldap authentication enabled
ALTER TABLE configuration ADD ldap_auth_enabled BOOLEAN;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap authentication enabled', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-auth-enabled', '2.0-rc7', '3:979a11f6d147433ec84e6165927683fa', 348);

-- Changeset db.changelog-1.1.xml::add-new-column-navalplan-user::idiazt::(Checksum: 3:76c2b18d10554416d9ca9055d3c2e768)
-- Add new column to store if it is a navalplan user
ALTER TABLE user_table ADD navalplan_user BOOLEAN;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Add new column to store if it is a navalplan user', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-navalplan-user', '2.0-rc7', '3:76c2b18d10554416d9ca9055d3c2e768', 349);

-- Changeset db.changelog-1.1.xml::delete-constraint-not-null-user-password::idiazt::(Checksum: 3:0470d6d460842219443027cdb633232c)
-- Delete constraint not null for user password
ALTER TABLE user_table ALTER COLUMN  password DROP NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Delete constraint not null for user password', NOW(), 'Drop Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'delete-constraint-not-null-user-password', '2.0-rc7', '3:0470d6d460842219443027cdb633232c', 350);

-- Changeset db.changelog-1.1.xml::set-default-value-navalplan-user::idiazt::(Checksum: 3:8935d0ba839c252967d398f0db3ed01d)
ALTER TABLE user_table ALTER COLUMN  navalplan_user SET DEFAULT 'TRUE';

UPDATE user_table SET navalplan_user = 'TRUE' WHERE navalplan_user IS NULL;

ALTER TABLE user_table ALTER COLUMN  navalplan_user SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', '', NOW(), 'Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'set-default-value-navalplan-user', '2.0-rc7', '3:8935d0ba839c252967d398f0db3ed01d', 351);

-- Changeset db.changelog-1.1.xml::set-default-value-ldap-save-password-db::idiazt::(Checksum: 3:6bcb9c9c00f066bc7ef5e568abf2da6f)
ALTER TABLE configuration ALTER COLUMN  ldap_save_password_db SET DEFAULT 'TRUE';

UPDATE configuration SET ldap_save_password_db = 'TRUE' WHERE ldap_save_password_db IS NULL;

ALTER TABLE configuration ALTER COLUMN  ldap_save_password_db SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', '', NOW(), 'Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'set-default-value-ldap-save-password-db', '2.0-rc7', '3:6bcb9c9c00f066bc7ef5e568abf2da6f', 352);

-- Changeset db.changelog-1.1.xml::set-default-value-ldap-auth-enabled::idiazt::(Checksum: 3:987742cd9637874021c47ad9388655d2)
ALTER TABLE configuration ALTER COLUMN  ldap_auth_enabled SET DEFAULT 'FALSE';

UPDATE configuration SET ldap_auth_enabled = 'FALSE' WHERE ldap_auth_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  ldap_auth_enabled SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', '', NOW(), 'Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'set-default-value-ldap-auth-enabled', '2.0-rc7', '3:987742cd9637874021c47ad9388655d2', 353);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-save-roles-db::calvarinop::(Checksum: 3:e7fc821091b4d96786edf2aa98308f3b)
-- Add new column to store ldap roles in database
ALTER TABLE configuration ADD ldap_save_roles_db BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  ldap_save_roles_db SET DEFAULT 'FALSE';

UPDATE configuration SET ldap_save_roles_db = 'FALSE' WHERE ldap_save_roles_db IS NULL;

ALTER TABLE configuration ALTER COLUMN  ldap_save_roles_db SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap roles in database', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-save-roles-db', '2.0-rc7', '3:e7fc821091b4d96786edf2aa98308f3b', 354);

-- Changeset db.changelog-1.1.xml::create-new-table-matching-roles::calvarinop::(Checksum: 3:5afc1ada9ec4ae6bfd66368c2512e145)
-- Add new column to store ldap role property
CREATE TABLE configuration_roles_ldap (role_libreplan VARCHAR(255) NOT NULL, role_ldap VARCHAR(255) NOT NULL, id_configuration BIGINT NOT NULL, role_matching_id INT NOT NULL, CONSTRAINT PK_CONFIGURATION_ROLES_LDAP PRIMARY KEY (role_libreplan, role_ldap));

ALTER TABLE configuration_roles_ldap ADD CONSTRAINT id_configuration_fkey FOREIGN KEY (id_configuration) REFERENCES configuration(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE configuration ADD ldap_group_path VARCHAR(255);

ALTER TABLE configuration ADD ldap_role_property VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store ldap role property', NOW(), 'Create Table, Add Foreign Key Constraint, Add Column (x2)', 'EXECUTED', 'db.changelog-1.1.xml', 'create-new-table-matching-roles', '2.0-rc7', '3:5afc1ada9ec4ae6bfd66368c2512e145', 355);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-search-query::idiazt::(Checksum: 3:8e994641ada47323406f65d515ff00a0)
-- Add new column to store ldap role search query
ALTER TABLE configuration ADD ldap_search_query VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Add new column to store ldap role search query', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-search-query', '2.0-rc7', '3:8e994641ada47323406f65d515ff00a0', 356);

-- Changeset db.changelog-1.1.xml::add-new-column-enabled-autocomplete-login::smontes::(Checksum: 3:0542da97fbff41b95f9cf5ef10ffa322)
-- Add new column enabled_autocomplete_login with default value TRUE to configuration table
ALTER TABLE configuration ADD enabled_autocomplete_login BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  enabled_autocomplete_login SET DEFAULT 'TRUE';

UPDATE configuration SET enabled_autocomplete_login = 'TRUE' WHERE enabled_autocomplete_login IS NULL;

ALTER TABLE configuration ALTER COLUMN  enabled_autocomplete_login SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column enabled_autocomplete_login with default value TRUE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-enabled-autocomplete-login', '2.0-rc7', '3:0542da97fbff41b95f9cf5ef10ffa322', 357);

-- Changeset db.changelog-1.1.xml::add-application-language::calvarinop::(Checksum: 3:f451e552cb7903c699c88ecde02e85c6)
-- Add new column to store the language of application for this user
ALTER TABLE user_table ADD application_language INT DEFAULT '0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store the language of application for this user', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-application-language', '2.0-rc7', '3:f451e552cb7903c699c88ecde02e85c6', 358);

-- Changeset db.changelog-1.1.xml::move-columns-from-configuration-table::calvarinop::(Checksum: 3:7243259227df39ef2f0683d4b425d369)
-- Move columns from configuration table to user table
ALTER TABLE user_table ADD expand_company_planning_view_charts BOOLEAN;

ALTER TABLE user_table ALTER COLUMN  expand_company_planning_view_charts SET DEFAULT 'FALSE';

UPDATE user_table SET expand_company_planning_view_charts = 'FALSE' WHERE expand_company_planning_view_charts IS NULL;

ALTER TABLE user_table ALTER COLUMN  expand_company_planning_view_charts SET NOT NULL;

ALTER TABLE user_table ADD expand_order_planning_view_charts BOOLEAN;

ALTER TABLE user_table ALTER COLUMN  expand_order_planning_view_charts SET DEFAULT 'TRUE';

UPDATE user_table SET expand_order_planning_view_charts = 'TRUE' WHERE expand_order_planning_view_charts IS NULL;

ALTER TABLE user_table ALTER COLUMN  expand_order_planning_view_charts SET NOT NULL;

ALTER TABLE user_table ADD expand_resource_load_view_charts BOOLEAN;

ALTER TABLE user_table ALTER COLUMN  expand_resource_load_view_charts SET DEFAULT 'TRUE';

UPDATE user_table SET expand_resource_load_view_charts = 'TRUE' WHERE expand_resource_load_view_charts IS NULL;

ALTER TABLE user_table ALTER COLUMN  expand_resource_load_view_charts SET NOT NULL;

ALTER TABLE configuration DROP COLUMN expand_company_planning_view_charts;

ALTER TABLE configuration DROP COLUMN expand_order_planning_view_charts;

ALTER TABLE configuration DROP COLUMN expand_resource_load_view_charts;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Move columns from configuration table to user table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint, Add Column, Add Default Value, Add Not-Null Constraint, Add Column, Add Default Value, Add Not-Null Constraint, Drop Column (x3)', 'EXECUTED', 'db.changelog-1.1.xml', 'move-columns-from-configuration-table', '2.0-rc7', '3:7243259227df39ef2f0683d4b425d369', 359);

-- Changeset db.changelog-1.1.xml::add-new-fields::calvarinop::(Checksum: 3:6950443e7dca6f2af1e7d095abde62bc)
-- Add new column to store the first and last name for this user
ALTER TABLE user_table ADD first_name VARCHAR(255);

ALTER TABLE user_table ADD last_name VARCHAR(255);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('calvarinop', 'Add new column to store the first and last name for this user', NOW(), 'Add Column (x2)', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-fields', '2.0-rc7', '3:6950443e7dca6f2af1e7d095abde62bc', 360);

-- Changeset db.changelog-1.1.xml::remove-configuration_roles_ldap::mrego::(Checksum: 3:88dacdfabdf225e6ed8b25e4807afeb8)
-- Remove column configuration_roles_ldap in role_matching_id
ALTER TABLE configuration_roles_ldap DROP COLUMN role_matching_id;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Remove column configuration_roles_ldap in role_matching_id', NOW(), 'Drop Column', 'EXECUTED', 'db.changelog-1.1.xml', 'remove-configuration_roles_ldap', '2.0-rc7', '3:88dacdfabdf225e6ed8b25e4807afeb8', 361);

-- Changeset db.changelog-1.1.xml::add-column-progress_all_by_num_hours-in-planning_data::mrego::(Checksum: 3:9410a670cf6cccd21638c8eddb6b8b36)
-- Add column progress_all_by_num_hours in planning_data
ALTER TABLE planning_data ADD progress_all_by_num_hours numeric(19,6);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add column progress_all_by_num_hours in planning_data', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-column-progress_all_by_num_hours-in-planning_data', '2.0-rc7', '3:9410a670cf6cccd21638c8eddb6b8b36', 362);

-- Changeset db.changelog-1.1.xml::update-color-in-calendar_exception_type-to-default::mrego::(Checksum: 3:2f5f94374b2021dca7bc4d8245807ae4)
-- Update color in calendar_exception_type to DEFAULT
UPDATE calendar_exception_type SET color = 'DEFAULT';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Update color in calendar_exception_type to DEFAULT', NOW(), 'Update Data', 'EXECUTED', 'db.changelog-1.1.xml', 'update-color-in-calendar_exception_type-to-default', '2.0-rc7', '3:2f5f94374b2021dca7bc4d8245807ae4', 363);

-- Changeset db.changelog-1.1.xml::create-table-manual_function::mrego::(Checksum: 3:aac963ac8a7a63814472c50edf8b367a)
CREATE TABLE manual_function (assignment_function_id BIGINT NOT NULL, CONSTRAINT manual_function_pkey PRIMARY KEY (assignment_function_id));

ALTER TABLE manual_function ADD CONSTRAINT mnual_function_assignment_function_fkey FOREIGN KEY (assignment_function_id) REFERENCES assignment_function(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Create Table, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'create-table-manual_function', '2.0-rc7', '3:aac963ac8a7a63814472c50edf8b367a', 364);

-- Changeset db.changelog-1.1.xml::change-numhours-to-effort-in-work-report-lines::idiazt::(Checksum: 3:824cfe1ec43c490e63bf2d8316f1255e)
-- Changing work_report_line numHours to effort
ALTER TABLE work_report_line RENAME COLUMN num_hours TO effort;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Changing work_report_line numHours to effort', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.1.xml', 'change-numhours-to-effort-in-work-report-lines', '2.0-rc7', '3:824cfe1ec43c490e63bf2d8316f1255e', 365);

-- Changeset db.changelog-1.1.xml::update-numhours-values-to-effort-values::idiazt::(Checksum: 3:79a9659b3a77004c5fe13bbec8aad88c)
-- Updating numHours to effort (hours to seconds)
UPDATE work_report_line
            SET effort = effort*3600;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Updating numHours to effort (hours to seconds)', NOW(), 'Custom SQL', 'EXECUTED', 'db.changelog-1.1.xml', 'update-numhours-values-to-effort-values', '2.0-rc7', '3:79a9659b3a77004c5fe13bbec8aad88c', 366);

-- Changeset db.changelog-1.1.xml::change-sum_charged_hours-to-sum_charged_effort::mrego::(Checksum: 3:202833e32d386f5a3edf903b2d5a21b4)
-- Changing sum_charged_hours to sum_charged_effort
ALTER TABLE sum_charged_hours RENAME TO sum_charged_effort;

ALTER TABLE sum_charged_effort RENAME COLUMN direct_charged_hours TO direct_charged_effort;

ALTER TABLE sum_charged_effort RENAME COLUMN indirect_charged_hours TO indirect_charged_effort;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Changing sum_charged_hours to sum_charged_effort', NOW(), 'Rename Table, Rename Column (x2)', 'EXECUTED', 'db.changelog-1.1.xml', 'change-sum_charged_hours-to-sum_charged_effort', '2.0-rc7', '3:202833e32d386f5a3edf903b2d5a21b4', 367);

-- Changeset db.changelog-1.1.xml::update-effort-values-in-sum_charged_effort::mrego::(Checksum: 3:6d7d2103e92b3ac55b9658931fc3ed65)
-- Updating effort values (hours to seconds) in sum_charged_effort table
UPDATE sum_charged_effort
            SET direct_charged_effort = direct_charged_effort*3600;

UPDATE sum_charged_effort
            SET indirect_charged_effort = indirect_charged_effort*3600;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Updating effort values (hours to seconds) in sum_charged_effort table', NOW(), 'Custom SQL (x2)', 'EXECUTED', 'db.changelog-1.1.xml', 'update-effort-values-in-sum_charged_effort', '2.0-rc7', '3:6d7d2103e92b3ac55b9658931fc3ed65', 368);

-- Changeset db.changelog-1.1.xml::drop-foreign-key-sum_charged_hours_id-in-order_element::dmel::(Checksum: 3:288d757a697e34248fbb5dab4177c4a0)
ALTER TABLE order_element DROP CONSTRAINT fk92271f0b7ec17fa6;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('dmel', '', NOW(), 'Drop Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'drop-foreign-key-sum_charged_hours_id-in-order_element', '2.0-rc7', '3:288d757a697e34248fbb5dab4177c4a0', 369);

-- Changeset db.changelog-1.1.xml::rename-sum_charged_hours_id-to-sum_charged_effort_id::mrego::(Checksum: 3:f8140dac93702c25f7fe75d9217ef9c5)
-- Rename sum_charged_hours_id to sum_charged_effort_id in order_element
ALTER TABLE order_element RENAME COLUMN sum_charged_hours_id TO sum_charged_effort_id;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename sum_charged_hours_id to sum_charged_effort_id in order_element', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.1.xml', 'rename-sum_charged_hours_id-to-sum_charged_effort_id', '2.0-rc7', '3:f8140dac93702c25f7fe75d9217ef9c5', 370);

-- Changeset db.changelog-1.1.xml::add-foreign-key-sum_charged_effort_id-in-order_element::dmel::(Checksum: 3:a8fa898f9cfaa1afa3afbab4c1c9f82b)
ALTER TABLE order_element ADD CONSTRAINT sum_charged_effort_id_fkey FOREIGN KEY (sum_charged_effort_id) REFERENCES sum_charged_effort(id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('dmel', '', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'add-foreign-key-sum_charged_effort_id-in-order_element', '2.0-rc7', '3:a8fa898f9cfaa1afa3afbab4c1c9f82b', 371);

-- Changeset db.changelog-1.1.xml::drop-column-date-in-stretches-table::mrego::(Checksum: 3:e0ed365c168583ff5c4c81c9ac79d644)
ALTER TABLE stretches DROP COLUMN date;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', '', NOW(), 'Drop Column', 'EXECUTED', 'db.changelog-1.1.xml', 'drop-column-date-in-stretches-table', '2.0-rc7', '3:e0ed365c168583ff5c4c81c9ac79d644', 372);

-- Changeset db.changelog-1.1.xml::add-version-to-planning-data::ogonzalez::(Checksum: 3:ae9dca1ca9cb3556cf5efdca689b8fc1)
ALTER TABLE planning_data ADD version BIGINT NOT NULL DEFAULT '0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ogonzalez', '', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.1.xml', 'add-version-to-planning-data', '2.0-rc7', '3:ae9dca1ca9cb3556cf5efdca689b8fc1', 373);

-- Changeset db.changelog-1.1.xml::change-navalplan_user-to-libreplan_user-in-user_table::mrego::(Checksum: 3:82c71f38665f14d5d8ef9391a5c2487d)
-- Changing navalplan_user to libreplan_user in user_table
ALTER TABLE user_table RENAME COLUMN navalplan_user TO libreplan_user;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Changing navalplan_user to libreplan_user in user_table', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.1.xml', 'change-navalplan_user-to-libreplan_user-in-user_table', '2.0-rc7', '3:82c71f38665f14d5d8ef9391a5c2487d', 374);

-- Changeset db.changelog-1.1.xml::add-new-column-ldap-role-strategy::idiazt::(Checksum: 3:3145034f8fd26477ae1fac7da835a43e)
-- Add new column to store ldap role strategy
ALTER TABLE configuration ADD ldap_group_strategy BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  ldap_group_strategy SET DEFAULT 'TRUE';

UPDATE configuration SET ldap_group_strategy = 'TRUE' WHERE ldap_group_strategy IS NULL;

ALTER TABLE configuration ALTER COLUMN  ldap_group_strategy SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('idiazt', 'Add new column to store ldap role strategy', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.1.xml', 'add-new-column-ldap-role-strategy', '2.0-rc7', '3:3145034f8fd26477ae1fac7da835a43e', 375);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.2.1
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 1/19/12 11:41 AM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.2.xml::add-task_end_date_effort_duration-to-consolidated_value::mrego::(Checksum: 3:4ffcc289b81bfbfa1d43466ad34d9705)
-- taskEndDate attribute in class ConsolidatedValue has been changed to IntraDayDate.
--             It is needed to add some columns to store EffortDuration in ConsolidatedValue.
ALTER TABLE consolidated_value ADD task_end_date_effort_duration INT;

ALTER TABLE consolidated_value ALTER COLUMN  task_end_date_effort_duration SET DEFAULT 0;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'taskEndDate attribute in class ConsolidatedValue has been changed to IntraDayDate.
            It is needed to add some columns to store EffortDuration in ConsolidatedValue.', NOW(), 'Add Column, Add Default Value', 'EXECUTED', 'db.changelog-1.2.xml', 'add-task_end_date_effort_duration-to-consolidated_value', '2.0-rc7', '3:4ffcc289b81bfbfa1d43466ad34d9705', 376);

-- Changeset db.changelog-1.2.xml::change-sum_of_hours_allocated-to-sum_of_assigned_effort::jaragunde::(Checksum: 3:075a1a017c4cac0b0480a84f3a539655)
-- Changing sum_of_hours_allocated to sum_of_assigned_effort
ALTER TABLE task_element RENAME COLUMN sum_of_hours_allocated TO sum_of_assigned_effort;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('jaragunde', 'Changing sum_of_hours_allocated to sum_of_assigned_effort', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'change-sum_of_hours_allocated-to-sum_of_assigned_effort', '2.0-rc7', '3:075a1a017c4cac0b0480a84f3a539655', 377);

-- Changeset db.changelog-1.2.xml::update-effort-values-in-sum_charged_effort::jaragunde::(Checksum: 3:f408e919dea5d8b75042efb84879380d)
-- Updating effort values (hours to seconds) in task_element table
UPDATE task_element
            SET sum_of_assigned_effort = sum_of_assigned_effort*3600;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('jaragunde', 'Updating effort values (hours to seconds) in task_element table', NOW(), 'Custom SQL', 'EXECUTED', 'db.changelog-1.2.xml', 'update-effort-values-in-sum_charged_effort', '2.0-rc7', '3:f408e919dea5d8b75042efb84879380d', 378);

-- Changeset db.changelog-1.2.xml::add-new-column-check_new_version_enabled::mrego::(Checksum: 3:8e46dd07efca106657d62ade635bbf03)
-- Add new column check_new_version_enabled with default value TRUE to configuration table
ALTER TABLE configuration ADD check_new_version_enabled BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  check_new_version_enabled SET DEFAULT 'TRUE';

UPDATE configuration SET check_new_version_enabled = 'TRUE' WHERE check_new_version_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  check_new_version_enabled SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column check_new_version_enabled with default value TRUE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-check_new_version_enabled', '2.0-rc7', '3:8e46dd07efca106657d62ade635bbf03', 379);

-- Changeset db.changelog-1.2.xml::add-new-column-allow_to_gather_usage_stats_enabled::mrego::(Checksum: 3:93c54c45c29d479faa98e6db1af06591)
-- Add new column allow_to_gather_usage_stats_enabled with default value FALSE to configuration table
ALTER TABLE configuration ADD allow_to_gather_usage_stats_enabled BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET DEFAULT 'FALSE';

UPDATE configuration SET allow_to_gather_usage_stats_enabled = 'FALSE' WHERE allow_to_gather_usage_stats_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column allow_to_gather_usage_stats_enabled with default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-allow_to_gather_usage_stats_enabled', '2.0-rc7', '3:93c54c45c29d479faa98e6db1af06591', 380);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.2.2
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 3/15/12 10:18 AM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.2.xml::change-column-description-in-order_element-to-text::mrego::(Checksum: 3:f2241d994f460dca4300c84c9e8f76a0)
-- Change column description in order_element to TEXT
ALTER TABLE order_element ALTER COLUMN description TYPE TEXT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Change column description in order_element to TEXT', NOW(), 'Modify data type', 'EXECUTED', 'db.changelog-1.2.xml', 'change-column-description-in-order_element-to-text', '2.0-rc7', '3:f2241d994f460dca4300c84c9e8f76a0', 381);

-- Changeset db.changelog-1.2.xml::change-column-description-in-order_element_template-to-text::mrego::(Checksum: 3:cb7234813755a9eceb39dc4601011375)
-- Change column description in order_element_template to TEXT
ALTER TABLE order_element_template ALTER COLUMN description TYPE TEXT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Change column description in order_element_template to TEXT', NOW(), 'Modify data type', 'EXECUTED', 'db.changelog-1.2.xml', 'change-column-description-in-order_element_template-to-text', '2.0-rc7', '3:cb7234813755a9eceb39dc4601011375', 382);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.2.3
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 18/04/12 17:43
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0-rc7
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.2.xml::add-budget-column-to-order_line::mrego::(Checksum: 3:68630e28c83f5f0b24ffd8378526d2a7)
-- add budget column to order_line
ALTER TABLE order_line ADD budget DECIMAL(19,2);

UPDATE order_line SET budget = '0' WHERE budget IS NULL;

ALTER TABLE order_line ALTER COLUMN  budget SET NOT NULL;

ALTER TABLE order_line ALTER COLUMN  budget SET DEFAULT 0;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'add budget column to order_line', NOW(), 'Add Column, Add Not-Null Constraint, Add Default Value', 'EXECUTED', 'db.changelog-1.2.xml', 'add-budget-column-to-order_line', '2.0-rc7', '3:68630e28c83f5f0b24ffd8378526d2a7', 383);

-- Changeset db.changelog-1.2.xml::add-budget-column-to-order_line_template::mrego::(Checksum: 3:0b8337c5f55c7c2d0159facda7ca80ef)
-- add budget column to order_line_template
ALTER TABLE order_line_template ADD budget DECIMAL(19,2);

UPDATE order_line_template SET budget = '0' WHERE budget IS NULL;

ALTER TABLE order_line_template ALTER COLUMN  budget SET NOT NULL;

ALTER TABLE order_line_template ALTER COLUMN  budget SET DEFAULT 0;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'add budget column to order_line_template', NOW(), 'Add Column, Add Not-Null Constraint, Add Default Value', 'EXECUTED', 'db.changelog-1.2.xml', 'add-budget-column-to-order_line_template', '2.0-rc7', '3:0b8337c5f55c7c2d0159facda7ca80ef', 384);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.3.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 7/20/12 8:18 AM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0.5
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.2.xml::initial-database-creation-customer-comunication::smontes::(Checksum: 3:59a56c15bcd845deb7f160c2ed1ff817)
CREATE TABLE customer_comunication (id BIGINT NOT NULL, "version" BIGINT NOT NULL, deadline TIMESTAMP WITH TIME ZONE, comunication_type INT, comunication_date TIMESTAMP WITH TIME ZONE, reviewed BOOLEAN, order_id BIGINT, CONSTRAINT customer_comunication_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'initial-database-creation-customer-comunication', '2.0.5', '3:59a56c15bcd845deb7f160c2ed1ff817', 385);

-- Changeset db.changelog-1.2.xml::initial-database-creation-subcontractor-comunication::smontes::(Checksum: 3:ecd951d180545b3e53241e7a862215ac)
CREATE TABLE subcontractor_comunication (id BIGINT NOT NULL, "version" BIGINT NOT NULL, comunication_type INT, comunication_date TIMESTAMP WITH TIME ZONE, reviewed BOOLEAN, subcontracted_task_data BIGINT, CONSTRAINT subcontractor_comunication_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'initial-database-creation-subcontractor-comunication', '2.0.5', '3:ecd951d180545b3e53241e7a862215ac', 386);

-- Changeset db.changelog-1.2.xml::initial-database-creation-subcontractor-comunication-value::smontes::(Checksum: 3:0193a0cb269f0fca18d96d1be7628b2e)
CREATE TABLE subcontrator_comunication_values (subcontractor_comunication_id BIGINT NOT NULL, "date" TIMESTAMP WITH TIME ZONE, progress DECIMAL(19,2), idx INT NOT NULL);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'initial-database-creation-subcontractor-comunication-value', '2.0.5', '3:0193a0cb269f0fca18d96d1be7628b2e', 387);

-- Changeset db.changelog-1.2.xml::rename-table-customer_comunication-to-customer_communication::smontes::(Checksum: 3:1ae733e6ccc918ffebd42a6f81d64d0b)
-- Rename table customer_comunication to customer_communication
ALTER TABLE customer_comunication RENAME TO customer_communication;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename table customer_comunication to customer_communication', NOW(), 'Rename Table', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-table-customer_comunication-to-customer_communication', '2.0.5', '3:1ae733e6ccc918ffebd42a6f81d64d0b', 388);

-- Changeset db.changelog-1.2.xml::rename-column-comunication_type-to-communication_type::smontes::(Checksum: 3:3a22719f63e2217b3263184f5edfcba7)
-- Rename column comunication_type to communication_type
ALTER TABLE customer_communication RENAME COLUMN comunication_type TO communication_type;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename column comunication_type to communication_type', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-comunication_type-to-communication_type', '2.0.5', '3:3a22719f63e2217b3263184f5edfcba7', 389);

-- Changeset db.changelog-1.2.xml::rename-column-comunication_date-to-communication_date::smontes::(Checksum: 3:2cd6e17fc795e3658f464709fba77874)
-- Rename column comunication_date to communication_date
ALTER TABLE customer_communication RENAME COLUMN comunication_date TO communication_date;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename column comunication_date to communication_date', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-comunication_date-to-communication_date', '2.0.5', '3:2cd6e17fc795e3658f464709fba77874', 390);

-- Changeset db.changelog-1.2.xml::rename-table-subcontractor_comunication::smontes::(Checksum: 3:e9e6a2bcb8dfe3fed721f32999bf51f1)
-- Rename table subcontractor_comunication to subcontractor_communication
ALTER TABLE subcontractor_comunication RENAME TO subcontractor_communication;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename table subcontractor_comunication to subcontractor_communication', NOW(), 'Rename Table', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-table-subcontractor_comunication', '2.0.5', '3:e9e6a2bcb8dfe3fed721f32999bf51f1', 391);

-- Changeset db.changelog-1.2.xml::rename-column-comunication_type-on-subcontractor-communication::smontes::(Checksum: 3:66fa4dd7f1e8cfc5c2a0a569eb1b7e76)
-- Rename column comunication_type to communication_type
ALTER TABLE subcontractor_communication RENAME COLUMN comunication_type TO communication_type;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename column comunication_type to communication_type', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-comunication_type-on-subcontractor-communication', '2.0.5', '3:66fa4dd7f1e8cfc5c2a0a569eb1b7e76', 392);

-- Changeset db.changelog-1.2.xml::rename-column-comunication_date-on-subcontractor-communication::smontes::(Checksum: 3:44d8a7bf4bbd4327cdfce81458b30554)
-- Rename column comunication_date to communication_date
ALTER TABLE subcontractor_communication RENAME COLUMN comunication_date TO communication_date;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename column comunication_date to communication_date', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-comunication_date-on-subcontractor-communication', '2.0.5', '3:44d8a7bf4bbd4327cdfce81458b30554', 393);

-- Changeset db.changelog-1.2.xml::rename-table-subcontractor_comunication_values::smontes::(Checksum: 3:2a590f887ff2eff855dec6ebb6ab03fd)
-- Rename table subcontractor_comunication_values to subcontractor_communication_values
ALTER TABLE subcontrator_comunication_values RENAME TO subcontractor_communication_values;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename table subcontractor_comunication_values to subcontractor_communication_values', NOW(), 'Rename Table', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-table-subcontractor_comunication_values', '2.0.5', '3:2a590f887ff2eff855dec6ebb6ab03fd', 394);

-- Changeset db.changelog-1.2.xml::rename-column-subcontractor_comunication_id::smontes::(Checksum: 3:26f643ba3829536f31f78def5300d9f4)
-- Rename column subcontractor_comunication_id
ALTER TABLE subcontractor_communication_values RENAME COLUMN subcontractor_comunication_id TO subcontractor_communication_id;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename column subcontractor_comunication_id', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-subcontractor_comunication_id', '2.0.5', '3:26f643ba3829536f31f78def5300d9f4', 395);

-- Changeset db.changelog-1.2.xml::creation-deadline-communication::smontes::(Checksum: 3:07ef049e78ecd250d56a88850bdd5250)
CREATE TABLE deadline_communication (id BIGINT NOT NULL, "version" BIGINT NOT NULL, save_date TIMESTAMP WITH TIME ZONE, deliver_date TIMESTAMP WITH TIME ZONE, CONSTRAINT deadline_comunication_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'creation-deadline-communication', '2.0.5', '3:07ef049e78ecd250d56a88850bdd5250', 396);

-- Changeset db.changelog-1.2.xml::add-delivering-date-column-to-order-entity::smontes::(Checksum: 3:5ea1e3d168533ccd24099c6ac95136c0)
-- Add new delivering date column to order
ALTER TABLE deadline_communication ADD order_id BIGINT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new delivering date column to order', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.2.xml', 'add-delivering-date-column-to-order-entity', '2.0.5', '3:5ea1e3d168533ccd24099c6ac95136c0', 397);

-- Changeset db.changelog-1.2.xml::creation-subcontractor-deliver-date::smontes::(Checksum: 3:8d41b20b896bae55febcc7ab03daff51)
CREATE TABLE subcontractor_deliver_date (id BIGINT NOT NULL, "version" BIGINT NOT NULL, save_date TIMESTAMP WITH TIME ZONE, subcontractor_deliver_date TIMESTAMP WITH TIME ZONE, communication_date TIMESTAMP WITH TIME ZONE, CONSTRAINT subcontrator_deliver_date_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'creation-subcontractor-deliver-date', '2.0.5', '3:8d41b20b896bae55febcc7ab03daff51', 398);

-- Changeset db.changelog-1.2.xml::add-subcontracted-task-data::smontes::(Checksum: 3:1a4b3b7369aea7ffff6b1cc763ee07dd)
-- Add the column subcontracted_task_id to maintain the relation
ALTER TABLE subcontractor_deliver_date ADD subcontracted_task_data_id BIGINT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add the column subcontracted_task_id to maintain the relation', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.2.xml', 'add-subcontracted-task-data', '2.0.5', '3:1a4b3b7369aea7ffff6b1cc763ee07dd', 399);

-- Changeset db.changelog-1.2.xml::database-creation-table-end-date-communication-to-customer::smontes::(Checksum: 3:1a860a9a519552f494435a180819a216)
CREATE TABLE end_date_communication_to_customer (id BIGINT NOT NULL, "version" BIGINT NOT NULL, save_date TIMESTAMP WITH TIME ZONE, end_date TIMESTAMP WITH TIME ZONE, communication_date TIMESTAMP WITH TIME ZONE, order_id BIGINT, CONSTRAINT end_date_communication_to_customer_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'database-creation-table-end-date-communication-to-customer', '2.0.5', '3:1a860a9a519552f494435a180819a216', 400);

-- Changeset db.changelog-1.2.xml::subcontracted-date-id-column-to-end-date-communication::smontes::(Checksum: 3:6bf0c71648f12e59f928f6c505e596ae)
-- Add subcontracted date id column to end date communication to customer
ALTER TABLE end_date_communication_to_customer ADD subcontracted_task_data_id BIGINT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add subcontracted date id column to end date communication to customer', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.2.xml', 'subcontracted-date-id-column-to-end-date-communication', '2.0.5', '3:6bf0c71648f12e59f928f6c505e596ae', 401);

-- Changeset db.changelog-1.2.xml::rename-table-end_date_comunication-to-customer::smontes::(Checksum: 3:7994a86f100e2fb01458dd96c62a4b28)
-- Rename table to end_date_communication
ALTER TABLE end_date_communication_to_customer RENAME TO end_date_communication;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Rename table to end_date_communication', NOW(), 'Rename Table', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-table-end_date_comunication-to-customer', '2.0.5', '3:7994a86f100e2fb01458dd96c62a4b28', 402);

-- Changeset db.changelog-1.2.xml::change-mapping-order-element-and-sum-charged-effort-postgresql::mrego::(Checksum: 3:2c5d8a9bd39b9a6c647584bda021b433)
-- Change mapping between OrderElement and SumChargedEffort in MySQL
ALTER TABLE sum_charged_effort ADD order_element BIGINT;

ALTER TABLE sum_charged_effort ADD CONSTRAINT sum_charged_effort_order_element_fkey FOREIGN KEY (order_element) REFERENCES order_element (id);

ALTER TABLE order_element DROP COLUMN sum_charged_effort_id;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Change mapping between OrderElement and SumChargedEffort in MySQL', NOW(), 'Add Column, Create Procedure, Custom SQL, Add Foreign Key Constraint, Drop Column', 'EXECUTED', 'db.changelog-1.2.xml', 'change-mapping-order-element-and-sum-charged-effort-postgresql', '2.0.5', '3:2c5d8a9bd39b9a6c647584bda021b433', 403);

-- Changeset db.changelog-1.2.xml::creation-table-expense-sheet::smontes::(Checksum: 3:58560df3b8bda44b8057b7538e66c15d)
CREATE TABLE expense_sheet (id BIGINT NOT NULL, "version" BIGINT NOT NULL, code VARCHAR(255) NOT NULL, code_autogenerated BOOLEAN, first_expense TIMESTAMP WITH TIME ZONE, last_expense TIMESTAMP WITH TIME ZONE, total DECIMAL(19,2), description TEXT, last_expense_sheet_line_sequence_code INT, CONSTRAINT expense_sheet_pkey PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.2.xml', 'creation-table-expense-sheet', '2.0.5', '3:58560df3b8bda44b8057b7538e66c15d', 404);

-- Changeset db.changelog-1.2.xml::creation-table-expense-sheet-line::smontes::(Checksum: 3:c07a2ad8a9e8c277e13bd92806e1414e)
CREATE TABLE expense_sheet_line (id BIGINT NOT NULL, "version" BIGINT NOT NULL, code VARCHAR(255) NOT NULL, value DECIMAL(19,2), concept VARCHAR(255), "date" TIMESTAMP WITH TIME ZONE, order_element_id BIGINT, resource_id BIGINT, expense_sheet_id BIGINT, CONSTRAINT expense_sheet_line_pkey PRIMARY KEY (id));

ALTER TABLE expense_sheet_line ADD CONSTRAINT expense_sheet_line_order_element_fkey FOREIGN KEY (order_element_id) REFERENCES order_element (id);

ALTER TABLE expense_sheet_line ADD CONSTRAINT expense_sheet_line_resource_fkey FOREIGN KEY (resource_id) REFERENCES resource (id);

ALTER TABLE expense_sheet_line ADD CONSTRAINT expense_sheet_line_expense_sheet_fkey FOREIGN KEY (expense_sheet_id) REFERENCES expense_sheet (id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', '', NOW(), 'Create Table, Add Foreign Key Constraint (x3)', 'EXECUTED', 'db.changelog-1.2.xml', 'creation-table-expense-sheet-line', '2.0.5', '3:c07a2ad8a9e8c277e13bd92806e1414e', 405);

-- Changeset db.changelog-1.2.xml::add-new-column-generate-code-for-expense-sheets::smontes::(Checksum: 3:cad60515a7450740e2582ae1ce815885)
-- Add new column to generate the code for expense sheet in configuration table
ALTER TABLE configuration ADD generate_code_for_expense_sheets BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  generate_code_for_expense_sheets SET DEFAULT TRUE;

UPDATE configuration SET generate_code_for_expense_sheets = 'TRUE' WHERE generate_code_for_expense_sheets IS NULL;

ALTER TABLE configuration ALTER COLUMN  generate_code_for_expense_sheets SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'Add new column to generate the code for expense sheet in configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-generate-code-for-expense-sheets', '2.0.5', '3:cad60515a7450740e2582ae1ce815885', 406);

-- Changeset db.changelog-1.2.xml::modify-columns-type-in-expense-sheet-to-date::smontes::(Checksum: 3:30af5261fc7d1cc196b254962a6bc9cd)
-- modify columns type in expense sheet to date
ALTER TABLE expense_sheet ALTER COLUMN first_expense TYPE DATE;

ALTER TABLE expense_sheet ALTER COLUMN last_expense TYPE DATE;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'modify columns type in expense sheet to date', NOW(), 'Modify data type (x2)', 'EXECUTED', 'db.changelog-1.2.xml', 'modify-columns-type-in-expense-sheet-to-date', '2.0.5', '3:30af5261fc7d1cc196b254962a6bc9cd', 407);

-- Changeset db.changelog-1.2.xml::modify-columns-type-in-expense-sheet-line-to-date::smontes::(Checksum: 3:80e8ab1008f78dd80d4d0427b8cab872)
-- modify columns type in expense sheet line to date
ALTER TABLE expense_sheet_line ALTER COLUMN "date" TYPE DATE;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'modify columns type in expense sheet line to date', NOW(), 'Modify data type', 'EXECUTED', 'db.changelog-1.2.xml', 'modify-columns-type-in-expense-sheet-line-to-date', '2.0.5', '3:80e8ab1008f78dd80d4d0427b8cab872', 408);

-- Changeset db.changelog-1.2.xml::create3-table-sum-expenses::smontes::(Checksum: 3:5d50ee6bcc8395686dc88683de0c94f7)
-- creation table sum_expenses
CREATE TABLE sum_expenses (id BIGINT NOT NULL, "version" BIGINT NOT NULL, order_element_id BIGINT, total_direct_expenses DECIMAL(19,2), total_indirect_expenses DECIMAL(19,2), CONSTRAINT sum_expenses_pkey PRIMARY KEY (id));

ALTER TABLE sum_expenses ADD CONSTRAINT sum_expenses_order_element_fkey FOREIGN KEY (order_element_id) REFERENCES order_element (id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('smontes', 'creation table sum_expenses', NOW(), 'Create Table, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'create3-table-sum-expenses', '2.0.5', '3:5d50ee6bcc8395686dc88683de0c94f7', 409);

-- Changeset db.changelog-1.2.xml::add-new-columns-for-currency-in-configuration::mrego::(Checksum: 3:c0e2f3cc0bd28a4cfb77c91e32b8f72e)
-- Add new columns for currency in configuration table
ALTER TABLE configuration ADD currency_code VARCHAR(255);

ALTER TABLE configuration ALTER COLUMN  currency_code SET DEFAULT 'EUR';

UPDATE configuration SET currency_code = 'EUR' WHERE currency_code IS NULL;

ALTER TABLE configuration ALTER COLUMN  currency_code SET NOT NULL;

ALTER TABLE configuration ADD currency_symbol VARCHAR(255);

ALTER TABLE configuration ALTER COLUMN  currency_symbol SET DEFAULT '€';

UPDATE configuration SET currency_symbol = '€' WHERE currency_symbol IS NULL;

ALTER TABLE configuration ALTER COLUMN  currency_symbol SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new columns for currency in configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint, Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-columns-for-currency-in-configuration', '2.0.5', '3:c0e2f3cc0bd28a4cfb77c91e32b8f72e', 410);

-- Changeset db.changelog-1.2.xml::remove-code-from-order_element_template::jaragunde::(Checksum: 3:88f6c4f5d7bece8e045f1cae70e5cfae)
-- Remove column code in order_element_template table
ALTER TABLE order_element_template DROP COLUMN code;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('jaragunde', 'Remove column code in order_element_template table', NOW(), 'Drop Column', 'EXECUTED', 'db.changelog-1.2.xml', 'remove-code-from-order_element_template', '2.0.5', '3:88f6c4f5d7bece8e045f1cae70e5cfae', 411);

-- Changeset db.changelog-1.2.xml::add-relationship-between-worker-and-user::mrego::(Checksum: 3:c1327b421dab02ba46646e25ce3033f0)
-- Add column and constraints needed for relationship between worker and user
ALTER TABLE worker ADD user_id BIGINT;

ALTER TABLE worker ADD CONSTRAINT worker_user_id_key UNIQUE (user_id);

ALTER TABLE worker ADD CONSTRAINT worker_user_fkey FOREIGN KEY (user_id) REFERENCES user_table (id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add column and constraints needed for relationship between worker and user', NOW(), 'Add Column, Add Unique Constraint, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-relationship-between-worker-and-user', '2.0.5', '3:c1327b421dab02ba46646e25ce3033f0', 412);

-- Changeset db.changelog-1.2.xml::add-monthly_timesheets_type_of_work_hours-to-configuration::mrego::(Checksum: 3:1fba4f4fa3f9838dcecc9f4c3f03adde)
-- Add new column monthly_timesheets_type_of_work_hours to
--             configuration table.
ALTER TABLE configuration ADD monthly_timesheets_type_of_work_hours BIGINT;

ALTER TABLE configuration ADD CONSTRAINT configuration_type_of_work_hours_fkey FOREIGN KEY (monthly_timesheets_type_of_work_hours) REFERENCES type_of_work_hours (id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column monthly_timesheets_type_of_work_hours to
            configuration table.', NOW(), 'Add Column, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-monthly_timesheets_type_of_work_hours-to-configuration', '2.0.5', '3:1fba4f4fa3f9838dcecc9f4c3f03adde', 413);

-- Changeset db.changelog-1.2.xml::add-new-column-personal-to-expense_sheet-table::mrego::(Checksum: 3:10bc5bda8b237a316785be725d7be1e3)
-- Add new column personal with default value FALSE to expense_sheet
--             table
ALTER TABLE expense_sheet ADD personal BOOLEAN;

ALTER TABLE expense_sheet ALTER COLUMN  personal SET DEFAULT FALSE;

UPDATE expense_sheet SET personal = 'FALSE' WHERE personal IS NULL;

ALTER TABLE expense_sheet ALTER COLUMN  personal SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column personal with default value FALSE to expense_sheet
            table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-personal-to-expense_sheet-table', '2.0.5', '3:10bc5bda8b237a316785be725d7be1e3', 414);

-- Changeset db.changelog-1.2.xml::add-new-column-changed_default_wssubcontracting_password::mrego::(Checksum: 3:013b7f1448a1110847cf286f1413f035)
-- Add new column changed_default_wssubcontracting_password with
--             default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_wssubcontracting_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_wssubcontracting_password SET DEFAULT FALSE;

UPDATE configuration SET changed_default_wssubcontracting_password = 'FALSE' WHERE changed_default_wssubcontracting_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_wssubcontracting_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column changed_default_wssubcontracting_password with
            default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-changed_default_wssubcontracting_password', '2.0.5', '3:013b7f1448a1110847cf286f1413f035', 415);

-- Changeset db.changelog-1.2.xml::rename-column-elt-in-roles_table-to-role::mrego::(Checksum: 3:776a769c3f1a794f6bc4435676322d25)
-- Rename column elt in roles_table to role
ALTER TABLE roles_table RENAME COLUMN elt TO role;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename column elt in roles_table to role', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-elt-in-roles_table-to-role', '2.0.5', '3:776a769c3f1a794f6bc4435676322d25', 416);

-- Changeset db.changelog-1.2.xml::rename-roles-in-roles_table::mrego::(Checksum: 3:096ffd842b1b2b6ada758528f1315a4f)
-- Rename roles in roles_table
UPDATE roles_table SET role = 'ROLE_SUPERUSER' WHERE role='ROLE_ADMINISTRATION';

UPDATE roles_table SET role = 'ROLE_READ_ALL_PROJECTS' WHERE role='ROLE_READ_ALL_ORDERS';

UPDATE roles_table SET role = 'ROLE_EDIT_ALL_PROJECTS' WHERE role='ROLE_EDIT_ALL_ORDERS';

UPDATE roles_table SET role = 'ROLE_CREATE_PROJECTS' WHERE role='ROLE_CREATE_ORDER';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename roles in roles_table', NOW(), 'Update Data (x4)', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-roles-in-roles_table', '2.0.5', '3:096ffd842b1b2b6ada758528f1315a4f', 417);

-- Changeset db.changelog-1.2.xml::rename-column-elt-in-profile_roles-to-role::mrego::(Checksum: 3:8696c001929a49d0958e563ec6070ee8)
-- Rename column elt in profile_roles to role
ALTER TABLE profile_roles RENAME COLUMN elt TO role;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename column elt in profile_roles to role', NOW(), 'Rename Column', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-column-elt-in-profile_roles-to-role', '2.0.5', '3:8696c001929a49d0958e563ec6070ee8', 418);

-- Changeset db.changelog-1.2.xml::rename-roles-in-profile_roles::mrego::(Checksum: 3:9c1e100911e9b284330a5aa3589984e5)
-- Rename roles in profile_roles
UPDATE profile_roles SET role = 'ROLE_SUPERUSER' WHERE role='ROLE_ADMINISTRATION';

UPDATE profile_roles SET role = 'ROLE_READ_ALL_PROJECTS' WHERE role='ROLE_READ_ALL_ORDERS';

UPDATE profile_roles SET role = 'ROLE_EDIT_ALL_PROJECTS' WHERE role='ROLE_EDIT_ALL_ORDERS';

UPDATE profile_roles SET role = 'ROLE_CREATE_PROJECTS' WHERE role='ROLE_CREATE_ORDER';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename roles in profile_roles', NOW(), 'Update Data (x4)', 'EXECUTED', 'db.changelog-1.2.xml', 'rename-roles-in-profile_roles', '2.0.5', '3:9c1e100911e9b284330a5aa3589984e5', 419);

-- Changeset db.changelog-1.2.xml::drop-column-changed_default_user_password-in-configuration::mrego::(Checksum: 3:2468aba8b41e0534a2b163e860dea252)
-- Drop column code in configuration table
ALTER TABLE configuration DROP COLUMN changed_default_user_password;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Drop column code in configuration table', NOW(), 'Drop Column', 'EXECUTED', 'db.changelog-1.2.xml', 'drop-column-changed_default_user_password-in-configuration', '2.0.5', '3:2468aba8b41e0534a2b163e860dea252', 420);

-- Changeset db.changelog-1.2.xml::add-new-column-changed_default_manager_password::mrego::(Checksum: 3:6f3d2474a8785e6a221a0e2b3f098a73)
-- Add new column changed_default_manager_password with
--             default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_manager_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_manager_password SET DEFAULT FALSE;

UPDATE configuration SET changed_default_manager_password = 'FALSE' WHERE changed_default_manager_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_manager_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column changed_default_manager_password with
            default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-changed_default_manager_password', '2.0.5', '3:6f3d2474a8785e6a221a0e2b3f098a73', 421);

-- Changeset db.changelog-1.2.xml::add-new-column-changed_default_hresources_password::mrego::(Checksum: 3:0d70382a0e68da8f6c7835212988162b)
-- Add new column changed_default_hresources_password with
--             default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_hresources_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_hresources_password SET DEFAULT FALSE;

UPDATE configuration SET changed_default_hresources_password = 'FALSE' WHERE changed_default_hresources_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_hresources_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column changed_default_hresources_password with
            default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-changed_default_hresources_password', '2.0.5', '3:0d70382a0e68da8f6c7835212988162b', 422);

-- Changeset db.changelog-1.2.xml::add-new-column-changed_default_outsourcing_password::mrego::(Checksum: 3:f72b604280d98a102dc357ad9ef71b26)
-- Add new column changed_default_outsourcing_password with
--             default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_outsourcing_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_outsourcing_password SET DEFAULT FALSE;

UPDATE configuration SET changed_default_outsourcing_password = 'FALSE' WHERE changed_default_outsourcing_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_outsourcing_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column changed_default_outsourcing_password with
            default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-changed_default_outsourcing_password', '2.0.5', '3:f72b604280d98a102dc357ad9ef71b26', 423);

-- Changeset db.changelog-1.2.xml::add-new-column-changed_default_reports_password::mrego::(Checksum: 3:f4fdaac87e8d1d2246ac482544268dc8)
-- Add new column changed_default_reports_password with
--             default value FALSE to configuration table
ALTER TABLE configuration ADD changed_default_reports_password BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  changed_default_reports_password SET DEFAULT FALSE;

UPDATE configuration SET changed_default_reports_password = 'FALSE' WHERE changed_default_reports_password IS NULL;

ALTER TABLE configuration ALTER COLUMN  changed_default_reports_password SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column changed_default_reports_password with
            default value FALSE to configuration table', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.2.xml', 'add-new-column-changed_default_reports_password', '2.0.5', '3:f4fdaac87e8d1d2246ac482544268dc8', 424);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.3.1
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 10/15/12 1:43 PM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0.5
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.3.xml::change-column-notes-in-task_element-to-text::jaragunde::(Checksum: 3:43aa8b1c00d2eb37547f3a6c49fb4023)
-- Change column notes in task_element to TEXT
ALTER TABLE task_element ALTER COLUMN notes TYPE TEXT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('jaragunde', 'Change column notes in task_element to TEXT', NOW(), 'Modify data type', 'EXECUTED', 'db.changelog-1.3.xml', 'change-column-notes-in-task_element-to-text', '2.0.5', '3:43aa8b1c00d2eb37547f3a6c49fb4023', 425);

-- Changeset db.changelog-1.3.xml::update-work_report_type-name-to-personal-timehseets::mrego::(Checksum: 3:b6bca02ba95171a212ead3704760b41d)
-- Update work_report_type name from "Monthly timesheets" to "Personal
--             timehsheets"
UPDATE work_report_type SET name = 'Personal timesheets' WHERE name='Monthly timesheets';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Update work_report_type name from "Monthly timesheets" to "Personal
            timehsheets"', NOW(), 'Update Data', 'EXECUTED', 'db.changelog-1.3.xml', 'update-work_report_type-name-to-personal-timehseets', '2.0.5', '3:b6bca02ba95171a212ead3704760b41d', 426);

-- Changeset db.changelog-1.3.xml::add-personal_timesheets_periodicity-column-to-configuration::mrego::(Checksum: 3:bcb66fc0ee64a06c7aeee7df6a8c64d1)
-- Add personal_timesheets_periodicity column to configuration
ALTER TABLE configuration ADD personal_timesheets_periodicity INT;

UPDATE configuration SET personal_timesheets_periodicity = '0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add personal_timesheets_periodicity column to configuration', NOW(), 'Add Column, Update Data', 'EXECUTED', 'db.changelog-1.3.xml', 'add-personal_timesheets_periodicity-column-to-configuration', '2.0.5', '3:bcb66fc0ee64a06c7aeee7df6a8c64d1', 427);

-- Changeset db.changelog-1.3.xml::rename-column-from-monthly-to-personal-in-configuration::mrego::(Checksum: 3:21f778d292e09ef087005888af1f7f15)
-- Rename column monthly_timesheets_type_of_work_hours to
--             personal_timesheets_type_of_work_hours in configuration table
ALTER TABLE configuration DROP CONSTRAINT configuration_type_of_work_hours_fkey;

ALTER TABLE configuration RENAME COLUMN monthly_timesheets_type_of_work_hours TO personal_timesheets_type_of_work_hours;

ALTER TABLE configuration ADD CONSTRAINT configuration_type_of_work_hours_fkey FOREIGN KEY (personal_timesheets_type_of_work_hours) REFERENCES type_of_work_hours (id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Rename column monthly_timesheets_type_of_work_hours to
            personal_timesheets_type_of_work_hours in configuration table', NOW(), 'Drop Foreign Key Constraint, Rename Column, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'rename-column-from-monthly-to-personal-in-configuration', '2.0.5', '3:21f778d292e09ef087005888af1f7f15', 428);

-- Changeset db.changelog-1.3.xml::add-max_users-and-max_resources-columns-to-configuration::mrego::(Checksum: 3:e098fa833f01deb6447f715e6c3dd5ff)
-- Add max_users and max_resources columns to configuration
ALTER TABLE configuration ADD max_users INT;

ALTER TABLE configuration ADD max_resources INT;

UPDATE configuration SET max_users = '0';

UPDATE configuration SET max_resources = '0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add max_users and max_resources columns to configuration', NOW(), 'Add Column (x2), Update Data (x2)', 'EXECUTED', 'db.changelog-1.3.xml', 'add-max_users-and-max_resources-columns-to-configuration', '2.0.5', '3:e098fa833f01deb6447f715e6c3dd5ff', 429);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.3.2
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 11/28/12 4:28 PM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0.5
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.3.xml::add-columns-first-and-last-timesheet_date-to-sum_charged_effort::mrego::(Checksum: 3:44643d4a95daa8bfb8eb87350ca09b9c)
-- Add columns first_timesheet_date and last_timesheet_date to
--             sum_charged_effort table
ALTER TABLE sum_charged_effort ADD first_timesheet_date TIMESTAMP WITH TIME ZONE;

ALTER TABLE sum_charged_effort ADD last_timesheet_date TIMESTAMP WITH TIME ZONE;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add columns first_timesheet_date and last_timesheet_date to
            sum_charged_effort table', NOW(), 'Add Column (x2)', 'EXECUTED', 'db.changelog-1.3.xml', 'add-columns-first-and-last-timesheet_date-to-sum_charged_effort', '2.0.5', '3:44643d4a95daa8bfb8eb87350ca09b9c', 430);

-- Changeset db.changelog-1.3.xml::add-new-column-read_only-to-advance_type::mrego::(Checksum: 3:f188be8e7cb36ffc378ee1bbb1efe4c3)
-- Add new column read_only with default value FALSE to advance_type
--             table.
ALTER TABLE advance_type ADD read_only BOOLEAN;

ALTER TABLE advance_type ALTER COLUMN  read_only SET DEFAULT FALSE;

UPDATE advance_type SET read_only = 'FALSE' WHERE read_only IS NULL;

ALTER TABLE advance_type ALTER COLUMN  read_only SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column read_only with default value FALSE to advance_type
            table.', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-new-column-read_only-to-advance_type', '2.0.5', '3:f188be8e7cb36ffc378ee1bbb1efe4c3', 431);

-- Changeset db.changelog-1.3.xml::add-new-column-finished-to-work_report_line::mrego::(Checksum: 3:4179c949aced25d73e640b35729f5dc3)
-- Add new column finished with default value FALSE to
--             work_report_line table.
ALTER TABLE work_report_line ADD finished BOOLEAN;

ALTER TABLE work_report_line ALTER COLUMN  finished SET DEFAULT FALSE;

UPDATE work_report_line SET finished = 'FALSE' WHERE finished IS NULL;

ALTER TABLE work_report_line ALTER COLUMN  finished SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column finished with default value FALSE to
            work_report_line table.', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-new-column-finished-to-work_report_line', '2.0.5', '3:4179c949aced25d73e640b35729f5dc3', 432);

-- Changeset db.changelog-1.3.xml::add-new-column-finished_timesheets-to-sum_charged_effort::mrego::(Checksum: 3:2e0afbe29878247b314daf44d13e7953)
-- Add new column finished_timesheets with default value FALSE to
--             sum_charged_effort table.
ALTER TABLE sum_charged_effort ADD finished_timesheets BOOLEAN;

ALTER TABLE sum_charged_effort ALTER COLUMN  finished_timesheets SET DEFAULT FALSE;

UPDATE sum_charged_effort SET finished_timesheets = 'FALSE' WHERE finished_timesheets IS NULL;

ALTER TABLE sum_charged_effort ALTER COLUMN  finished_timesheets SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column finished_timesheets with default value FALSE to
            sum_charged_effort table.', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-new-column-finished_timesheets-to-sum_charged_effort', '2.0.5', '3:2e0afbe29878247b314daf44d13e7953', 433);

-- Changeset db.changelog-1.3.xml::add-new-column-updated_from_timesheets-to-task_element::mrego::(Checksum: 3:8e277ed572a72c08c2d637c171f75faa)
-- Add new column updated_from_timesheets with default value FALSE to
--             task_element table.
ALTER TABLE task_element ADD updated_from_timesheets BOOLEAN;

ALTER TABLE task_element ALTER COLUMN  updated_from_timesheets SET DEFAULT FALSE;

UPDATE task_element SET updated_from_timesheets = 'FALSE' WHERE updated_from_timesheets IS NULL;

ALTER TABLE task_element ALTER COLUMN  updated_from_timesheets SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add new column updated_from_timesheets with default value FALSE to
            task_element table.', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-new-column-updated_from_timesheets-to-task_element', '2.0.5', '3:8e277ed572a72c08c2d637c171f75faa', 434);

-- Changeset db.changelog-1.3.xml::update-status-values-in-order_table::mrego::(Checksum: 3:3a3f781e8ff867ecb6f049b95d2d36f6)
-- Updating status values in order_table
UPDATE order_table SET state = '8' WHERE state='6';

UPDATE order_table SET state = '7' WHERE state='4';

UPDATE order_table SET state = '6' WHERE state='3';

UPDATE order_table SET state = '4' WHERE state='2';

UPDATE order_table SET state = '3' WHERE state='1';

UPDATE order_table SET state = '2' WHERE state='5';

UPDATE order_table SET state = '1' WHERE state='0';

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Updating status values in order_table', NOW(), 'Update Data (x7)', 'EXECUTED', 'db.changelog-1.3.xml', 'update-status-values-in-order_table', '2.0.5', '3:3a3f781e8ff867ecb6f049b95d2d36f6', 435);

-- Changeset db.changelog-1.3.xml::drop-unique-constraint-code-in-order_element::mrego::(Checksum: 3:a4fafb8fe670f6e03b1fe0aab68eeefe)
-- Drop unique constraint for code in order_element table
ALTER TABLE order_element DROP CONSTRAINT order_element_code_key;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Drop unique constraint for code in order_element table', NOW(), 'Drop Unique Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'drop-unique-constraint-code-in-order_element', '2.0.5', '3:a4fafb8fe670f6e03b1fe0aab68eeefe', 436);

-- Changeset db.changelog-1.3.xml::add-seconds_planning_warning-column-to-configuration::mrego::(Checksum: 3:812805ebd72a401ecab1d002ae7eff36)
-- Add seconds_planning_warning column to configuration
ALTER TABLE configuration ADD seconds_planning_warning INT;

UPDATE configuration SET seconds_planning_warning = '30';

UPDATE configuration SET seconds_planning_warning = '30' WHERE seconds_planning_warning IS NULL;

ALTER TABLE configuration ALTER COLUMN  seconds_planning_warning SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('mrego', 'Add seconds_planning_warning column to configuration', NOW(), 'Add Column, Update Data, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-seconds_planning_warning-column-to-configuration', '2.0.5', '3:812805ebd72a401ecab1d002ae7eff36', 437);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.4.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 4/29/13 6:01 PM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 2.0.5
-- *********************************************************************

-- Lock Database
-- Changeset db.changelog-1.3.xml::add-updatable-boolean-column-to-calendar-exception-type::acarro::(Checksum: 3:0429ddb8ec22c38600f3e3b25bafeb20)
-- Add new updatable boolean column to calendar exception type with default value TRUE
ALTER TABLE calendar_exception_type ADD updatable BOOLEAN;

ALTER TABLE calendar_exception_type ALTER COLUMN  updatable SET DEFAULT TRUE;

UPDATE calendar_exception_type SET updatable = 'TRUE' WHERE updatable IS NULL;

ALTER TABLE calendar_exception_type ALTER COLUMN  updatable SET NOT NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('acarro', 'Add new updatable boolean column to calendar exception type with default value TRUE', NOW(), 'Add Column, Add Default Value, Add Not-Null Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-updatable-boolean-column-to-calendar-exception-type', '2.0.5', '3:0429ddb8ec22c38600f3e3b25bafeb20', 438);

-- Changeset db.changelog-1.3.xml::create-table-order-sync-info::miciele::(Checksum: 3:45e2401780cf78ac5187cd61a604bb4a)
-- Create new table order_sync_info
CREATE TABLE order_sync_info (id BIGINT NOT NULL, "version" BIGINT NOT NULL, last_sync_date TIMESTAMP WITH TIME ZONE NOT NULL, key VARCHAR(255) NOT NULL, connector_name VARCHAR(255) NOT NULL, order_element_id BIGINT, CONSTRAINT PK_ORDER_SYNC_INFO PRIMARY KEY (id));

ALTER TABLE order_sync_info ADD CONSTRAINT order_sync_info_order_table_fkey FOREIGN KEY (order_element_id) REFERENCES order_table (order_element_id);

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('miciele', 'Create new table order_sync_info', NOW(), 'Create Table, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'create-table-order-sync-info', '2.0.5', '3:45e2401780cf78ac5187cd61a604bb4a', 439);

-- Changeset db.changelog-1.3.xml::create-tables-related-to-connector-entity::rego::(Checksum: 3:8d5a3216a2cc1e0113a4b8b080ddfd3b)
-- Create tables related to Connector entity
CREATE TABLE connector (id bigserial NOT NULL, "version" BIGINT NOT NULL, name VARCHAR(255) NOT NULL, CONSTRAINT connector_pkey PRIMARY KEY (id));

CREATE TABLE connector_property (connector_id BIGINT NOT NULL, connector_property_position INT NOT NULL, property_key VARCHAR(255) NOT NULL, property_value VARCHAR(255));

ALTER TABLE connector_property ADD CONSTRAINT connector_property_pkey PRIMARY KEY (connector_id, connector_property_position);

ALTER TABLE connector_property ADD CONSTRAINT connector_property_connector_id_fkey FOREIGN KEY (connector_id) REFERENCES connector (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('rego', 'Create tables related to Connector entity', NOW(), 'Create Table (x2), Add Primary Key, Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'create-tables-related-to-connector-entity', '2.0.5', '3:8d5a3216a2cc1e0113a4b8b080ddfd3b', 440);

-- Changeset db.changelog-1.3.xml::create-table-job-scheduler-configuration::miciele::(Checksum: 3:0a1913a9dbb8d4504471417d1fafba5b)
-- Create new table job_scheduler_configuration
CREATE TABLE job_scheduler_configuration (id bigserial NOT NULL, "version" BIGINT NOT NULL, job_group VARCHAR(255) NOT NULL, job_name VARCHAR(255) NOT NULL, cron_expression VARCHAR(255) NOT NULL, job_class_name INT NOT NULL, connector_name VARCHAR(255), schedule BOOLEAN, CONSTRAINT PK_JOB_SCHEDULER_CONFIGURATION PRIMARY KEY (id));

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('miciele', 'Create new table job_scheduler_configuration', NOW(), 'Create Table', 'EXECUTED', 'db.changelog-1.3.xml', 'create-table-job-scheduler-configuration', '2.0.5', '3:0a1913a9dbb8d4504471417d1fafba5b', 441);

-- Changeset db.changelog-1.3.xml::add-projects_filter_period_since-column-to-user_table::ltilve::(Checksum: 3:655c5015d27f29176924aea0a75c074c)
-- Add column to store project filtering interval 'range since' parameter
ALTER TABLE user_table ADD projects_filter_period_since INT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store project filtering interval ''range since'' parameter', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-projects_filter_period_since-column-to-user_table', '2.0.5', '3:655c5015d27f29176924aea0a75c074c', 442);

-- Changeset db.changelog-1.3.xml::add-projects_filter_period_to-column-to-user_table::ltilve::(Checksum: 3:eeed9d2d9655d8ca97db00f088e08a3e)
-- Add column to store project filtering interval 'range to' parameter
ALTER TABLE user_table ADD projects_filter_period_to INT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store project filtering interval ''range to'' parameter', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-projects_filter_period_to-column-to-user_table', '2.0.5', '3:eeed9d2d9655d8ca97db00f088e08a3e', 443);

-- Changeset db.changelog-1.3.xml::add-resources_load_filter_period_since-column-to-user_table::ltilve::(Checksum: 3:7bcf0c413c87bcf38b4c61689f5246fa)
-- Add column to store resources load filtering interval 'range since' parameter
ALTER TABLE user_table ADD resources_load_filter_period_since INT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store resources load filtering interval ''range since'' parameter', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-resources_load_filter_period_since-column-to-user_table', '2.0.5', '3:7bcf0c413c87bcf38b4c61689f5246fa', 444);

-- Changeset db.changelog-1.3.xml::add-resources_load_filter_period_to-column-to-user_table::ltilve::(Checksum: 3:4c4bbe1465a2536bd808e2efe000805d)
-- Add column to store resources load filtering interval 'range to' parameter
ALTER TABLE user_table ADD resources_load_filter_period_to INT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store resources load filtering interval ''range to'' parameter', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-resources_load_filter_period_to-column-to-user_table', '2.0.5', '3:4c4bbe1465a2536bd808e2efe000805d', 445);

-- Changeset db.changelog-1.3.xml::add-projects_filter_label_id-column-to-user_table::ltilve::(Checksum: 3:7f70067dbcb427e6c7715d6fd00ff21e)
-- Add column to store label reference for default project filtering
ALTER TABLE user_table ADD projects_filter_label_id BIGINT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store label reference for default project filtering', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-projects_filter_label_id-column-to-user_table', '2.0.5', '3:7f70067dbcb427e6c7715d6fd00ff21e', 446);

-- Changeset db.changelog-1.3.xml::add-resources_load_filter_criterion_id-column-to-user_table::ltilve::(Checksum: 3:2c80e7f49b55cd5644966b3d2b4c3b36)
-- Add column to store criterion reference for default resources load filtering
ALTER TABLE user_table ADD resources_load_filter_criterion_id BIGINT;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add column to store criterion reference for default resources load filtering', NOW(), 'Add Column', 'EXECUTED', 'db.changelog-1.3.xml', 'add-resources_load_filter_criterion_id-column-to-user_table', '2.0.5', '3:2c80e7f49b55cd5644966b3d2b4c3b36', 447);

-- Changeset db.changelog-1.3.xml::add-projects_filter_label_id-fk-to-user_table::ltilve::(Checksum: 3:d4eeb6e123ec468bb3168d7b97184f4b)
-- Add Foreign Key constraint on label reference
ALTER TABLE user_table ADD CONSTRAINT user_label_fkey FOREIGN KEY (projects_filter_label_id) REFERENCES label (id) ON DELETE SET NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add Foreign Key constraint on label reference', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-projects_filter_label_id-fk-to-user_table', '2.0.5', '3:d4eeb6e123ec468bb3168d7b97184f4b', 448);

-- Changeset db.changelog-1.3.xml::add-resources_load_filter_fk_id-column-to-user_table::ltilve::(Checksum: 3:ba6c3438f5e60e881e96f7c6b768b1c9)
-- Add Foreign Key constraint on criterion reference
ALTER TABLE user_table ADD CONSTRAINT user_criterion_fkey FOREIGN KEY (resources_load_filter_criterion_id) REFERENCES criterion (id) ON DELETE SET NULL;

INSERT INTO databasechangelog (AUTHOR, COMMENTS, DATEEXECUTED, DESCRIPTION, EXECTYPE, FILENAME, ID, LIQUIBASE, MD5SUM, ORDEREXECUTED) VALUES ('ltilve', 'Add Foreign Key constraint on criterion reference', NOW(), 'Add Foreign Key Constraint', 'EXECUTED', 'db.changelog-1.3.xml', 'add-resources_load_filter_fk_id-column-to-user_table', '2.0.5', '3:ba6c3438f5e60e881e96f7c6b768b1c9', 449);

-- Release Database Lock
-- Release Database Lock


-- *********************************************************************
-- Update Database Script - LibrePlan 1.6.0
-- *********************************************************************
-- Change Log: src/main/resources/db.changelog.xml
-- Ran at: 5/5/26, 3:34 PM
-- Against: libreplan@jdbc:postgresql://localhost/libreplandev
-- Liquibase version: 3.5.1
-- *********************************************************************

-- Lock Database
UPDATE databasechangeloglock SET LOCKED = TRUE, LOCKEDBY = '10.1.1.157 (10.1.1.157)', LOCKGRANTED = '2026-05-05 15:34:52.010' WHERE ID = 1 AND LOCKED = FALSE;

-- Adding missing databasechangelog.contexts column
-- Adding missing databasechangelog.labels column
-- Adding missing databasechangelog.deployment_id column
-- DatabaseChangeLog checksums are an incompatible version.  Setting them to null so they will be updated on next database update
ALTER TABLE databasechangelog ADD CONTEXTS VARCHAR(255);

ALTER TABLE databasechangelog ADD LABELS VARCHAR(255);

ALTER TABLE databasechangelog ADD DEPLOYMENT_ID VARCHAR(10);

UPDATE databasechangelog SET MD5SUM = NULL;

UPDATE databasechangelog SET MD5SUM = '7:c876c4e0a27ffe72ba5556d5eae0bfe5' WHERE ID = 'initial-database-creation-1' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c83e51b32f6995e952b88cf7fbc4861' WHERE ID = 'initial-database-creation-2' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5990e3c6b56c5fc7b79a182d69c68eda' WHERE ID = 'initial-database-creation-3' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71162c1d45926536f2edbe6bd7784290' WHERE ID = 'initial-database-creation-4' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d4fac3a9bc3339fff49f602bc70da852' WHERE ID = 'initial-database-creation-5' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac0eecfd849cb95ed36d4d2ec615d7cd' WHERE ID = 'initial-database-creation-6' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b224b2760976a7239d00b314c0745a48' WHERE ID = 'initial-database-creation-7' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d376eb3af41cbc036fd8633abb83330d' WHERE ID = 'initial-database-creation-8' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b24c221f18f736787ae1c238a82f3b6' WHERE ID = 'initial-database-creation-9' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:eac52bdcf22b74a3e4b35378e4366d95' WHERE ID = 'initial-database-creation-10' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:253a78909b2da8b91a48a0eb1a391046' WHERE ID = 'initial-database-creation-11' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1ff25e2e39a1615c59d2ad6829d43f86' WHERE ID = 'initial-database-creation-12' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ddefbfd2945d38ad8eedfe1d3d8eace' WHERE ID = 'initial-database-creation-13' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cbf7a15d47cf91b2ea16693fc31f6d35' WHERE ID = 'initial-database-creation-14' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f533d3b17b1767bb831671f422d5d712' WHERE ID = 'initial-database-creation-15' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d00836ae0490befe0711eebb6d7fb9ed' WHERE ID = 'initial-database-creation-16' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3f4e5d3157d2c98000b24540bc394bbc' WHERE ID = 'initial-database-creation-17' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d8e619ba0dfe3cbf2f76b059a9fffea9' WHERE ID = 'initial-database-creation-18' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8aa1f0d696aaf5e78c44216091b93b7' WHERE ID = 'initial-database-creation-19' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6cb1d7003b37e16d05aeeb36f85cb7bf' WHERE ID = 'initial-database-creation-20' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:50357a7b2502eb022425abf82bf1ee09' WHERE ID = 'initial-database-creation-21' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6567c5f67eaac970e9bf7acfbf322cb7' WHERE ID = 'initial-database-creation-22' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9190893bcb444e0f3e562659687e50e' WHERE ID = 'initial-database-creation-23' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7b259ba0b8d96de0c0fb8ca4e5912a82' WHERE ID = 'initial-database-creation-24' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e38d4f2c9a0db0b4b5716443709278bf' WHERE ID = 'initial-database-creation-25' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:572f94b97ca28310e924a4906dabdb09' WHERE ID = 'initial-database-creation-26' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:02cd686ccd0cc927fe0d0541d92c14fc' WHERE ID = 'initial-database-creation-27' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9e5e78af0a5917ff1b6643a6a04479dc' WHERE ID = 'initial-database-creation-28' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c7be545a4ca6887ec51e61b4408410aa' WHERE ID = 'initial-database-creation-29' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e410ebbdf976ad59421a7016d66b281' WHERE ID = 'initial-database-creation-30' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:93454d31986fdb7e5e211710162cf880' WHERE ID = 'initial-database-creation-31' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:56cfab3c01f3e298b9cca74448b5f370' WHERE ID = 'initial-database-creation-32' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bc40cda69ccc16bdff0f5063c3eaf3d2' WHERE ID = 'initial-database-creation-33' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c37f547c3929bb2fcef734f1be3830e0' WHERE ID = 'initial-database-creation-34' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a08f3a7fa5bab73c6b17c6cab3e39a7' WHERE ID = 'initial-database-creation-35' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7beb4cc38f3c10519793ebcc09933a87' WHERE ID = 'initial-database-creation-36' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:08c1b624461455168d84f1f8c666522c' WHERE ID = 'initial-database-creation-37' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:67fcbf5e2867f90bf6a380b14b362a99' WHERE ID = 'initial-database-creation-38' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:eff83492830ae44fbb04b1585226366c' WHERE ID = 'initial-database-creation-39' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7d146c29bdfc7deb69a3a8d4564ccfb6' WHERE ID = 'initial-database-creation-40' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75b77edba12165335c1a2a42cffff954' WHERE ID = 'initial-database-creation-41' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1c2c969e0f3f4f6ea2f005891d99d5e7' WHERE ID = 'initial-database-creation-42' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7b76cbd6e5afd9716bafa1fa7c0f5e5c' WHERE ID = 'initial-database-creation-43' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2050fac2c95659870245acef849a96be' WHERE ID = 'initial-database-creation-44' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9e16482312bd1b0ba6a32258bdc8a5ed' WHERE ID = 'initial-database-creation-45' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c6408617eae35891c25db4344817654' WHERE ID = 'initial-database-creation-46' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74eb67bd11e9af1d4d3418d505c50302' WHERE ID = 'initial-database-creation-47' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0a77bae4bbfae6527ff1076000f40200' WHERE ID = 'initial-database-creation-48' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aec4b39ef8f602d8cc68b27a46011128' WHERE ID = 'initial-database-creation-49' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ee2491a168556daa5fe3e00e026eb1d9' WHERE ID = 'initial-database-creation-50' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:877608a5c714d28ca47cdb9133229aea' WHERE ID = 'initial-database-creation-51' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ed5197580d5b0436b267b7ef8c9584e7' WHERE ID = 'initial-database-creation-52' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a28766c7a8382b9f725412fc693d012c' WHERE ID = 'initial-database-creation-53' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4031081e5d475143f922aa937251c1b3' WHERE ID = 'initial-database-creation-54' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5420a1febf60fcf34c1f3419dd0d8796' WHERE ID = 'initial-database-creation-55' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a4e9dfdea3e6810df546a7c4352901a5' WHERE ID = 'initial-database-creation-56' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cdae434bf5e3a24e513f1c2a73ab905c' WHERE ID = 'initial-database-creation-57' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b62df5b413fc7a5cd41afac52eb65c69' WHERE ID = 'initial-database-creation-58' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6152ff946c83b1963c22218ed058a58' WHERE ID = 'initial-database-creation-59' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49f8a4e773d5908ed91aa4059b4b5f70' WHERE ID = 'initial-database-creation-60' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ffcc0c6de212b58184482cc2105ea76d' WHERE ID = 'initial-database-creation-61' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b7f3fb7b70e058620a39b66463181ec3' WHERE ID = 'initial-database-creation-62' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f41a7692dea93ffd6075318bc25fa2b' WHERE ID = 'initial-database-creation-63' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf613e17e982b0cee3134c42ae3752c7' WHERE ID = 'initial-database-creation-64' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bb4a15f4a61e4b1acad041c4b47eccc9' WHERE ID = 'initial-database-creation-65' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:52c6468498f1b80f2087e677b130ffbe' WHERE ID = 'initial-database-creation-66' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c6f0eb79e94dca32f2bc6f095c4d779c' WHERE ID = 'initial-database-creation-67' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:62920c6eb78ca73eff50169cdf53263b' WHERE ID = 'initial-database-creation-68' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7f18a039913815d957dabbd08ee65c0b' WHERE ID = 'initial-database-creation-69' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bcb0a6e737ee430fbf69d06fc5945612' WHERE ID = 'initial-database-creation-70' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60194d5f385a3c70843fb0c00619df8b' WHERE ID = 'initial-database-creation-71' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:db727f711e3c605db9a9efcd248421a7' WHERE ID = 'initial-database-creation-72' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72a90512db0c6d182321df90e1705f81' WHERE ID = 'initial-database-creation-73' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:41b345f4ad1d8d3beace95711ec50d06' WHERE ID = 'initial-database-creation-74' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8113a9009c2d8e2744b738b3010b7aff' WHERE ID = 'initial-database-creation-75' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8371b5c1a7d45a481e3b994df9d4118' WHERE ID = 'initial-database-creation-76' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6fb883fa0e80e8c32bdfccf1e924f3d' WHERE ID = 'initial-database-creation-77' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:611880b6bc16964c7dcd1de7729f87f0' WHERE ID = 'initial-database-creation-78' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8da00cc25949c4ee11ac8151cfe60baf' WHERE ID = 'initial-database-creation-79' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:21b2509b8c7f1634dae49e9de4583f29' WHERE ID = 'initial-database-creation-80' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:19262e57b78f4882b455dfd1630133f8' WHERE ID = 'initial-database-creation-81' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:41fd61d39abd6408717438d962893bda' WHERE ID = 'initial-database-creation-82' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d2a60ce6b5b46f30b846b98a4a79a9f' WHERE ID = 'initial-database-creation-83' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:99053bd8d357d7fa78d9b34f58cd8bfc' WHERE ID = 'initial-database-creation-84' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:53156db218740c87c302a52ab7ca0cd8' WHERE ID = 'initial-database-creation-85' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d719a179c783b99743a9277ad1767259' WHERE ID = 'initial-database-creation-86' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:70fcde1b3c53fbe6653ea3ae9c1148bc' WHERE ID = 'initial-database-creation-87' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d55de8d5ecddf3d7677eba8c5811ce81' WHERE ID = 'initial-database-creation-88' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:61975c0baba81af1bfa8a5e9f89ddfd1' WHERE ID = 'initial-database-creation-89' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:76c48e40c6f49ed6f7c99da0daf0e3dd' WHERE ID = 'initial-database-creation-90' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a437bacc1ffdd3f3604faf2b69977315' WHERE ID = 'initial-database-creation-91' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60a90f3000f61848f2aef598f25d319e' WHERE ID = 'initial-database-creation-92' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:628688392578a1a35e55bbbb6c7a1173' WHERE ID = 'initial-database-creation-93' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8447b44dafa4caf3683a99c266abc1a' WHERE ID = 'initial-database-creation-94' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c633245357d51af0052eeff8f3a2c9b4' WHERE ID = 'initial-database-creation-95' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c3b1239a040718994f0aa8858bfd5358' WHERE ID = 'initial-database-creation-96' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:08ae22f51368438ba081cf2b8f4c5b25' WHERE ID = 'initial-database-creation-97' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:61584131fecdd101e38356f5c842d38c' WHERE ID = 'initial-database-creation-98' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:02ea7d1c3e103e7ef3d876ba39cb4c39' WHERE ID = 'initial-database-creation-99' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72ec93e4df6641ce30dce6ff2cfd6d49' WHERE ID = 'initial-database-creation-100' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:134b90e8425cae5c4ed9bb00e0adabf6' WHERE ID = 'initial-database-creation-101' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:083e7a433dd566f78fff8b328c84393d' WHERE ID = 'initial-database-creation-102' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0b1a0a695eff1fb1ffb1306cab40e6c6' WHERE ID = 'initial-database-creation-103' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:19b3f067b954d4966191940914c15b54' WHERE ID = 'initial-database-creation-104' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8507429c89d43653d565c7441a2e48f' WHERE ID = 'initial-database-creation-105' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c84666fe6786e1c657fcfc468e14e2a6' WHERE ID = 'initial-database-creation-106' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4bff38cadc30af45348fd6cc27d58741' WHERE ID = 'initial-database-creation-107' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5dc26ac7ce20ad635434baeb1429d767' WHERE ID = 'initial-database-creation-108' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:82d626c8efb7d038aed1bf6014af54aa' WHERE ID = 'initial-database-creation-109' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6fc8f2390a5531da00bcfe96a6d08d59' WHERE ID = 'initial-database-creation-110' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f4ae2701bcac4a13d0ed009279ace3e9' WHERE ID = 'initial-database-creation-111' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:67931aa6354d6e2da8f9fc351897c3d6' WHERE ID = 'initial-database-creation-112' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2d221d6f6341bbfee22bfecfbc9e2208' WHERE ID = 'initial-database-creation-113' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0174d4ca2607bf88a344bf333b2a62d7' WHERE ID = 'initial-database-creation-114' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d3fd61ded3114054c2bc70ff9b020a27' WHERE ID = 'initial-database-creation-115' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74bd4009e6824b7fa37388aa396f15b7' WHERE ID = 'initial-database-creation-116' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39e73895fa85b8e7a634f36a62fb0608' WHERE ID = 'initial-database-creation-117' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8c92e980355ee5046cbefa6c23d2859' WHERE ID = 'initial-database-creation-118' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:db4774011e84e8ec89c84f3702e0e20a' WHERE ID = 'initial-database-creation-119' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9197839a7ea946d1df8f581ac8c23d16' WHERE ID = 'initial-database-creation-120' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8d6e8f9f2aeabcce3ec67ab5b3006f05' WHERE ID = 'initial-database-creation-121' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9feca3418d53baaa0a888bf22288d653' WHERE ID = 'initial-database-creation-122' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:14155a36cf228f10badc3944a24cfef2' WHERE ID = 'initial-database-creation-123' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8ad737d404044c324f45da505426a62c' WHERE ID = 'initial-database-creation-124' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1de75651cad65c8a323ecbeb0652490f' WHERE ID = 'initial-database-creation-125' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7c2b7c5427a55a7fd1361f980f5d49fb' WHERE ID = 'initial-database-creation-126' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f9a01a21b40e29534d05b9547b40d9b7' WHERE ID = 'initial-database-creation-127' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e3d2bded12cbe9caf6a98703b6c28125' WHERE ID = 'initial-database-creation-128' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:94af761fcb6c01534f3444ade0cdef1a' WHERE ID = 'initial-database-creation-129' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f8f3d921e6550c94f2cdf278adcc260a' WHERE ID = 'initial-database-creation-130' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:114b9603d12b95505f6c4fc7d77003f0' WHERE ID = 'initial-database-creation-131' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b39b3f11ba9940b8d017e5ee2bab75b6' WHERE ID = 'initial-database-creation-132' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d146882b163babc6cad9aeacaf92face' WHERE ID = 'initial-database-creation-133' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4850ef61231f998019dcb20bc4d720d9' WHERE ID = 'initial-database-creation-134' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:249273531bb6b2d62b9f07e349eabee8' WHERE ID = 'initial-database-creation-135' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bcc8f8503697f36a7bc6b8be4826f019' WHERE ID = 'initial-database-creation-136' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4f16bf55801ba9bb64b6dc1e44707c71' WHERE ID = 'initial-database-creation-137' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac630995ea6daf1236c3abeb091cd0eb' WHERE ID = 'initial-database-creation-138' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2f7ab2eec2df73cc55c1724e020c952b' WHERE ID = 'initial-database-creation-139' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d802f20e3407cb13ec31d19edd63a6f0' WHERE ID = 'initial-database-creation-140' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8139ae9a8b8496a9e3f6cb341709d64d' WHERE ID = 'initial-database-creation-141' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:dd2682038f9c2e205bb3a1a6f9fb6d0f' WHERE ID = 'initial-database-creation-142' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4896204906fe5ebb89b8d84a65cb678d' WHERE ID = 'initial-database-creation-143' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5618c0a383ae8a575d159dd189736ccb' WHERE ID = 'initial-database-creation-144' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:92e150efdc9696b0f641d3032e3ec75c' WHERE ID = 'initial-database-creation-145' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b8b292ee53dbc4b5ab80fcd5a7f8ac9c' WHERE ID = 'initial-database-creation-146' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d30161a1bf9a4bbb3f981178462a20d4' WHERE ID = 'initial-database-creation-147' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5726807cc2bc216bfb989e02e619709b' WHERE ID = 'initial-database-creation-148' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cfb02098c33d5f245fa4fa56c824f6fe' WHERE ID = 'initial-database-creation-149' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ca7fa132c6d722dda3f77647ef6e8d5e' WHERE ID = 'initial-database-creation-150' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e7f320c260eb0793c712803eb587427f' WHERE ID = 'initial-database-creation-151' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:81772f418952b1387fc046a3c5480aaf' WHERE ID = 'initial-database-creation-152' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:94e09bdc2bbd102a2e932dab94c69d84' WHERE ID = 'initial-database-creation-153' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c58af5550db76b753e52d7ec1a07a09' WHERE ID = 'initial-database-creation-154' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e80fcb566092c13422815831ae6b6f2' WHERE ID = 'initial-database-creation-155' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:436a571caceb4ccbe80ba06dcab57928' WHERE ID = 'initial-database-creation-156' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:974070f2386769b7e6fa2e77d23865bd' WHERE ID = 'initial-database-creation-157' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c38da51c2821abbe261e519b7952a10' WHERE ID = 'initial-database-creation-158' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f07788a823bcb6ca67d61b3e8c0108c2' WHERE ID = 'initial-database-creation-159' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:90655049b1ef7ba903e196350e9d6db8' WHERE ID = 'initial-database-creation-160' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c864a003ebbea8c8307e063d59c20c48' WHERE ID = 'initial-database-creation-161' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6cf683d80e3e979894865de2dae9063e' WHERE ID = 'initial-database-creation-162' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:09b8fe9fa4be7cf449441f3e26a085c6' WHERE ID = 'initial-database-creation-163' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:48ef1226c21870f78811ec68ed0e81b2' WHERE ID = 'initial-database-creation-164' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:72d94c6a29e2cf59195247d2d438947e' WHERE ID = 'initial-database-creation-165' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c195b3090af1b50bb1adf9cc3e1b5c8c' WHERE ID = 'initial-database-creation-166' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4eb3b7f9c50bb5c70ed1dc8d81bd726c' WHERE ID = 'initial-database-creation-167' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:83140318dcef3897fef7a603854e1702' WHERE ID = 'initial-database-creation-168' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c5ae737dfa58bf5e820f37bf762df968' WHERE ID = 'initial-database-creation-169' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cc1fc6e891dbb353d76b0ce9aca84d7a' WHERE ID = 'initial-database-creation-170' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:178f67714db358b024fc804c5bf58c5a' WHERE ID = 'initial-database-creation-171' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a6998f6e0d718e5a65766a20b4a6029c' WHERE ID = 'initial-database-creation-172' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e046f86460794d241f7b508d8f6254ef' WHERE ID = 'initial-database-creation-173' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38e1b77cc9189c39fa12ed65f2cb81e1' WHERE ID = 'initial-database-creation-174' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49fef9a9ed08a2c4118c7688c7deb56d' WHERE ID = 'initial-database-creation-175' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d945215d04720e9976336b4a60cc6b6b' WHERE ID = 'initial-database-creation-176' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f14031ea0eca3449effa36744cddb412' WHERE ID = 'initial-database-creation-177' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fb461c8a099588d308f498df5aa8000d' WHERE ID = 'initial-database-creation-178' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6b9221fd7a1f70fc29cfabc9fb837a12' WHERE ID = 'initial-database-creation-179' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3c3456b3be4c25c8f0700e6be51d5488' WHERE ID = 'initial-database-creation-180' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:724929bfb0c75e19997ea44a9c083383' WHERE ID = 'initial-database-creation-181' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:60d0b8a0d67ca74952cfc6b7101eeeb3' WHERE ID = 'initial-database-creation-182' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:812a51b333663accc9df96b0542254d3' WHERE ID = 'initial-database-creation-183' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d9e8dcdf087837a9ecee198c25544752' WHERE ID = 'initial-database-creation-184' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:70ba3bc76eaac78df00e0d2a6199a7e5' WHERE ID = 'initial-database-creation-185' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7581900ff540444ec3ec897fc4bff388' WHERE ID = 'initial-database-creation-186' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c35db595b181e103d70aada445893a3a' WHERE ID = 'initial-database-creation-187' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71f03a5df75480894a4f36f960565f94' WHERE ID = 'initial-database-creation-188' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ddcc408342feac2415adf128804a1bc9' WHERE ID = 'initial-database-creation-189' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ab3c9f2d81ce0f7e98f2b59ec6f0a5b4' WHERE ID = 'initial-database-creation-190' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4d3cd217ab9654999bd53abddb3ccc69' WHERE ID = 'initial-database-creation-191' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ca4de353dd63831c33ed925f42f2df8e' WHERE ID = 'initial-database-creation-192' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d698454781950ce6f1bbf061fd7a61f2' WHERE ID = 'initial-database-creation-193' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e09436b7374965c248b05fe69d0bc7e' WHERE ID = 'initial-database-creation-194' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:36283b8a4501c81b28042c729fc50108' WHERE ID = 'initial-database-creation-195' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c9fde88a7ab5da60a5dc8f3f9547429' WHERE ID = 'initial-database-creation-196' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:945912c0c5ba6f29c8c3be4bba344e01' WHERE ID = 'initial-database-creation-197' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:506c20c5250c47a36385b18a4cd53f27' WHERE ID = 'initial-database-creation-198' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0e57750d5abb95c5bed60f1001bdd767' WHERE ID = 'initial-database-creation-199' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3f81ef7921d03be4f316352e882dcfba' WHERE ID = 'initial-database-creation-200' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a4ea1e2d194605f6f58b153bfaccf5ab' WHERE ID = 'initial-database-creation-201' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d14060c6060767cd382ae11daab03c5' WHERE ID = 'initial-database-creation-202' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6707a13bf3f51bdb706c76882ce46ec4' WHERE ID = 'initial-database-creation-203' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0e6fd2f5f65ab9faf7c8703e7685ca65' WHERE ID = 'initial-database-creation-204' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:309f434d6c082d6891afd0d337282991' WHERE ID = 'initial-database-creation-205' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c32ba10cbb1f0b5c2e95aa027ec746fe' WHERE ID = 'initial-database-creation-206' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5384963f62e7187ec90a1b1c153182aa' WHERE ID = 'initial-database-creation-207' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2989ae695264d7a11807a0979ec0ecb2' WHERE ID = 'initial-database-creation-208' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d25479cc3d966e012c6911dc51d6cce8' WHERE ID = 'initial-database-creation-209' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ac9cc3045f1f9fe1a02ccd9974b8323d' WHERE ID = 'initial-database-creation-210' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49cfb6312e54282c4d0e795f80b39341' WHERE ID = 'initial-database-creation-211' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:082d165623816b3c4df275c39d2a5c87' WHERE ID = 'initial-database-creation-212' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c1fa529176b85c1fd1d6df34e101730b' WHERE ID = 'initial-database-creation-213' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e21ea36e2865acc7a8b529008ab18638' WHERE ID = 'initial-database-creation-214' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf499a472647063ad23d818f3b9efc0c' WHERE ID = 'initial-database-creation-215' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3cf0b99be2d102f0c18d6e1b087a6e07' WHERE ID = 'initial-database-creation-216' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e5328dc45c03321e840b1dfbeca3aaf4' WHERE ID = 'initial-database-creation-217' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ea348bcf2a726b57bc2e48c1573abe4' WHERE ID = 'initial-database-creation-218' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75e05f119db1962a31320a356ead606d' WHERE ID = 'initial-database-creation-219' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:75b7a302ad3797e328d986f81c28a5fd' WHERE ID = 'initial-database-creation-220' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba22657b9068e4ca375362000671ba21' WHERE ID = 'initial-database-creation-221' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:acc55b69000f8a5b28452aab10f5b169' WHERE ID = 'initial-database-creation-222' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8cfce63d019f419629c39ad8fdc9120d' WHERE ID = 'initial-database-creation-223' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39f6d2e2a61c8529249622ca487d57a7' WHERE ID = 'initial-database-creation-224' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a584b5ca8d9bf8f9a230769b10dfda69' WHERE ID = 'initial-database-creation-225' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ce096c8029c383f4e8251ed0885d8390' WHERE ID = 'initial-database-creation-226' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:de2b97a7c2cb4e61e67d17d48c4a4d20' WHERE ID = 'initial-database-creation-227' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f39bcf544eef6692cbc5f38bbddd55cd' WHERE ID = 'initial-database-creation-228' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:73a607e5b7217d115eadcfbadd89455a' WHERE ID = 'initial-database-creation-229' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d2d2be80e0ac4dcca4713e2836f37990' WHERE ID = 'initial-database-creation-230' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:367efc1c8cc792f70211c4bfd9eef6ed' WHERE ID = 'initial-database-creation-231' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aae212760ec31dfd923f2d12ba9d6f1d' WHERE ID = 'initial-database-creation-232' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fbb1b9abd4ec87b8932aade0c9218ae3' WHERE ID = 'initial-database-creation-233' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2aba7298c4844af59c5edb831f117ba5' WHERE ID = 'initial-database-creation-234' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:89fe84b09a8acd34f363679bf7677356' WHERE ID = 'initial-database-creation-235' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5dc4e8c340bd393f4b5099e20f0f9a36' WHERE ID = 'initial-database-creation-236' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3590b686acb9b09cea6fac5c89bbdc9d' WHERE ID = 'initial-database-creation-237' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f8cfec1398bb704b6a2e138e81b07ccf' WHERE ID = 'initial-database-creation-238' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba0e3a1d8b9c29fb3bdb55bae218bb4c' WHERE ID = 'initial-database-creation-239' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bbdc482744e95dbd90575c89ad9d41ae' WHERE ID = 'initial-database-creation-240' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d2b36af99c5952b528eaae7057ac1b6e' WHERE ID = 'initial-database-creation-241' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3b62b7db5eaee97240817ecd722ac2a7' WHERE ID = 'initial-database-creation-242' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ef9951fb06b1b9539f42987d8c7594f2' WHERE ID = 'initial-database-creation-243' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7cd497d7af6ffe2717e6ba48161289db' WHERE ID = 'initial-database-creation-244' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:64be25676fe6a16a9179a8ecca37946f' WHERE ID = 'initial-database-creation-245' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7ca9c1541c3c1c3cb4ff41ba97468977' WHERE ID = 'initial-database-creation-246' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:5628baa778f7975d33844745464bd72e' WHERE ID = 'initial-database-creation-247' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:39b2886714c95b4fcea840e728dbeafe' WHERE ID = 'initial-database-creation-248' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d123f9a5f94593bf52ae8de082c5fbaf' WHERE ID = 'initial-database-creation-249' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6d3aa67ebaaf1bf8d90a857cc980f5f4' WHERE ID = 'initial-database-creation-250' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b5b0c05626d01b47c019ae26616d4828' WHERE ID = 'initial-database-creation-251' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0f0ff7e553ea342720ff6a08a2ec9a79' WHERE ID = 'initial-database-creation-252' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:8ecef16684b0a1402cc45f4359c1cf8d' WHERE ID = 'initial-database-creation-253' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d34ae8e0bc647c198532a5796f84970c' WHERE ID = 'initial-database-creation-254' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c77b9876807fc668bf925c15b6f05d95' WHERE ID = 'initial-database-creation-255' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:04edb15a2341263b756bef9da590c0da' WHERE ID = 'initial-database-creation-256' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:04df4ad24e2f0029592544981ad02af1' WHERE ID = 'initial-database-creation-257' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6ff190dc6ee66086ea50e4c1c0218bea' WHERE ID = 'initial-database-creation-258' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f0738411e10071f2f018ff01eeb35d6d' WHERE ID = 'initial-database-creation-259' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38eff64be66a81aefceff8295f24457c' WHERE ID = 'initial-database-creation-260' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:866937843544d7ea29305ff0aa63f716' WHERE ID = 'initial-database-creation-261' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a79dcd24324b40b74fe51216933dd60' WHERE ID = 'initial-database-creation-262' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f3b5bf1bb8dec4d1a539a14b729fa5d7' WHERE ID = 'initial-database-creation-263' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7489a0cd1ddac88ed52c5d7a1a4f8b15' WHERE ID = 'initial-database-creation-264' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:85386acf36cc7732a909b50feb7161e5' WHERE ID = 'initial-database-creation-265' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:265253245bc2a4d3a147abf6dc2f5a63' WHERE ID = 'initial-database-creation-266' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:bb1e840ddd6ad5a4e3ebdc051158ec43' WHERE ID = 'initial-database-creation-267' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b171c7216f636855695b563e1914e33' WHERE ID = 'initial-database-creation-268' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4226f9c9cab55a23a6d5b4e15b3fb9ee' WHERE ID = 'initial-database-creation-269' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:aea699561de90a74b8916c3d1ed344eb' WHERE ID = 'initial-database-creation-270' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:475222ac5ae3d2abc1b7d45e9c4e177b' WHERE ID = 'initial-database-creation-271' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2d6e61725ae54122c2080c90008a2b26' WHERE ID = 'initial-database-creation-272' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7e4235c52130abfe71c0d00afa7d4ce4' WHERE ID = 'initial-database-creation-273' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:84f4c22bdcbb6b8b9b5a3b70366f963d' WHERE ID = 'initial-database-creation-274' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:ccd737d5dd312fd91122cd812b5a966e' WHERE ID = 'initial-database-creation-275' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:51837fcb989bf6bd725dcb15cf16e523' WHERE ID = 'initial-database-creation-276' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b61c900c5dbb41916da6da7cd86c577b' WHERE ID = 'initial-database-creation-277' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:136371209592142dfb066f431dc820d2' WHERE ID = 'initial-database-creation-278' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:74476bd04d63820337d0163ead5f408b' WHERE ID = 'initial-database-creation-279' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:77619d56bb9caef66ddb09b2d738a689' WHERE ID = 'initial-database-creation-280' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:401e0d01fa21de72b2cfdc904b7793d2' WHERE ID = 'initial-database-creation-281' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:71c0e98d3fdaffd5241327a88d7fdcc2' WHERE ID = 'initial-database-creation-282' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:49564ddf7a028e03718eb115075be50e' WHERE ID = 'initial-database-creation-283' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a3f182e08f211522c2fdceff6658adb4' WHERE ID = 'initial-database-creation-284' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:fa809e223b8edc78e803b61393643714' WHERE ID = 'initial-database-creation-285' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:38c6589a313eddb26f132963c26c6530' WHERE ID = 'initial-database-creation-286' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b4f8bccc6e065ce463aadde27e17d230' WHERE ID = 'initial-database-creation-287' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:97361f372c354ebcd4e0452c415dbf7c' WHERE ID = 'initial-database-creation-288' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d678d74ac95b746dc8c258b4b1284f59' WHERE ID = 'initial-database-creation-289' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:42313cf70e1ca6c2d710353631bb9cc6' WHERE ID = 'initial-database-creation-290' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:cbef825460cae1bd015a31aca425b1dd' WHERE ID = 'initial-database-creation-291' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7932c5b87f56ac81597296b7430a4a1a' WHERE ID = 'initial-database-creation-292' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:3cfafcce493dc68c0c2a0819bf3b4424' WHERE ID = 'initial-database-creation-293' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:683a9bb1f8dec1b928b52abc0d13c614' WHERE ID = 'initial-database-creation-294' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:d79fcbe5e100ffa411d371bde048de9c' WHERE ID = 'initial-database-creation-295' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a3451251df2e81fb19e31b70640416e4' WHERE ID = 'initial-database-creation-296' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:9ce7cc7f4b37a33879fd86f6e51f1c55' WHERE ID = 'initial-database-creation-297' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:7be41a7f6064dd9fe0539976d1c8b3d0' WHERE ID = 'initial-database-creation-298' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f83cbc66b0dc3f92ac50ae3732d53b71' WHERE ID = 'initial-database-creation-299' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0922adca7c62b031132bf803be407187' WHERE ID = 'initial-database-creation-300' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:6f5b7c51292ecdc6a7376573eb841d54' WHERE ID = 'initial-database-creation-301' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:68e8da1cdab002c1a44b9e94bf74a54e' WHERE ID = 'initial-database-creation-302' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2ee59e6eb1443a6b5f17955ae868ec3d' WHERE ID = 'initial-database-creation-303' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c9a0c8f2a51a38880549746c4d03a644' WHERE ID = 'initial-database-creation-304' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0ced52a9c6b59828513a3506efb1b1ef' WHERE ID = 'initial-database-creation-305' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:a2fc7ddf27cf8adc3db57ce19ec92f72' WHERE ID = 'initial-database-creation-306' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4247931bed864bfc0a08c5b90c64f409' WHERE ID = 'initial-database-creation-307' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:669398ad637b9fd862d16fc335c65d9d' WHERE ID = 'initial-database-creation-308' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:4bb5d497e77f36479dce9156a92e78ba' WHERE ID = 'initial-database-creation-309' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e90b2f53ebf96ead3e3c999812ecb09f' WHERE ID = 'initial-database-creation-310' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:c1ae57ea413aa929d7e52318a2da53ce' WHERE ID = 'initial-database-creation-311' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f74da495f82b379ed710cb0a58d223bf' WHERE ID = 'initial-database-creation-312' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d50fa556f4c74a03a6a09f525b1bd07' WHERE ID = 'initial-database-creation-313' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:2ed8fe8c1f5dea5c1994bfb56d668629' WHERE ID = 'initial-database-creation-314' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b639acadf3c84d20ee4a96ed44fa921' WHERE ID = 'initial-database-creation-315' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b03e714b00a4eec1376670955a0d8a74' WHERE ID = 'initial-database-creation-316' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:b20f898af1cacecbff0cad78c9b41193' WHERE ID = 'initial-database-creation-317' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:f576c9ba9b712673b0f113d8c337c676' WHERE ID = 'initial-database-creation-318' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e854c3100c9768aca54e3834cc8c0e2a' WHERE ID = 'initial-database-creation-319' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:0955cc1f559e97dafedc69df8cba7e1d' WHERE ID = 'initial-database-creation-320' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-database.xml';

UPDATE databasechangelog SET MD5SUM = '7:e17ce5aaf6051951be309a8154d4602a' WHERE ID = 'resize-precision-in-planning_data' AND AUTHOR = 'dpino' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:013ba795423732a239fcb0bf56280c1c' WHERE ID = 'add-company-logo-url-configuration-setting' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:20d3d7099b8c2124dc071367d7158683' WHERE ID = 'add scheduling mode' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:68f932faa34858b37470ecf08d65cfeb' WHERE ID = 'rename start_constraint_type in task and task milestone' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c7b64f1ec02d8fd8f5f73d3d4d88e89' WHERE ID = 'add-scenarios-enabled-configuration-setting' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:36cbdfee7d2cb030b48ec1364502f93f' WHERE ID = 'change-types-start-finish-date-criterion-satisfaction' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:90ae31d6c863695d97757f0ca7626382' WHERE ID = 'remove-stretches-with-amountWorkPercentage-equal-100' AND AUTHOR = 'dpino' AND FILENAME = 'db.changelog-initial.xml';

UPDATE databasechangelog SET MD5SUM = '7:78479ba9625739746a399740db54729c' WHERE ID = 'use-capacity-instead-of-effort_duration-and-not_over_assignable' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:1efcbd1f208a9dcd297bb5e951ecfaba' WHERE ID = 'use-capacity-for-exceptions' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f568e0722a4bd5db2c7a9ee15ef444b' WHERE ID = 'use-capacity-for-capacity-per-day-for-calendar-data' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:9452720f2d5dafdfe92f0a1a1385c354' WHERE ID = 'by_default_weekends_are_not_overassignable' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:8dc497a48d1135f6539976eb8b848865' WHERE ID = 'replace-column-limited_resource-with-resource_type' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:48f05d099ec14ce63df83aa04916ba33' WHERE ID = 'add-new-column-changed_default_admin_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9acb578e2503062b4d000a46c5f7f3e' WHERE ID = 'add-new-column-changed_default_user_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:d46d596677599738d66eadd89c4fc494' WHERE ID = 'add-new-column-changed_default_wsreader_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:832d6e1ef60417fab397fd24c565e40d' WHERE ID = 'add-new-column-changed_default_wswriter_password' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:0c66751f59bd6c27d91c1a107fb81ec2' WHERE ID = 'add-intended_resources_per_day-column-to-resource-allocation' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:c7266d37151e38c62d420ea9353876ed' WHERE ID = 'change-original-total-assignment-to-use-effort-duration' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:784b153f54381c4979a6cce8a938a668' WHERE ID = 'add-intended_non_consolidated_effort' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:ef28fd62121c7f9abf1dcdfcd7b95213' WHERE ID = 'add-effort-duration-to-task-and-milestone' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.0.xml';

UPDATE databasechangelog SET MD5SUM = '7:c2a321e8dbd4ba301498e69cd1895fa0' WHERE ID = 'add-new-column-ldap-host' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:ffe5cce999c981b24cae84d576a91b18' WHERE ID = 'add-new-column-ldap-port' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:b2b27f9a6c551942a30381987f2ed14e' WHERE ID = 'add-new-column-ldap-base' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:05321ba7edd533b43e022d82277082ce' WHERE ID = 'add-new-column-ldap-userdn' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:3ebe25045be96e881a36e795f42c3a3c' WHERE ID = 'add-new-column-ldap-password' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:32fea423ada8489cf2c0b1e6188372aa' WHERE ID = 'add-new-column-ldap-userid' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:389ba4ed89888ca1b0d20b3ec81480d8' WHERE ID = 'add-new-column-ldap-save-password-db' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:7a1d756f8f645c307fb50d408e52197a' WHERE ID = 'add-new-column-ldap-auth-enabled' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:80cd7d3db04e53554f8d4329b607f14a' WHERE ID = 'add-new-column-navalplan-user' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:beab0dc1168e1c885fa8a30dcda2ea4c' WHERE ID = 'delete-constraint-not-null-user-password' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:260e31e7a0707506851d27a31057fd46' WHERE ID = 'set-default-value-navalplan-user' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:801ca2287c3903e186174da6e6217e9e' WHERE ID = 'set-default-value-ldap-save-password-db' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:3b07c74bf110e14f5fd66ac39c55a21a' WHERE ID = 'set-default-value-ldap-auth-enabled' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5c0f531ec9d1adcb8d93b2f40168111b' WHERE ID = 'add-new-column-ldap-save-roles-db' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:1442f0c75f722bbf3584556fb2f7c911' WHERE ID = 'create-new-table-matching-roles' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:fc33862690308483319a638f8fe7f018' WHERE ID = 'add-new-column-ldap-search-query' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d18005525c19712e7b7d50196c10a40' WHERE ID = 'add-new-column-enabled-autocomplete-login' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:0ef1a59925739f1f21c8025752876430' WHERE ID = 'add-application-language' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9e273171bcf8ea19c14058585717d52' WHERE ID = 'move-columns-from-configuration-table' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:267494fb6667f7b5a0cd76ead7bc90f7' WHERE ID = 'add-new-fields' AND AUTHOR = 'calvarinop' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:2f179c765a02dc902945c2e99f130195' WHERE ID = 'remove-configuration_roles_ldap' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:69f3e64511f69f4060d221857f884d41' WHERE ID = 'add-column-progress_all_by_num_hours-in-planning_data' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9063220e75527d615ae63bec55ff635' WHERE ID = 'update-color-in-calendar_exception_type-to-default' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:b6c7a69432a1fdd5c23171dbdc711ee6' WHERE ID = 'create-table-manual_function' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:a6a7e33e3d4f92c4f3cc6fd5d6154076' WHERE ID = 'change-numhours-to-effort-in-work-report-lines' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d893bff446c623ecd3140dc715ee6f1' WHERE ID = 'update-numhours-values-to-effort-values' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:11d38484bf336dda6db18ecec1a34e53' WHERE ID = 'change-sum_charged_hours-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:4599cbee16f73fc2f398e7c1477f9d4c' WHERE ID = 'update-effort-values-in-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:725a3220c05209e58a53caf2d8d06067' WHERE ID = 'drop-foreign-key-sum_charged_hours_id-in-order_element' AND AUTHOR = 'dmel' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:c96871ccadaa3199efc3f4a61b8d2901' WHERE ID = 'rename-sum_charged_hours_id-to-sum_charged_effort_id' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:d376a53b4c95f7dcddff25745b3eb89b' WHERE ID = 'add-foreign-key-sum_charged_effort_id-in-order_element' AND AUTHOR = 'dmel' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:6649a427ac6223f3234df8fa9d4c4077' WHERE ID = 'drop-column-date-in-stretches-table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:e63f2b44598cfe9a637b9037ad74bf72' WHERE ID = 'add-version-to-planning-data' AND AUTHOR = 'ogonzalez' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:bfcbdabe073297540892366378d819f7' WHERE ID = 'change-navalplan_user-to-libreplan_user-in-user_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:70188f41112228d607f210b647d5a8ff' WHERE ID = 'add-new-column-ldap-role-strategy' AND AUTHOR = 'idiazt' AND FILENAME = 'db.changelog-1.1.xml';

UPDATE databasechangelog SET MD5SUM = '7:58aff11ea6ca918e88da0fbf6c3807c6' WHERE ID = 'add-task_end_date_effort_duration-to-consolidated_value' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:d4087b1d364de205ff84464c7164f60e' WHERE ID = 'change-sum_of_hours_allocated-to-sum_of_assigned_effort' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:5a8c7ba9be0aa25103bdc7cc191785ff' WHERE ID = 'update-effort-values-in-sum_charged_effort' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:6d084994b4b25f35bd6b3bba943ca6d8' WHERE ID = 'add-new-column-check_new_version_enabled' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:58669c35e741419a23820cb32ee1f0f2' WHERE ID = 'add-new-column-allow_to_gather_usage_stats_enabled' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4c0d2c4b459ca5cf96e2f04fa245d60b' WHERE ID = 'change-column-description-in-order_element-to-text' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4a3420645523870198f863600906b9f9' WHERE ID = 'change-column-description-in-order_element_template-to-text' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:72ab971a489f2587c5cad549c4d264be' WHERE ID = 'add-budget-column-to-order_line' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:8e47536f05228b3ff7082c6eb1434b15' WHERE ID = 'add-budget-column-to-order_line_template' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:14972a0a81e2c2d47023f7981b8f8d80' WHERE ID = 'initial-database-creation-customer-comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f97fb7ec38dd612187a866437aec31ad' WHERE ID = 'initial-database-creation-subcontractor-comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:052f9ce9d7b883c25a60f5d35127e96e' WHERE ID = 'initial-database-creation-subcontractor-comunication-value' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:54015e1676854f644f65f0a5d2c14e9a' WHERE ID = 'rename-table-customer_comunication-to-customer_communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:ba7ddb07160a45afceca61fa2890f426' WHERE ID = 'rename-column-comunication_type-to-communication_type' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:55f69650cad124fef5793b75ceb664f6' WHERE ID = 'rename-column-comunication_date-to-communication_date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:af6fc00fc9118fa5373bd728979037ce' WHERE ID = 'rename-table-subcontractor_comunication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:626315fae50732a1fff518a342412709' WHERE ID = 'rename-column-comunication_type-on-subcontractor-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:cb98e30797665edcc0efc6dced0dd2a5' WHERE ID = 'rename-column-comunication_date-on-subcontractor-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:658b83d7fe4b73a4d802d44d92ee57b1' WHERE ID = 'rename-table-subcontractor_comunication_values' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:79d45c15b86258526118fb828559b408' WHERE ID = 'rename-column-subcontractor_comunication_id' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:a9b05100c4b2cc39cf29ef17012a6ca5' WHERE ID = 'creation-deadline-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:7e0933f3aa9446284b092df018d80f21' WHERE ID = 'add-delivering-date-column-to-order-entity' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:490733aec1c24510d978cce93c09f062' WHERE ID = 'creation-subcontractor-deliver-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:a38ee75b40a1e0e9129b11f5d3ac878f' WHERE ID = 'add-subcontracted-task-data' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:9bed5b1bcae35136c3d576f16ab173b3' WHERE ID = 'database-creation-table-end-date-communication-to-customer' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f93a0a5663dd9e04b03d8c78ed650256' WHERE ID = 'subcontracted-date-id-column-to-end-date-communication' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:923a73eb734f70a3ca372e54cadad424' WHERE ID = 'rename-table-end_date_comunication-to-customer' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:c0b428bac8fbfa8596cc54bee7f7188f' WHERE ID = 'change-mapping-order-element-and-sum-charged-effort-postgresql' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:2db6f13cac6d4862da45ce887ba5327d' WHERE ID = 'creation-table-expense-sheet' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:fd82da8c5923a583c93577be6e9d1966' WHERE ID = 'creation-table-expense-sheet-line' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1a1e27fa06e7edafa594a33815ca1224' WHERE ID = 'add-new-column-generate-code-for-expense-sheets' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:770f539dcf73546e06896c123ab9f947' WHERE ID = 'modify-columns-type-in-expense-sheet-to-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:eb105238b8f0ae4a214d021b0978db5f' WHERE ID = 'modify-columns-type-in-expense-sheet-line-to-date' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:5d9bca2e7f1b8f981195a797590503b0' WHERE ID = 'create3-table-sum-expenses' AND AUTHOR = 'smontes' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:276f86a8cf2e2ba3370dbc0ee6503945' WHERE ID = 'add-new-columns-for-currency-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:742870949e94de88eebd508b975eada7' WHERE ID = 'remove-code-from-order_element_template' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:ccfe8146e8507d9bd37f62d228c1c500' WHERE ID = 'add-relationship-between-worker-and-user' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:e8245928465affa694aac4cf360f474f' WHERE ID = 'add-monthly_timesheets_type_of_work_hours-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:4f21bf38fc3940befc159d28e2e9cd50' WHERE ID = 'add-new-column-personal-to-expense_sheet-table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:40cc3c680d9e07a33d52f7718d3f40a2' WHERE ID = 'add-new-column-changed_default_wssubcontracting_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1f9d870879366441a3a77e8c6368d788' WHERE ID = 'rename-column-elt-in-roles_table-to-role' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:1b1170273d93d03bf99f0834f2317d46' WHERE ID = 'rename-roles-in-roles_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:644aa77485e46905702aeab473709e87' WHERE ID = 'rename-column-elt-in-profile_roles-to-role' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:e9d1f3ddc79c48b9cd7bf3c7fdcf2557' WHERE ID = 'rename-roles-in-profile_roles' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:0374f36b32a92d528d010ad9349c3dbf' WHERE ID = 'drop-column-changed_default_user_password-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:492cdbfb7858dfa8394a8308a7708677' WHERE ID = 'add-new-column-changed_default_manager_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:c586bf45dc11d95db160b4f3a42e6bb1' WHERE ID = 'add-new-column-changed_default_hresources_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:f58cc07372a6a88dbed95fbc61b70861' WHERE ID = 'add-new-column-changed_default_outsourcing_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:6a736fe36b04e1569a2fdb3f49ce4f8d' WHERE ID = 'add-new-column-changed_default_reports_password' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.2.xml';

UPDATE databasechangelog SET MD5SUM = '7:0c0f4bd813bd8b2d7aa842b31591b82b' WHERE ID = 'change-column-notes-in-task_element-to-text' AND AUTHOR = 'jaragunde' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:a51bb4c3a40cb72003039d7d39ad3b32' WHERE ID = 'update-work_report_type-name-to-personal-timehseets' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:da2d9e05990c3392cf400c00ee777d57' WHERE ID = 'add-personal_timesheets_periodicity-column-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ebdeb7296bcfecf91a8dcb7e414a58e7' WHERE ID = 'rename-column-from-monthly-to-personal-in-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:10ea2931878daa5f0d60ca251f382017' WHERE ID = 'add-max_users-and-max_resources-columns-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:6c2688e8f35139318e682af100606fdf' WHERE ID = 'add-columns-first-and-last-timesheet_date-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:8f7d3ce0cb68babcfadeecfcbe99ef0e' WHERE ID = 'add-new-column-read_only-to-advance_type' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:8035d760c9107289a3f6f92e1adf37de' WHERE ID = 'add-new-column-finished-to-work_report_line' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ddf9915bb3364518059684203a4c14ef' WHERE ID = 'add-new-column-finished_timesheets-to-sum_charged_effort' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:cfe0691912c47dbc2ee01d0079ebd262' WHERE ID = 'add-new-column-updated_from_timesheets-to-task_element' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ff2abfa52722fec1c4a826bb67ec9c30' WHERE ID = 'update-status-values-in-order_table' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:aa584731bd56fed462fa30c8f31890c2' WHERE ID = 'drop-unique-constraint-code-in-order_element' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:24c17e2270dcb5e8ca549dfdfb9d95d3' WHERE ID = 'add-seconds_planning_warning-column-to-configuration' AND AUTHOR = 'mrego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:bf66808003065c19f1165d4d04059b2d' WHERE ID = 'add-updatable-boolean-column-to-calendar-exception-type' AND AUTHOR = 'acarro' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:6a1d8e0163009c775688fcabb5fcd122' WHERE ID = 'create-table-order-sync-info' AND AUTHOR = 'miciele' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:4098f696e1eedeb3fa8b1226aa275ab7' WHERE ID = 'create-tables-related-to-connector-entity' AND AUTHOR = 'rego' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:fe7c89fabfb5b75029f3dd63cfb49e98' WHERE ID = 'create-table-job-scheduler-configuration' AND AUTHOR = 'miciele' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:0d21457a5941a9df8f61c936e79ca43d' WHERE ID = 'add-projects_filter_period_since-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:e689b0b92e0a6d02e0232386fa004f22' WHERE ID = 'add-projects_filter_period_to-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:ab570c2ada1dc26bc48b948dac90d9f8' WHERE ID = 'add-resources_load_filter_period_since-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:a88bfda7da71206c673300ce01b01708' WHERE ID = 'add-resources_load_filter_period_to-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:58ff21fac5a0cfc347a76c79a2d3c0e1' WHERE ID = 'add-projects_filter_label_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:5ba89d91e6f02c87a420036e07354fb9' WHERE ID = 'add-resources_load_filter_criterion_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:440cdc5d751b65675d018d5a90fdc3a3' WHERE ID = 'add-projects_filter_label_id-fk-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

UPDATE databasechangelog SET MD5SUM = '7:3857373c886a568e32a5566eae5fa8e3' WHERE ID = 'add-resources_load_filter_fk_id-column-to-user_table' AND AUTHOR = 'ltilve' AND FILENAME = 'db.changelog-1.3.xml';

-- Changeset db.changelog-database.xml::rename_work_report_label_type_assigment::pluchyn
ALTER TABLE work_report_label_type_assigment RENAME TO work_report_label_type_assignment;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_work_report_label_type_assigment', 'pluchyn', 'db.changelog-database.xml', NOW(), 450, '7:53a9c49f5aa7f02c636516071685dcef', 'renameTable newTableName=work_report_label_type_assignment, oldTableName=work_report_label_type_assigment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT work_report_label_type_assigment_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 451, '7:cf38a201becd6c6a676b237e34357359', 'dropPrimaryKey constraintName=work_report_label_type_assigment_pkey, tableName=work_report_label_type_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT work_report_label_type_assignment_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 452, '7:c606b2c51f85c4747c79ed2c06785f31', 'addPrimaryKey constraintName=work_report_label_type_assignment_pkey, tableName=work_report_label_type_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey_constraints_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920c1c2746e;

ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920707cd777;

ALTER TABLE work_report_label_type_assignment DROP CONSTRAINT fkbb262920131853a1;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey_constraints_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 453, '7:d0f63e10c091f7b34a22df5bdf7c6daa', 'dropForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920c1c2746e; dropForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920707cd777; dropForeignKeyConstraint base...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_constraints_work_report_label_type_assignment::pluchyn
ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920c1c2746e FOREIGN KEY (label_id) REFERENCES label (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920707cd777 FOREIGN KEY (label_type_id) REFERENCES label_type (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE work_report_label_type_assignment ADD CONSTRAINT fkbb262920131853a1 FOREIGN KEY (work_report_type_id) REFERENCES work_report_type (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_constraints_work_report_label_type_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 454, '7:cf7fcdbb311a5ac787a910a031ee65c3', 'addForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920c1c2746e, referencedTableName=label; addForeignKeyConstraint baseTableName=work_report_label_type_assignment, constraintName=fkbb262920707cd777, refe...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_material_assigment::pluchyn
ALTER TABLE material_assigment RENAME TO material_assignment;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_material_assigment', 'pluchyn', 'db.changelog-database.xml', NOW(), 455, '7:b6536b1130eca344fb5abc9141b0b3b0', 'renameTable newTableName=material_assignment, oldTableName=material_assigment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_material_assignment::pluchyn
ALTER TABLE material_assignment DROP CONSTRAINT material_assigment_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_material_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 456, '7:69c859a64c27c541e754a5db365aa892', 'dropPrimaryKey constraintName=material_assigment_pkey, tableName=material_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_material_assignment::pluchyn
ALTER TABLE material_assignment ADD CONSTRAINT material_assignment_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_material_assignment', 'pluchyn', 'db.changelog-database.xml', NOW(), 457, '7:d073c3db0a904794c5106a37a888a7df', 'addPrimaryKey constraintName=material_assignment_pkey, tableName=material_assignment', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_material_assigment_template::pluchyn
ALTER TABLE material_assigment_template RENAME TO material_assignment_template;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_material_assigment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 458, '7:1d136d2bf826e11ec309ef229c13859f', 'renameTable newTableName=material_assignment_template, oldTableName=material_assigment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_pkey_material_assignment_template::pluchyn
ALTER TABLE material_assignment_template DROP CONSTRAINT material_assigment_template_pkey;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_pkey_material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 459, '7:f8aac5fa8c9b6402d77c4c34fd7ddeba', 'dropPrimaryKey constraintName=material_assigment_template_pkey, tableName=material_assignment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_pkey_material_assignment_template::pluchyn
ALTER TABLE material_assignment_template ADD CONSTRAINT material_assignment_template_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_pkey_material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 460, '7:71d8d211fbb71d832c96092a35f52842', 'addPrimaryKey constraintName=material_assignment_template_pkey, tableName=material_assignment_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_order_element-last_advance_meausurement_for_spreading::pluchyn
ALTER TABLE order_element RENAME COLUMN last_advance_meausurement_for_spreading TO last_advance_measurement_for_spreading;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_order_element-last_advance_meausurement_for_spreading', 'pluchyn', 'db.changelog-database.xml', NOW(), 461, '7:b239264c0a23365e7fd097cb3f0ef93d', 'renameColumn newColumnName=last_advance_measurement_for_spreading, oldColumnName=last_advance_meausurement_for_spreading, tableName=order_element', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::rename_task-subcontrated_task_data_id::pluchyn
ALTER TABLE task RENAME COLUMN subcontrated_task_data_id TO subcontracted_task_data_id;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('rename_task-subcontrated_task_data_id', 'pluchyn', 'db.changelog-database.xml', NOW(), 462, '7:d2538a5ecb492a8fc9ca3bc837bc23ce', 'renameColumn newColumnName=subcontracted_task_data_id, oldColumnName=subcontrated_task_data_id, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_unique_constraint_task::pluchyn
ALTER TABLE task DROP CONSTRAINT task_subcontrated_task_data_id_key;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_unique_constraint_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 463, '7:dba49e8166420173023949ec953695f7', 'dropUniqueConstraint constraintName=task_subcontrated_task_data_id_key, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_unique_constraint_task::pluchyn
ALTER TABLE task ADD CONSTRAINT task_subcontracted_task_data_id_key UNIQUE (subcontracted_task_data_id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_unique_constraint_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 464, '7:df0886dd7f24c03f0664afb0be8bd567', 'addUniqueConstraint constraintName=task_subcontracted_task_data_id_key, tableName=task', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey-material_assignment-material_assignment_template::pluchyn
ALTER TABLE material_assignment DROP CONSTRAINT fkb3e9425b5c68337;

ALTER TABLE material_assignment DROP CONSTRAINT fkb3e9425efda874f;

ALTER TABLE material_assignment_template DROP CONSTRAINT fk35254354b5c68337;

ALTER TABLE material_assignment_template DROP CONSTRAINT fk3525435419b9dfde;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey-material_assignment-material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 465, '7:3972f1659bce1687376eef4944a34147', 'dropForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425b5c68337; dropForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425efda874f; dropForeignKeyConstraint baseTableName=material_assignment_...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_material_assignment-material_assignment_template::pluchyn
ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425b5c68337 FOREIGN KEY (material_id) REFERENCES material (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment ADD CONSTRAINT fkb3e9425efda874f FOREIGN KEY (order_element_id) REFERENCES order_element (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment_template ADD CONSTRAINT fk35254354b5c68337 FOREIGN KEY (material_id) REFERENCES material (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE material_assignment_template ADD CONSTRAINT fk3525435419b9dfde FOREIGN KEY (order_element_template_id) REFERENCES order_element_template (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_material_assignment-material_assignment_template', 'pluchyn', 'db.changelog-database.xml', NOW(), 466, '7:3681706c5711e5c6f1660e502434c6aa', 'addForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425b5c68337, referencedTableName=material; addForeignKeyConstraint baseTableName=material_assignment, constraintName=fkb3e9425efda874f, referencedTableName=order_eleme...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::drop_fkey_task::pluchyn
ALTER TABLE task DROP CONSTRAINT fk3635855b595a0;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('drop_fkey_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 467, '7:6d6a72fdc5a7619ca53e1852be22cfdc', 'dropForeignKeyConstraint baseTableName=task, constraintName=fk3635855b595a0', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-database.xml::add_fkey_task::pluchyn
ALTER TABLE task ADD CONSTRAINT fk3635855b595a0 FOREIGN KEY (subcontracted_task_data_id) REFERENCES subcontracted_task_data (id) ON UPDATE NO ACTION ON DELETE NO ACTION;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add_fkey_task', 'pluchyn', 'db.changelog-database.xml', NOW(), 468, '7:7a7661bdb08990527ad8e44feea3277b', 'addForeignKeyConstraint baseTableName=task, constraintName=fk3635855b595a0, referencedTableName=subcontracted_task_data', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.2.xml::update allow_to_gather_usage_stats_enabled::bogdan/jeroen
-- Update allow_to_gather_usage_stats_enabled field
UPDATE configuration SET allow_to_gather_usage_stats_enabled = TRUE;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update allow_to_gather_usage_stats_enabled', 'bogdan/jeroen', 'db.changelog-1.2.xml', NOW(), 469, '7:74bc7a87c4b728c8b6376df0364bec17', 'update tableName=configuration', 'Update allow_to_gather_usage_stats_enabled field', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.2.xml::change_default_value_for_gather_usage_stats::pluchyn
ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET DEFAULT TRUE;

UPDATE configuration SET allow_to_gather_usage_stats_enabled = 'TRUE' WHERE allow_to_gather_usage_stats_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  allow_to_gather_usage_stats_enabled SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change_default_value_for_gather_usage_stats', 'pluchyn', 'db.changelog-1.2.xml', NOW(), 470, '7:035c66a73e986edf18a4ada2257f2559', 'addDefaultValue columnName=allow_to_gather_usage_stats_enabled, tableName=configuration; addNotNullConstraint columnName=allow_to_gather_usage_stats_enabled, tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.3.xml::add-new-column-hours-margin::miciele
-- Add new column hours_margin in table order_table
ALTER TABLE order_table ADD hours_margin INT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-hours-margin', 'miciele', 'db.changelog-1.3.xml', NOW(), 471, '7:aeaa435fce3c23f069e7d594d2f04152', 'addColumn tableName=order_table', 'Add new column hours_margin in table order_table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.3.xml::add-new-column-budget-margin::miciele
-- Add new column budget_margin in table order_table
ALTER TABLE order_table ADD budget_margin INT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-budget-margin', 'miciele', 'db.changelog-1.3.xml', NOW(), 472, '7:c4f2bd2ec5b9c17d526a6367fc875f6d', 'addColumn tableName=order_table', 'Add new column budget_margin in table order_table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-id_cost_category-column-to-criterion-table::ltilve
-- Add column to criterion table to store the relationship with cost category
ALTER TABLE criterion ADD id_cost_category BIGINT;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-id_cost_category-column-to-criterion-table', 'ltilve', 'db.changelog-1.4.xml', NOW(), 473, '7:ac318a2d19dbff96f1023ab5b1f99123', 'addColumn tableName=criterion', 'Add column to criterion table to store the relationship with cost category', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-id_cost_category-fk-to-criterion-table::ltilve
-- Add foreign key constraint to new id_cost_category column on cost_category id
ALTER TABLE criterion ADD CONSTRAINT cost_category_fkey FOREIGN KEY (id_cost_category) REFERENCES cost_category (id) ON DELETE SET NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-id_cost_category-fk-to-criterion-table', 'ltilve', 'db.changelog-1.4.xml', NOW(), 474, '7:39e1405584ad36ca9498c56e83c7d259', 'addForeignKeyConstraint baseTableName=criterion, constraintName=cost_category_fkey, referencedTableName=cost_category', 'Add foreign key constraint to new id_cost_category column on cost_category id', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-new-column-automatic_budget_enabled::ltilve
-- Add new column automatic_budget_enabled with default value FALSE to configuration table
ALTER TABLE configuration ADD automatic_budget_enabled BOOLEAN;

ALTER TABLE configuration ALTER COLUMN  automatic_budget_enabled SET DEFAULT FALSE;

UPDATE configuration SET automatic_budget_enabled = 'FALSE' WHERE automatic_budget_enabled IS NULL;

ALTER TABLE configuration ALTER COLUMN  automatic_budget_enabled SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-automatic_budget_enabled', 'ltilve', 'db.changelog-1.4.xml', NOW(), 475, '7:81026d75982fc9c641ac94d47418462f', 'addColumn tableName=configuration; addDefaultValue columnName=automatic_budget_enabled, tableName=configuration; addNotNullConstraint columnName=automatic_budget_enabled, tableName=configuration', 'Add new column automatic_budget_enabled with default value FALSE to configuration table', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::add-automatic_budget_type_of_work_hours-to-configuration::ltilve
-- Add new column automatic_budget_type_of_work_hours to
--             configuration table.
ALTER TABLE configuration ADD automatic_budget_type_of_work_hours BIGINT;

ALTER TABLE configuration ADD CONSTRAINT automatic_budget_type_of_work_hours_fkey FOREIGN KEY (automatic_budget_type_of_work_hours) REFERENCES type_of_work_hours (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-automatic_budget_type_of_work_hours-to-configuration', 'ltilve', 'db.changelog-1.4.xml', NOW(), 476, '7:1f2bdf23e8a35c54b1058c8ae627ae2e', 'addColumn tableName=configuration; addForeignKeyConstraint baseTableName=configuration, constraintName=automatic_budget_type_of_work_hours_fkey, referencedTableName=type_of_work_hours', 'Add new column automatic_budget_type_of_work_hours to
            configuration table.', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.xml::adding-limits::vova/jeroen
CREATE TABLE limits (id BIGSERIAL NOT NULL, type VARCHAR(20), value INT, CONSTRAINT limits_pkey PRIMARY KEY (id));

ALTER TABLE limits ADD CONSTRAINT type UNIQUE (type);

INSERT INTO limits VALUES(0, 'users', 5);

INSERT INTO limits VALUES(1, 'workers+machines', 10);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-limits', 'vova/jeroen', 'db.changelog-1.4.xml', NOW(), 477, '7:b5145a99fcd365131b77887b3bca0126', 'createTable tableName=limits; addUniqueConstraint constraintName=type, tableName=limits; sql', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::change-primary-key::vmazurashu
ALTER TABLE limits ADD tmp_id BIGINT;

UPDATE limits SET tmp_id = id;

ALTER TABLE limits DROP CONSTRAINT limits_pkey;

ALTER TABLE limits DROP COLUMN id;

ALTER TABLE limits RENAME COLUMN tmp_id TO id;

ALTER TABLE limits ADD CONSTRAINT limits_pkey PRIMARY KEY (id);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('change-primary-key', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 478, '7:429a72a91c4c9d776fa4e35c5e4d1c64', 'sql; addPrimaryKey constraintName=limits_pkey, tableName=limits', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::update-values::vmazurashu
UPDATE limits SET value = 0;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update-values', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 479, '7:844d5d4e4d03895fe57727720a292767', 'sql', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.4.1.xml::update-unique-constraint::vmazurashu
ALTER TABLE limits DROP CONSTRAINT type;

ALTER TABLE limits ADD CONSTRAINT limits_type UNIQUE (type);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('update-unique-constraint', 'vmazurashu', 'db.changelog-1.4.1.xml', NOW(), 480, '7:357acd1a01c2bb3b5273ef4a97cb6dc8', 'dropUniqueConstraint constraintName=type, tableName=limits; addUniqueConstraint constraintName=limits_type, tableName=limits', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-email_template-table::vova/jeroen
CREATE TABLE email_template (id BIGSERIAL NOT NULL, type INT, language INT, content VARCHAR(2048), subject VARCHAR(1024), CONSTRAINT email_templates_pkey PRIMARY KEY (id));

ALTER TABLE email_template ADD CONSTRAINT email_template_type_language UNIQUE (type, language);

CREATE INDEX language_index ON email_template(language);

CREATE INDEX type_index ON email_template(type);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-email_template-table', 'vova/jeroen', 'db.changelog-1.5.xml', NOW(), 481, '7:29c8b47b62933193376d544040cfb332', 'createTable tableName=email_template; addUniqueConstraint constraintName=email_template_type_language, tableName=email_template; createIndex indexName=language_index, tableName=email_template; createIndex indexName=type_index, tableName=email_temp...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-notification_notification_queue::vova
CREATE TABLE notification_queue (id BIGSERIAL NOT NULL, type INT, updated TIMESTAMP WITHOUT TIME ZONE, resource BIGINT, task BIGINT, project BIGINT, CONSTRAINT notification_queue_pkey PRIMARY KEY (id));

ALTER TABLE notification_queue ADD UNIQUE (type, resource, task, project);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-notification_notification_queue', 'vova', 'db.changelog-1.5.xml', NOW(), 482, '7:24c7d899257557dd96a6391f2f274972', 'createTable tableName=notification_queue; addUniqueConstraint tableName=notification_queue', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-issue_log-table::misha/vova
CREATE TABLE issue_log (id BIGSERIAL NOT NULL, code VARCHAR(25), project BIGINT, type INT, description VARCHAR(1024), priority INT, severity INT, created_by BIGINT, assigned_to VARCHAR(512), status VARCHAR(50), date_raised TIMESTAMP WITHOUT TIME ZONE, deadline TIMESTAMP WITHOUT TIME ZONE, date_resolved TIMESTAMP WITHOUT TIME ZONE, notes VARCHAR(1024), CONSTRAINT issue_log_pkey PRIMARY KEY (id));

ALTER TABLE issue_log ADD CONSTRAINT issue_log_project_order_element_table FOREIGN KEY (project) REFERENCES order_element (id);

ALTER TABLE issue_log ADD CONSTRAINT issue_log_user_user_table FOREIGN KEY (created_by) REFERENCES user_table (id);

ALTER TABLE issue_log ADD CONSTRAINT issue_log_unique_code UNIQUE (code);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-issue_log-table', 'misha/vova', 'db.changelog-1.5.xml', NOW(), 483, '7:baef2f27ea3a499e89242f2c6ac25f4a', 'createTable tableName=issue_log; addForeignKeyConstraint baseTableName=issue_log, constraintName=issue_log_project_order_element_table, referencedTableName=order_element; addForeignKeyConstraint baseTableName=issue_log, constraintName=issue_log_us...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-risk_log-table::misha/vova
CREATE TABLE risk_log (id BIGSERIAL NOT NULL, code VARCHAR(25), project BIGINT, description VARCHAR(1024), probability INT, impact INT, score INT, created_by BIGINT, responsible VARCHAR(512), status VARCHAR(512), contingency VARCHAR(1024), counter_measures VARCHAR(1024), action_when TIMESTAMP WITHOUT TIME ZONE, date_created TIMESTAMP WITHOUT TIME ZONE, notes VARCHAR(1024), CONSTRAINT risk_log_pkey PRIMARY KEY (id));

ALTER TABLE risk_log ADD CONSTRAINT project_order_element_table FOREIGN KEY (project) REFERENCES order_element (id);

ALTER TABLE risk_log ADD CONSTRAINT risk_log_user_user_table FOREIGN KEY (created_by) REFERENCES user_table (id);

ALTER TABLE risk_log ADD CONSTRAINT risk_log_unique_code UNIQUE (code);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-risk_log-table', 'misha/vova', 'db.changelog-1.5.xml', NOW(), 484, '7:2294cfe27eea7b25434cefb67df207db', 'createTable tableName=risk_log; addForeignKeyConstraint baseTableName=risk_log, constraintName=project_order_element_table, referencedTableName=order_element; addForeignKeyConstraint baseTableName=risk_log, constraintName=risk_log_user_user_table,...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-local-repository_location-to-configuration-table::vova
ALTER TABLE configuration ADD repository_location VARCHAR(1024);

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-local-repository_location-to-configuration-table', 'vova', 'db.changelog-1.5.xml', NOW(), 485, '7:faab504f10924072f9a8351403e4d1a2', 'addColumn tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.xml::adding-files-table::vova/jeroen
CREATE TABLE files (id BIGSERIAL NOT NULL, name VARCHAR(1024), type VARCHAR(22), date TIMESTAMP WITHOUT TIME ZONE, uploader BIGINT, parent BIGINT, CONSTRAINT files_pkey PRIMARY KEY (id));

ALTER TABLE files ADD CONSTRAINT files_uploader_fkey FOREIGN KEY (uploader) REFERENCES user_table (id);

ALTER TABLE files ADD CONSTRAINT files_parent_fkey FOREIGN KEY (parent) REFERENCES order_element (id);

UPDATE configuration SET repository_location = '' WHERE id = 404;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('adding-files-table', 'vova/jeroen', 'db.changelog-1.5.xml', NOW(), 486, '7:93edbf44ba83007ca06dbbeb1594b256', 'createTable tableName=files; addForeignKeyConstraint baseTableName=files, constraintName=files_uploader_fkey, referencedTableName=user_table; addForeignKeyConstraint baseTableName=files, constraintName=files_parent_fkey, referencedTableName=order_...', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-en.xml::replace-english-email-templates::jeroen
DELETE FROM email_template WHERE language = 3;

INSERT INTO email_template (type, language, content, subject) VALUES (0, 3, 'Hello {firstname},

A task has been assigned to {resource} in the LibrePlan project management application.

Project: {project}
Task: {task}

You can find more info here: {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'A task has been assigned to you');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 3, 'Hello {firstname}

{resource} has been removed from a task in the LibrePlan project management application.

Project: {project}
Task: {task}

You can find more info here: {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', '{resource} has been removed from task {task} in project {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 3, 'Hello {firstname},

Could you please ensure that your timesheet is up to date?

It helps the organization keep a decent track of project progress.

Let''s be honest. Nobody really likes to do this work.
But it''s just part of the job. Keeping track of time spent has impact on billing.
And thus on the bottom line, and so also the continuity of the company and your salary.

You can do it!

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Please ensure your timesheet is up to date.');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 3, 'Hi {firstname}

This is to let you know that milestone {task} has been reached in project {project}

Project: {project}
Task: {task}

Have a nice day.
Your friendly neighborhoud LibrePlan project management server.', 'Milestone {task} has been reached');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 3, 'Hi {firstname},

This is to let you know that task {task} in project {project} should begin about now.

More info can be found at {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Task {task} in project {project} should begin about now');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 3, 'Hi {firstname},

This is to let you know that task {task} in project {project} should be finished about now.

If that is not the case, please inform the project leader of this.

More info can be found at {projecturl}

Have an awesome day.
Your friendly neighborhoud LibrePlan project management server.', 'Task {task} in project {project} should be finished just about now.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('replace-english-email-templates', 'jeroen', 'db.changelog-1.5.1-en.xml', NOW(), 487, '7:80fdbf156b13ad491d2fbda27d2342f1', 'delete tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-gl.xml::add-email-templates-gl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 1, 'Ola {firstname},

Asignóuselle unha tarefa a {resource} na aplicación de xestión de proxectos LibrePlan.

Proxecto: {project}
Tarefa: {task}

Podes atopar máis información aquí: {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Asignóuselle unha tarefa');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 1, 'Ola {firstname}

{resource} foi eliminado dunha tarefa na aplicación de xestión de proxectos LibrePlan.

Proxecto: {project}
Tarefa: {task}

Podes atopar máis información aquí: {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', '{resource} foi eliminado da tarefa {task} no proxecto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 1, 'Ola {firstname}

Comunicámosche que se acadou o fito {task} no proxecto {project}

Proxecto: {project}
Tarefa: {task}

Que teñas un bo día.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Acadouse o fito {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 1, 'Ola {firstname},

Comunicámosche que a tarefa {task} no proxecto {project} debería comezar aproximadamente agora.

Podes atopar máis información en {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'A tarefa {task} no proxecto {project} debería comezar aproximadamente agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 1, 'Ola {firstname},

Comunicámosche que a tarefa {task} no proxecto {project} debería estar rematada aproximadamente agora.

Se non é o caso, por favor informa o xefe do proxecto.

Podes atopar máis información en {projecturl}

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'A tarefa {task} no proxecto {project} debería estar rematada aproximadamente agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 1, 'Ola {firstname},

Poderías asegurarte de que a túa folla de horas está actualizada?

Axuda á organización a facer un seguimento axeitado do progreso do proxecto.

Seamos honestos. A ninguén lle gusta realmente facer este traballo.
Pero é parte do traballo. Levar un rexistro do tempo dedicado ten impacto na facturación.
E polo tanto no resultado final, e tamén na continuidade da empresa e o teu salario.

Podes facelo!

Que teñas un día estupendo.
O teu amable servidor de xestión de proxectos LibrePlan do barrio.', 'Por favor, asegúrate de que a túa folla de horas está actualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-gl', 'jeroen', 'db.changelog-1.5.1-gl.xml', NOW(), 488, '7:fe1494c67561e0ae7ed49db6cdf899c2', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-es.xml::add-email-templates-es::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 2, 'Hola {firstname},

Se ha asignado una tarea a {resource} en la aplicación de gestión de proyectos LibrePlan.

Proyecto: {project}
Tarea: {task}

Puedes encontrar más información aquí: {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Se te ha asignado una tarea');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 2, 'Hola {firstname}

{resource} ha sido eliminado de una tarea en la aplicación de gestión de proyectos LibrePlan.

Proyecto: {project}
Tarea: {task}

Puedes encontrar más información aquí: {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', '{resource} ha sido eliminado de la tarea {task} en el proyecto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 2, 'Hola {firstname}

Te informamos de que se ha alcanzado el hito {task} en el proyecto {project}

Proyecto: {project}
Tarea: {task}

Que tengas un buen día.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Se ha alcanzado el hito {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 2, 'Hola {firstname},

Te informamos de que la tarea {task} en el proyecto {project} debería comenzar aproximadamente ahora.

Puedes encontrar más información en {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'La tarea {task} en el proyecto {project} debería comenzar aproximadamente ahora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 2, 'Hola {firstname},

Te informamos de que la tarea {task} en el proyecto {project} debería estar terminada aproximadamente ahora.

Si no es así, por favor informa al jefe de proyecto.

Puedes encontrar más información en {projecturl}

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'La tarea {task} en el proyecto {project} debería estar terminada aproximadamente ahora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 2, 'Hola {firstname},

¿Podrías asegurarte de que tu hoja de horas está actualizada?

Ayuda a la organización a llevar un seguimiento adecuado del progreso del proyecto.

Seamos honestos. A nadie le gusta realmente hacer este trabajo.
Pero es parte del trabajo. Llevar un registro del tiempo dedicado tiene impacto en la facturación.
Y por tanto en el resultado final, y también en la continuidad de la empresa y tu salario.

¡Tú puedes!

Que tengas un día genial.
Tu amable servidor de gestión de proyectos LibrePlan de barrio.', 'Por favor, asegúrate de que tu hoja de horas está actualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-es', 'jeroen', 'db.changelog-1.5.1-es.xml', NOW(), 489, '7:efcaaeff4e513cc2f4d1badf8fbca1c7', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ru.xml::add-email-templates-ru::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 4, 'Здравствуйте, {firstname},

Задача была назначена {resource} в приложении управления проектами LibrePlan.

Проект: {project}
Задача: {task}

Дополнительную информацию можно найти здесь: {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Вам назначена задача');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 4, 'Здравствуйте, {firstname}

{resource} был удалён из задачи в приложении управления проектами LibrePlan.

Проект: {project}
Задача: {task}

Дополнительную информацию можно найти здесь: {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', '{resource} удалён из задачи {task} в проекте {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 4, 'Здравствуйте, {firstname}

Сообщаем вам, что веха {task} достигнута в проекте {project}

Проект: {project}
Задача: {task}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Веха {task} достигнута');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 4, 'Здравствуйте, {firstname},

Сообщаем вам, что задача {task} в проекте {project} должна начаться примерно сейчас.

Дополнительную информацию можно найти по адресу {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Задача {task} в проекте {project} должна начаться примерно сейчас');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 4, 'Здравствуйте, {firstname},

Сообщаем вам, что задача {task} в проекте {project} должна быть завершена примерно сейчас.

Если это не так, пожалуйста, сообщите об этом руководителю проекта.

Дополнительную информацию можно найти по адресу {projecturl}

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Задача {task} в проекте {project} должна быть завершена примерно сейчас.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 4, 'Здравствуйте, {firstname},

Не могли бы вы убедиться, что ваш табель рабочего времени актуален?

Это помогает организации должным образом отслеживать прогресс проекта.

Будем честны. Никто по-настоящему не любит выполнять эту работу.
Но это просто часть работы. Учёт затраченного времени влияет на выставление счетов.
А значит на итоговый результат, и тем самым на стабильность компании и ваш заработок.

Вы справитесь!

Хорошего вам дня.
Ваш дружелюбный сервер управления проектами LibrePlan.', 'Пожалуйста, убедитесь, что ваш табель рабочего времени актуален.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ru', 'jeroen', 'db.changelog-1.5.1-ru.xml', NOW(), 490, '7:3051baebc66c07e9ef66a3f966b79e3f', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pt.xml::add-email-templates-pt::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 5, 'Olá {firstname},

Uma tarefa foi atribuída a {resource} na aplicação de gestão de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Pode encontrar mais informações aqui: {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'Foi-lhe atribuída uma tarefa');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 5, 'Olá {firstname}

{resource} foi removido de uma tarefa na aplicação de gestão de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Pode encontrar mais informações aqui: {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', '{resource} foi removido da tarefa {task} no projeto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 5, 'Olá {firstname}

Informamos que o marco {task} foi atingido no projeto {project}

Projeto: {project}
Tarefa: {task}

Tenha um bom dia.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'O marco {task} foi atingido');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 5, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve começar agora.

Mais informações podem ser encontradas em {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve começar agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 5, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve estar concluída agora.

Se não for o caso, informe o líder do projeto.

Mais informações podem ser encontradas em {projecturl}

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve estar concluída agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 5, 'Olá {firstname},

Poderia certificar-se de que a sua folha de horas está atualizada?

Ajuda a organização a acompanhar adequadamente o progresso do projeto.

Sejamos honestos. Ninguém gosta realmente de fazer este trabalho.
Mas faz simplesmente parte do trabalho. Acompanhar o tempo gasto tem impacto na faturação.
E portanto no resultado final, e assim também na continuidade da empresa e no seu salário.

Consegue fazer isso!

Tenha um dia fantástico.
O seu amigável servidor de gestão de projetos LibrePlan da vizinhança.', 'Por favor, certifique-se de que a sua folha de horas está atualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pt', 'jeroen', 'db.changelog-1.5.1-pt.xml', NOW(), 491, '7:95fa9ac98da1800d6486480a0d5e1504', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-it.xml::add-email-templates-it::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 6, 'Ciao {firstname},

Un compito è stato assegnato a {resource} nell''applicazione di gestione progetti LibrePlan.

Progetto: {project}
Compito: {task}

Puoi trovare ulteriori informazioni qui: {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Ti è stato assegnato un compito');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 6, 'Ciao {firstname}

{resource} è stato rimosso da un compito nell''applicazione di gestione progetti LibrePlan.

Progetto: {project}
Compito: {task}

Puoi trovare ulteriori informazioni qui: {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', '{resource} è stato rimosso dal compito {task} nel progetto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 6, 'Ciao {firstname}

Ti informiamo che la milestone {task} è stata raggiunta nel progetto {project}

Progetto: {project}
Compito: {task}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'È stata raggiunta la milestone {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 6, 'Ciao {firstname},

Ti informiamo che il compito {task} nel progetto {project} dovrebbe iniziare ora.

Ulteriori informazioni sono disponibili su {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Il compito {task} nel progetto {project} dovrebbe iniziare ora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 6, 'Ciao {firstname},

Ti informiamo che il compito {task} nel progetto {project} dovrebbe essere terminato ora.

Se non è così, ti preghiamo di informare il responsabile del progetto.

Ulteriori informazioni sono disponibili su {projecturl}

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Il compito {task} nel progetto {project} dovrebbe essere terminato ora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 6, 'Ciao {firstname},

Potresti assicurarti che il tuo foglio ore sia aggiornato?

Aiuta l''organizzazione a tenere traccia adeguatamente dell''avanzamento del progetto.

Siamo onesti. A nessuno piace davvero fare questo lavoro.
Ma fa semplicemente parte del lavoro. Tenere traccia del tempo dedicato ha un impatto sulla fatturazione.
E quindi sul risultato finale, e di conseguenza sulla continuità dell''azienda e sul tuo stipendio.

Ce la puoi fare!

Buona giornata.
Il tuo amichevole server di gestione progetti LibrePlan di quartiere.', 'Ti preghiamo di assicurarti che il tuo foglio ore sia aggiornato.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-it', 'jeroen', 'db.changelog-1.5.1-it.xml', NOW(), 492, '7:2ce4e93b2acce9290de897552d1e7328', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-fr.xml::add-email-templates-fr::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 7, 'Bonjour {firstname},

Une tâche a été assignée à {resource} dans l''application de gestion de projets LibrePlan.

Projet : {project}
Tâche : {task}

Vous pouvez trouver plus d''informations ici : {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Une tâche vous a été assignée');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 7, 'Bonjour {firstname}

{resource} a été retiré d''une tâche dans l''application de gestion de projets LibrePlan.

Projet : {project}
Tâche : {task}

Vous pouvez trouver plus d''informations ici : {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', '{resource} a été retiré de la tâche {task} dans le projet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 7, 'Bonjour {firstname}

Nous vous informons que le jalon {task} a été atteint dans le projet {project}

Projet : {project}
Tâche : {task}

Bonne journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Le jalon {task} a été atteint');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 7, 'Bonjour {firstname},

Nous vous informons que la tâche {task} dans le projet {project} devrait commencer maintenant.

Plus d''informations disponibles sur {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'La tâche {task} dans le projet {project} devrait commencer maintenant');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 7, 'Bonjour {firstname},

Nous vous informons que la tâche {task} dans le projet {project} devrait être terminée maintenant.

Si ce n''est pas le cas, veuillez en informer le chef de projet.

Plus d''informations disponibles sur {projecturl}

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'La tâche {task} dans le projet {project} devrait être terminée maintenant.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 7, 'Bonjour {firstname},

Pourriez-vous vous assurer que votre feuille de temps est à jour ?

Cela aide l''organisation à suivre correctement l''avancement du projet.

Soyons honnêtes. Personne n''aime vraiment faire ce travail.
Mais c''est simplement une partie du travail. Suivre le temps passé a un impact sur la facturation.
Et donc sur le résultat final, et ainsi sur la pérennité de l''entreprise et votre salaire.

Vous pouvez le faire !

Passez une excellente journée.
Votre serveur de gestion de projets LibrePlan de quartier.', 'Veuillez vous assurer que votre feuille de temps est à jour.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-fr', 'jeroen', 'db.changelog-1.5.1-fr.xml', NOW(), 493, '7:ac96b5ea59362d6bace5009b5c0fbf55', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-nl.xml::add-email-templates-nl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 8, 'Hallo {firstname},

Er is een taak toegewezen aan {resource} in de LibrePlan projectbeheerapplicatie.

Project: {project}
Taak: {task}

Meer informatie is hier te vinden: {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Er is een taak aan je toegewezen');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 8, 'Hallo {firstname}

{resource} is verwijderd van een taak in de LibrePlan projectbeheerapplicatie.

Project: {project}
Taak: {task}

Meer informatie is hier te vinden: {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', '{resource} is verwijderd van taak {task} in project {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 8, 'Hallo {firstname}

Hierbij laten we je weten dat mijlpaal {task} is bereikt in project {project}

Project: {project}
Taak: {task}

Heb een fijne dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Mijlpaal {task} is bereikt');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 8, 'Hallo {firstname},

Hierbij laten we je weten dat taak {task} in project {project} nu zou moeten beginnen.

Meer informatie is te vinden op {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Taak {task} in project {project} zou nu moeten beginnen');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 8, 'Hallo {firstname},

Hierbij laten we je weten dat taak {task} in project {project} nu afgerond zou moeten zijn.

Als dat niet het geval is, informeer dan de projectleider hierover.

Meer informatie is te vinden op {projecturl}

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Taak {task} in project {project} zou nu afgerond moeten zijn.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 8, 'Hallo {firstname},

Kun je er alsjeblieft voor zorgen dat je urenstaat up-to-date is?

Het helpt de organisatie om de projectvoortgang goed bij te houden.

Laten we eerlijk zijn. Niemand doet dit werk echt graag.
Maar het is nu eenmaal onderdeel van het werk. Het bijhouden van bestede tijd heeft impact op de facturatie.
En dus op het eindresultaat, en daarmee ook op de continuïteit van het bedrijf en jouw salaris.

Jij kunt het!

Heb een geweldige dag.
Je vriendelijke LibrePlan projectbeheerserver uit de buurt.', 'Zorg er alsjeblieft voor dat je urenstaat up-to-date is.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-nl', 'jeroen', 'db.changelog-1.5.1-nl.xml', NOW(), 494, '7:c26c140258d711b48d4850a30aed8c79', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pl.xml::add-email-templates-pl::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 9, 'Witaj {firstname},

Zadanie zostało przypisane do {resource} w aplikacji do zarządzania projektami LibrePlan.

Projekt: {project}
Zadanie: {task}

Więcej informacji znajdziesz tutaj: {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Przypisano Ci zadanie');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 9, 'Witaj {firstname}

{resource} został usunięty z zadania w aplikacji do zarządzania projektami LibrePlan.

Projekt: {project}
Zadanie: {task}

Więcej informacji znajdziesz tutaj: {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', '{resource} został usunięty z zadania {task} w projekcie {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 9, 'Witaj {firstname}

Informujemy, że kamień milowy {task} został osiągnięty w projekcie {project}

Projekt: {project}
Zadanie: {task}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Osiągnięto kamień milowy {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 9, 'Witaj {firstname},

Informujemy, że zadanie {task} w projekcie {project} powinno rozpocząć się mniej więcej teraz.

Więcej informacji znajdziesz pod adresem {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Zadanie {task} w projekcie {project} powinno rozpocząć się mniej więcej teraz');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 9, 'Witaj {firstname},

Informujemy, że zadanie {task} w projekcie {project} powinno być zakończone mniej więcej teraz.

Jeśli tak nie jest, poinformuj o tym kierownika projektu.

Więcej informacji znajdziesz pod adresem {projecturl}

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Zadanie {task} w projekcie {project} powinno być zakończone mniej więcej teraz.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 9, 'Witaj {firstname},

Czy mógłbyś upewnić się, że Twoja karta czasu pracy jest aktualna?

Pomaga to organizacji w odpowiednim śledzeniu postępów projektu.

Bądźmy szczerzy. Nikt naprawdę nie lubi wykonywać tej pracy.
Ale to po prostu część pracy. Śledzenie czasu pracy ma wpływ na rozliczenia.
A tym samym na wynik finansowy, a co za tym idzie na ciągłość firmy i Twoje wynagrodzenie.

Dasz radę!

Miłego dnia.
Twój przyjazny serwer zarządzania projektami LibrePlan z sąsiedztwa.', 'Prosimy upewnić się, że Twoja karta czasu pracy jest aktualna.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pl', 'jeroen', 'db.changelog-1.5.1-pl.xml', NOW(), 495, '7:6c86f8614156a2d2676d1fb3efc28ed6', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-cs.xml::add-email-templates-cs::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 10, 'Dobrý den {firstname},

V aplikaci pro správu projektů LibrePlan byl přiřazen úkol uživateli {resource}.

Projekt: {project}
Úkol: {task}

Více informací naleznete zde: {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Byl vám přiřazen úkol');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 10, 'Dobrý den {firstname}

{resource} byl odebrán z úkolu v aplikaci pro správu projektů LibrePlan.

Projekt: {project}
Úkol: {task}

Více informací naleznete zde: {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', '{resource} byl odebrán z úkolu {task} v projektu {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 10, 'Dobrý den {firstname}

Dáváme vám na vědomí, že milník {task} byl dosažen v projektu {project}

Projekt: {project}
Úkol: {task}

Mějte hezký den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Byl dosažen milník {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 10, 'Dobrý den {firstname},

Dáváme vám na vědomí, že úkol {task} v projektu {project} by měl začít přibližně nyní.

Více informací naleznete na {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Úkol {task} v projektu {project} by měl začít přibližně nyní');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 10, 'Dobrý den {firstname},

Dáváme vám na vědomí, že úkol {task} v projektu {project} by měl být přibližně nyní dokončen.

Pokud tomu tak není, informujte prosím vedoucího projektu.

Více informací naleznete na {projecturl}

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Úkol {task} v projektu {project} by měl být přibližně nyní dokončen.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 10, 'Dobrý den {firstname},

Mohli byste se prosím ujistit, že váš výkaz práce je aktuální?

Pomáhá to organizaci řádně sledovat postup projektu.

Buďme upřímní. Tuto práci nikdo opravdu rád nedělá.
Ale je to prostě součást práce. Sledování stráveného času má dopad na fakturaci.
A tedy na hospodářský výsledek, a tím i na kontinuitu společnosti a váš plat.

Zvládnete to!

Mějte skvělý den.
Váš přátelský server pro správu projektů LibrePlan ze sousedství.', 'Prosíme, ujistěte se, že váš výkaz práce je aktuální.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-cs', 'jeroen', 'db.changelog-1.5.1-cs.xml', NOW(), 496, '7:ca41dcf3b2854111925583bb674afb68', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-de.xml::add-email-templates-de::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 11, 'Hallo {firstname},

In der LibrePlan-Projektverwaltungsanwendung wurde {resource} eine Aufgabe zugewiesen.

Projekt: {project}
Aufgabe: {task}

Weitere Informationen finden Sie hier: {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Ihnen wurde eine Aufgabe zugewiesen');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 11, 'Hallo {firstname}

{resource} wurde in der LibrePlan-Projektverwaltungsanwendung von einer Aufgabe entfernt.

Projekt: {project}
Aufgabe: {task}

Weitere Informationen finden Sie hier: {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', '{resource} wurde von der Aufgabe {task} im Projekt {project} entfernt');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 11, 'Hallo {firstname}

Wir möchten Sie darüber informieren, dass der Meilenstein {task} im Projekt {project} erreicht wurde.

Projekt: {project}
Aufgabe: {task}

Haben Sie einen schönen Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Meilenstein {task} wurde erreicht');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 11, 'Hallo {firstname},

Wir möchten Sie darüber informieren, dass die Aufgabe {task} im Projekt {project} jetzt beginnen sollte.

Weitere Informationen finden Sie unter {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Aufgabe {task} im Projekt {project} sollte jetzt beginnen');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 11, 'Hallo {firstname},

Wir möchten Sie darüber informieren, dass die Aufgabe {task} im Projekt {project} jetzt abgeschlossen sein sollte.

Falls dies nicht der Fall ist, informieren Sie bitte den Projektleiter.

Weitere Informationen finden Sie unter {projecturl}

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Aufgabe {task} im Projekt {project} sollte jetzt abgeschlossen sein.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 11, 'Hallo {firstname},

Könnten Sie bitte sicherstellen, dass Ihre Zeiterfassung aktuell ist?

Dies hilft der Organisation, den Projektfortschritt angemessen zu verfolgen.

Seien wir ehrlich. Niemand macht diese Arbeit wirklich gerne.
Aber es ist nun einmal Teil der Arbeit. Die Erfassung der aufgewendeten Zeit hat Auswirkungen auf die Abrechnung.
Und damit auf das Ergebnis und somit auch auf die Kontinuität des Unternehmens und Ihr Gehalt.

Sie schaffen das!

Haben Sie einen wunderbaren Tag.
Ihr freundlicher LibrePlan-Projektverwaltungsserver aus der Nachbarschaft.', 'Bitte stellen Sie sicher, dass Ihre Zeiterfassung aktuell ist.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-de', 'jeroen', 'db.changelog-1.5.1-de.xml', NOW(), 497, '7:022442e8fc089f534b59dd5a48b9ec1f', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ca.xml::add-email-templates-ca::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 12, 'Hola {firstname},

S''ha assignat una tasca a {resource} a l''aplicació de gestió de projectes LibrePlan.

Projecte: {project}
Tasca: {task}

Podeu trobar més informació aquí: {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'Se t''ha assignat una tasca');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 12, 'Hola {firstname}

{resource} ha estat eliminat d''una tasca a l''aplicació de gestió de projectes LibrePlan.

Projecte: {project}
Tasca: {task}

Podeu trobar més informació aquí: {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', '{resource} ha estat eliminat de la tasca {task} al projecte {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 12, 'Hola {firstname}

Us informem que s''ha assolit la fita {task} al projecte {project}

Projecte: {project}
Tasca: {task}

Que tingueu un bon dia.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'S''ha assolit la fita {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 12, 'Hola {firstname},

Us informem que la tasca {task} al projecte {project} hauria de començar aproximadament ara.

Podeu trobar més informació a {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'La tasca {task} al projecte {project} hauria de començar aproximadament ara');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 12, 'Hola {firstname},

Us informem que la tasca {task} al projecte {project} hauria d''estar acabada aproximadament ara.

Si no és el cas, si us plau informeu el responsable del projecte.

Podeu trobar més informació a {projecturl}

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'La tasca {task} al projecte {project} hauria d''estar acabada aproximadament ara.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 12, 'Hola {firstname},

Podríeu assegurar-vos que el vostre full d''hores està actualitzat?

Ajuda l''organització a fer un seguiment adequat del progrés del projecte.

Siguem honestos. A ningú li agrada realment fer aquesta feina.
Però és part de la feina. Fer un seguiment del temps dedicat té impacte en la facturació.
I per tant en el resultat final, i també en la continuïtat de l''empresa i el vostre salari.

Podeu fer-ho!

Que tingueu un dia fantàstic.
El vostre amable servidor de gestió de projectes LibrePlan de barri.', 'Si us plau, assegureu-vos que el vostre full d''hores està actualitzat.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ca', 'jeroen', 'db.changelog-1.5.1-ca.xml', NOW(), 498, '7:a306da300b4587f92bd447e43330e980', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-zh_CN.xml::add-email-templates-zh_CN::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 13, '您好 {firstname}，

在 LibrePlan 项目管理应用程序中，已向 {resource} 分配了一项任务。

项目：{project}
任务：{task}

您可以在此处找到更多信息：{projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '您已被分配一项任务');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 13, '您好 {firstname}

在 LibrePlan 项目管理应用程序中，{resource} 已从一项任务中移除。

项目：{project}
任务：{task}

您可以在此处找到更多信息：{projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '{resource} 已从项目 {project} 的任务 {task} 中移除');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 13, '您好 {firstname}

特此通知您，项目 {project} 中的里程碑 {task} 已经达成。

项目：{project}
任务：{task}

祝您有愉快的一天。
您的友好的 LibrePlan 项目管理服务器。', '已达到里程碑 {task}');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 13, '您好 {firstname}，

特此通知您，项目 {project} 中的任务 {task} 现在应该开始了。

更多信息请访问 {projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '项目 {project} 中的任务 {task} 现在应该开始了');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 13, '您好 {firstname}，

特此通知您，项目 {project} 中的任务 {task} 现在应该完成了。

如果情况并非如此，请告知项目负责人。

更多信息请访问 {projecturl}

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '项目 {project} 中的任务 {task} 现在应该完成了。');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 13, '您好 {firstname}，

请您确保您的工时表是最新的，好吗？

这有助于组织妥善跟踪项目进度。

说实话，没有人真正喜欢做这项工作。
但这只是工作的一部分。记录所花费的时间会影响计费。
因此也会影响最终结果，进而影响公司的持续运营和您的薪资。

您能做到的！

祝您有美好的一天。
您的友好的 LibrePlan 项目管理服务器。', '请确保您的工时表是最新的。');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-zh_CN', 'jeroen', 'db.changelog-1.5.1-zh_CN.xml', NOW(), 499, '7:9e58cb919cdf68897c32dc8b80b99f1a', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-nb.xml::add-email-templates-nb::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 14, 'Hei {firstname},

En oppgave har blitt tildelt {resource} i LibrePlan prosjektstyringsapplikasjonen.

Prosjekt: {project}
Oppgave: {task}

Du finner mer informasjon her: {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Du har fått tildelt en oppgave');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 14, 'Hei {firstname}

{resource} er fjernet fra en oppgave i LibrePlan prosjektstyringsapplikasjonen.

Prosjekt: {project}
Oppgave: {task}

Du finner mer informasjon her: {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', '{resource} er fjernet fra oppgaven {task} i prosjektet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 14, 'Hei {firstname}

Vi vil gjerne informere deg om at milepæl {task} er nådd i prosjektet {project}

Prosjekt: {project}
Oppgave: {task}

Ha en fin dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Milepæl {task} er nådd');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 14, 'Hei {firstname},

Vi vil gjerne informere deg om at oppgaven {task} i prosjektet {project} bør begynne omtrent nå.

Mer informasjon finner du på {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Oppgaven {task} i prosjektet {project} bør begynne omtrent nå');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 14, 'Hei {firstname},

Vi vil gjerne informere deg om at oppgaven {task} i prosjektet {project} bør være ferdig omtrent nå.

Hvis det ikke er tilfellet, vennligst informer prosjektlederen om dette.

Mer informasjon finner du på {projecturl}

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Oppgaven {task} i prosjektet {project} bør være ferdig omtrent nå.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 14, 'Hei {firstname},

Kan du vennligst sørge for at timelisten din er oppdatert?

Det hjelper organisasjonen med å holde god oversikt over prosjektfremdriften.

La oss være ærlige. Ingen liker egentlig å gjøre dette arbeidet.
Men det er bare en del av jobben. Å holde styr på tidsbruk har innvirkning på fakturering.
Og dermed på bunnlinjen, og slik også på selskapets kontinuitet og din lønn.

Du klarer det!

Ha en flott dag.
Din vennlige LibrePlan prosjektstyringsserver fra nabolaget.', 'Vennligst sørg for at timelisten din er oppdatert.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-nb', 'jeroen', 'db.changelog-1.5.1-nb.xml', NOW(), 500, '7:6e6bd9c90422227286d7960161aafa53', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-fa_IR.xml::add-email-templates-fa_IR::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 15, 'سلام {firstname}،

یک وظیفه در برنامه مدیریت پروژه LibrePlan به {resource} اختصاص داده شده است.

پروژه: {project}
وظیفه: {task}

اطلاعات بیشتر را اینجا بیابید: {projecturl}

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'یک وظیفه به شما اختصاص داده شده است');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 15, 'سلام {firstname}

{resource} از یک وظیفه در برنامه مدیریت پروژه LibrePlan حذف شده است.

پروژه: {project}
وظیفه: {task}

اطلاعات بیشتر را اینجا بیابید: {projecturl}

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', '{resource} از وظیفه {task} در پروژه {project} حذف شده است');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 15, 'سلام {firstname}

می‌خواهیم به شما اطلاع دهیم که نقطه عطف {task} در پروژه {project} به دست آمده است.

پروژه: {project}
وظیفه: {task}

روز خوبی داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'به نقطه عطف {task} رسیده‌ایم');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 15, 'سلام {firstname}،

می‌خواهیم به شما اطلاع دهیم که وظیفه {task} در پروژه {project} باید اکنون شروع شود.

اطلاعات بیشتر در {projecturl} موجود است.

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'وظیفه {task} در پروژه {project} باید اکنون شروع شود');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 15, 'سلام {firstname}،

می‌خواهیم به شما اطلاع دهیم که وظیفه {task} در پروژه {project} باید اکنون به پایان رسیده باشد.

اگر اینطور نیست، لطفاً مدیر پروژه را در جریان بگذارید.

اطلاعات بیشتر در {projecturl} موجود است.

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'وظیفه {task} در پروژه {project} باید اکنون به پایان رسیده باشد.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 15, 'سلام {firstname}،

آیا می‌توانید اطمینان حاصل کنید که برگه زمانی شما به‌روز است؟

این به سازمان کمک می‌کند تا پیشرفت پروژه را به درستی پیگیری کند.

صادق باشیم. هیچ‌کس واقعاً این کار را دوست ندارد.
اما این فقط بخشی از کار است. پیگیری زمان صرف‌شده بر صورتحساب تأثیر می‌گذارد.
و بنابراین بر نتیجه نهایی، و در نتیجه بر تداوم شرکت و حقوق شما نیز تأثیر می‌گذارد.

شما می‌توانید این کار را بکنید!

روز فوق‌العاده‌ای داشته باشید.
سرور مدیریت پروژه LibrePlan دوستانه‌ی شما.', 'لطفاً اطمینان حاصل کنید که برگه زمانی شما به‌روز است.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-fa_IR', 'jeroen', 'db.changelog-1.5.1-fa_IR.xml', NOW(), 501, '7:7f095ed23ee73dd5a080e9902b5c1767', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-ja.xml::add-email-templates-ja::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 16, 'こんにちは {firstname}、

LibrePlanプロジェクト管理アプリケーションで{resource}にタスクが割り当てられました。

プロジェクト: {project}
タスク: {task}

詳細はこちらをご覧ください: {projecturl}

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'タスクが割り当てられました');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 16, 'こんにちは {firstname}

LibrePlanプロジェクト管理アプリケーションで{resource}がタスクから削除されました。

プロジェクト: {project}
タスク: {task}

詳細はこちらをご覧ください: {projecturl}

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', '{resource}がプロジェクト{project}のタスク{task}から削除されました');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 16, 'こんにちは {firstname}

プロジェクト{project}でマイルストーン{task}に到達したことをお知らせします。

プロジェクト: {project}
タスク: {task}

良い一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'マイルストーン{task}に到達しました');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 16, 'こんにちは {firstname}、

プロジェクト{project}のタスク{task}はそろそろ開始する予定であることをお知らせします。

詳細は{projecturl}をご覧ください。

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'プロジェクト{project}のタスク{task}はそろそろ開始する予定です');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 16, 'こんにちは {firstname}、

プロジェクト{project}のタスク{task}はそろそろ完了する予定であることをお知らせします。

そうでない場合は、プロジェクトリーダーにご連絡ください。

詳細は{projecturl}をご覧ください。

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'プロジェクト{project}のタスク{task}はそろそろ完了する予定です。');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 16, 'こんにちは {firstname}、

タイムシートを最新の状態に保つようにしていただけますか？

プロジェクトの進捗状況を適切に把握するために組織の助けになります。

正直に言いましょう。この作業が好きな人は誰もいません。
でも、それは仕事の一部です。費やした時間を記録することは請求に影響します。
そして最終的な結果、ひいては会社の継続性とあなたの給与にも影響します。

あなたならできます！

素晴らしい一日をお過ごしください。
ご近所のLibrePlanプロジェクト管理サーバーより。', 'タイムシートを最新の状態に保つようにしてください。');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-ja', 'jeroen', 'db.changelog-1.5.1-ja.xml', NOW(), 502, '7:957ce2fdfdbaf8ff43ee3de1c9479886', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-pt_BR.xml::add-email-templates-pt_BR::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 17, 'Olá {firstname},

Uma tarefa foi atribuída a {resource} no aplicativo de gerenciamento de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Você pode encontrar mais informações aqui: {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'Uma tarefa foi atribuída a você');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 17, 'Olá {firstname}

{resource} foi removido de uma tarefa no aplicativo de gerenciamento de projetos LibrePlan.

Projeto: {project}
Tarefa: {task}

Você pode encontrar mais informações aqui: {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', '{resource} foi removido da tarefa {task} no projeto {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 17, 'Olá {firstname}

Informamos que o marco {task} foi atingido no projeto {project}

Projeto: {project}
Tarefa: {task}

Tenha um bom dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'O marco {task} foi atingido');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 17, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve começar agora.

Mais informações podem ser encontradas em {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve começar agora');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 17, 'Olá {firstname},

Informamos que a tarefa {task} no projeto {project} deve estar concluída agora.

Caso contrário, informe o líder do projeto.

Mais informações podem ser encontradas em {projecturl}

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'A tarefa {task} no projeto {project} deve estar concluída agora.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 17, 'Olá {firstname},

Você poderia se certificar de que sua planilha de horas está atualizada?

Isso ajuda a organização a acompanhar adequadamente o progresso do projeto.

Vamos ser honestos. Ninguém realmente gosta de fazer esse trabalho.
Mas faz simplesmente parte do trabalho. Acompanhar o tempo gasto tem impacto no faturamento.
E, portanto, no resultado final, e assim também na continuidade da empresa e no seu salário.

Você consegue!

Tenha um ótimo dia.
Seu amigável servidor de gerenciamento de projetos LibrePlan da vizinhança.', 'Por favor, certifique-se de que sua planilha de horas está atualizada.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-pt_BR', 'jeroen', 'db.changelog-1.5.1-pt_BR.xml', NOW(), 503, '7:32a16aaa4ce8cceb3aa647ecec8d86e8', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.5.1-sv_SE.xml::add-email-templates-sv_SE::jeroen
INSERT INTO email_template (type, language, content, subject) VALUES (0, 18, 'Hej {firstname},

En uppgift har tilldelats {resource} i projekthanteringsapplikationen LibrePlan.

Projekt: {project}
Uppgift: {task}

Du hittar mer information här: {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'En uppgift har tilldelats dig');

INSERT INTO email_template (type, language, content, subject) VALUES (1, 18, 'Hej {firstname}

{resource} har tagits bort från en uppgift i projekthanteringsapplikationen LibrePlan.

Projekt: {project}
Uppgift: {task}

Du hittar mer information här: {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', '{resource} har tagits bort från uppgiften {task} i projektet {project}');

INSERT INTO email_template (type, language, content, subject) VALUES (2, 18, 'Hej {firstname}

Vi vill informera dig om att milstolpen {task} har uppnåtts i projektet {project}

Projekt: {project}
Uppgift: {task}

Ha en trevlig dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Milstolpen {task} har uppnåtts');

INSERT INTO email_template (type, language, content, subject) VALUES (3, 18, 'Hej {firstname},

Vi vill informera dig om att uppgiften {task} i projektet {project} bör börja ungefär nu.

Mer information finns på {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Uppgiften {task} i projektet {project} bör börja ungefär nu');

INSERT INTO email_template (type, language, content, subject) VALUES (4, 18, 'Hej {firstname},

Vi vill informera dig om att uppgiften {task} i projektet {project} bör vara klar ungefär nu.

Om så inte är fallet, vänligen informera projektledaren om detta.

Mer information finns på {projecturl}

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Uppgiften {task} i projektet {project} bör vara klar ungefär nu.');

INSERT INTO email_template (type, language, content, subject) VALUES (5, 18, 'Hej {firstname},

Kan du vänligen se till att din tidrapport är uppdaterad?

Det hjälper organisationen att hålla god koll på projektframstegen.

Vi ska vara ärliga. Ingen tycker egentligen om att göra det här arbetet.
Men det är bara en del av jobbet. Att hålla koll på nedlagd tid påverkar faktureringen.
Och därmed resultatet, och alltså även företagets kontinuitet och din lön.

Du klarar det!

Ha en fantastisk dag.
Din vänliga LibrePlan-projekthanteringsserver från grannskapet.', 'Vänligen se till att din tidrapport är uppdaterad.');

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-email-templates-sv_SE', 'jeroen', 'db.changelog-1.5.1-sv_SE.xml', NOW(), 504, '7:e763f4f97e5b522c753fd6448a20a1b9', 'insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template; insert tableName=email_template', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-column-show-reported-hours::lmann
-- Add columns to store user default setting of show/hide reported hours button
ALTER TABLE user_table ADD show_reported_hours_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-column-show-reported-hours', 'lmann', 'db.changelog-1.6.xml', NOW(), 505, '7:1a60add35d506e3cf2d574cbd91602f7', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide reported hours button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-resources::lmann
-- Add columns to store user default setting of show/hide resources button
ALTER TABLE user_table ADD show_resources_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-resources', 'lmann', 'db.changelog-1.6.xml', NOW(), 506, '7:da415aba20507377e61037d81be7fd85', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide resources button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-advances::lmann
-- Add columns to store user default setting of show/hide advances button
ALTER TABLE user_table ADD show_advances_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-advances', 'lmann', 'db.changelog-1.6.xml', NOW(), 507, '7:db1e92dba15502826ede5382be1bde60', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide advances button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-labels::lmann
-- Add columns to store user default setting of show/hide labels button
ALTER TABLE user_table ADD show_labels_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-labels', 'lmann', 'db.changelog-1.6.xml', NOW(), 508, '7:f2ac1163edd7859f9e64b7de9997f667', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide labels button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-show-moneycostbar::lmann
-- Add columns to store user default setting of show/hide moneycostbar button
ALTER TABLE user_table ADD show_money_cost_bar_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-show-moneycostbar', 'lmann', 'db.changelog-1.6.xml', NOW(), 509, '7:786a9164ea48470eae498180fc60452d', 'addColumn tableName=user_table', 'Add columns to store user default setting of show/hide moneycostbar button', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::add-new-columns-projects-filter-finished::lmann
-- Add columns to store user default setting of filter finished projects in views
ALTER TABLE user_table ADD projects_filter_finished_on BOOLEAN;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('add-new-columns-projects-filter-finished', 'lmann', 'db.changelog-1.6.xml', NOW(), 510, '7:cf7c3e06bd1fabc8fc3b821c4a38dc3d', 'addColumn tableName=user_table', 'Add columns to store user default setting of filter finished projects in views', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-reported-hours::lmann
ALTER TABLE user_table ALTER COLUMN  show_reported_hours_on SET DEFAULT FALSE;

UPDATE user_table SET show_reported_hours_on = 'FALSE' WHERE show_reported_hours_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_reported_hours_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-reported-hours', 'lmann', 'db.changelog-1.6.xml', NOW(), 511, '7:24daba031c7f498d10850815ba667e1d', 'addDefaultValue columnName=show_reported_hours_on, tableName=user_table; addNotNullConstraint columnName=show_reported_hours_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-resources::lmann
ALTER TABLE user_table ALTER COLUMN  show_resources_on SET DEFAULT FALSE;

UPDATE user_table SET show_resources_on = 'FALSE' WHERE show_resources_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_resources_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-resources', 'lmann', 'db.changelog-1.6.xml', NOW(), 512, '7:b280785d3892a55511ae0883eb9c3375', 'addDefaultValue columnName=show_resources_on, tableName=user_table; addNotNullConstraint columnName=show_resources_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-advances::lmann
ALTER TABLE user_table ALTER COLUMN  show_advances_on SET DEFAULT FALSE;

UPDATE user_table SET show_advances_on = 'FALSE' WHERE show_advances_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_advances_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-advances', 'lmann', 'db.changelog-1.6.xml', NOW(), 513, '7:e41f5c79dbd62c92ab41fe32776d29d8', 'addDefaultValue columnName=show_advances_on, tableName=user_table; addNotNullConstraint columnName=show_advances_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-labels::lmann
ALTER TABLE user_table ALTER COLUMN  show_labels_on SET DEFAULT FALSE;

UPDATE user_table SET show_labels_on = 'FALSE' WHERE show_labels_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_labels_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-labels', 'lmann', 'db.changelog-1.6.xml', NOW(), 514, '7:7cde8ac01150cfbc39dfa2fbd6ba3e98', 'addDefaultValue columnName=show_labels_on, tableName=user_table; addNotNullConstraint columnName=show_labels_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-show-money_cost_bar::lmann
ALTER TABLE user_table ALTER COLUMN  show_money_cost_bar_on SET DEFAULT FALSE;

UPDATE user_table SET show_money_cost_bar_on = 'FALSE' WHERE show_money_cost_bar_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  show_money_cost_bar_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-show-money_cost_bar', 'lmann', 'db.changelog-1.6.xml', NOW(), 515, '7:9d6898fcd7babc877d4b2424a5d2fed6', 'addDefaultValue columnName=show_money_cost_bar_on, tableName=user_table; addNotNullConstraint columnName=show_money_cost_bar_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-default-value-projects-filter-finished::lmann
ALTER TABLE user_table ALTER COLUMN  projects_filter_finished_on SET DEFAULT FALSE;

UPDATE user_table SET projects_filter_finished_on = 'FALSE' WHERE projects_filter_finished_on IS NULL;

ALTER TABLE user_table ALTER COLUMN  projects_filter_finished_on SET NOT NULL;

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-default-value-projects-filter-finished', 'lmann', 'db.changelog-1.6.xml', NOW(), 516, '7:1bb57c06809f936b8782eb7fd6d68f7c', 'addDefaultValue columnName=projects_filter_finished_on, tableName=user_table; addNotNullConstraint columnName=projects_filter_finished_on, tableName=user_table', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Changeset db.changelog-1.6.xml::set-allow_to_gather_usage_stats-to-true::jeroen
UPDATE configuration SET allow_to_gather_usage_stats_enabled = 'TRUE';

INSERT INTO databasechangelog (ID, AUTHOR, FILENAME, DATEEXECUTED, ORDEREXECUTED, MD5SUM, DESCRIPTION, COMMENTS, EXECTYPE, CONTEXTS, LABELS, LIQUIBASE, DEPLOYMENT_ID) VALUES ('set-allow_to_gather_usage_stats-to-true', 'jeroen', 'db.changelog-1.6.xml', NOW(), 517, '7:e568769d4318a3a3deb56d383981fbf9', 'update tableName=configuration', '', 'EXECUTED', NULL, NULL, '3.5.1', '7988093552');

-- Release Database Lock
UPDATE databasechangeloglock SET LOCKED = FALSE, LOCKEDBY = NULL, LOCKGRANTED = NULL WHERE ID = 1;

