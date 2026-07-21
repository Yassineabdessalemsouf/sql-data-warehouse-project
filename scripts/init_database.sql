-- ============================================================================
-- Data Warehouse Initialization Script
-- Author: Project Setup
-- Database Engine: PostgreSQL
-- Description: Creates the datawarehouse database and sets up the Medallion 
--              Architecture schemas (Bronze, Silver, Gold).
-- ============================================================================

-- Step 1: Create the Data Warehouse Database
-- Note: Run this while connected to the default 'postgres' database.
CREATE DATABASE datawarehouse;

-- ============================================================================
-- CONNECT TO 'datawarehouse' BEFORE RUNNING THE FOLLOWING COMMANDS
-- ============================================================================

-- Step 2: Create Medallion Architecture Schemas

-- Bronze Schema (Raw Data Ingestion)
CREATE SCHEMA IF NOT EXISTS bronze;

-- Silver Schema (Cleaned & Transformed Data)
CREATE SCHEMA IF NOT EXISTS silver;

-- Gold Schema (Business-Ready Data Mart / Dimensional Model)
CREATE SCHEMA IF NOT EXISTS gold;
