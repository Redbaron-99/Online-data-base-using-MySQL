# E-commerce Online Orders Database Management System

## Project Overview

This project implements an E-commerce Online Orders database management system using MySQL. The system is designed to optimize the supply chain business model and serve as a tracking system for MRO (Maintenance, Repair, and Operations) materials.

## Key Features

- Relational database design with three main tables: CUSTOMER, ITEM, and Customer_Orders
- Foreign key constraints to maintain data integrity
- Various SQL queries demonstrating different operations and data retrieval methods
- Support for order tracking, customer management, and inventory control

## Database Schema

### CUSTOMER Table
- Primary Key: CustomerNumber
- Fields: Firstname, Lastname, Street, City, State, ZIP, AREA, NUM, EMAIL

### ITEM Table
- Primary Key: ItemNumber
- Fields: Description, Price, Weight, AnnualSales, StockLoc

### Customer_Orders Table
- Primary Key: Combination of OrderNumber and ItemNumber
- Foreign Keys: CustomerNumber (references CUSTOMER table), ItemNumber (references ITEM table)
- Fields: NoItems, OrderDate, ReqShipDate, ActShipDate, ShipCarrier, ItemQuantity

## Implemented Queries

1. List items ordered by a specific customer
2. Show customers who ordered a particular item
3. Generate a pick list for a specific order number
4. List orders that were shipped late
5. Display items ordered in a particular month
6. Retrieve customer details based on customer number
7. Modify the Item table by adding a new column for charity donations
8. Retrieve stock location by ItemNumber for a specific order

## Technical Implementation

- Database: MySQL
- SQL operations: SELECT, JOIN, INSERT, UPDATE, ALTER TABLE
- Date functions for filtering and comparison
- Table creation with primary and foreign key constraints

## Project Structure

```
Redbaron-99-Online-data-base-using-MySQL/
├── README.md
├── Query-1.sql
├── Query-2.sql
├── Query-3.sql
├── Query-4.sql
├── Query-5.sql
├── Query-6.sql
├── Query-7.sql
├── Query-8.sql
└── Vijay Kanase_SQL Script.sql
```

## Future Enhancements

1. Implement stored procedures for complex operations
2. Add indexing for performance optimization
3. Develop a user interface for easier data management
4. Implement data analytics and reporting features
5. Integrate with other business systems for comprehensive supply chain management

This E-commerce Online Orders database management system provides a robust foundation for tracking orders, managing customers, and controlling inventory. It can be further expanded to meet specific business needs and integrate with other systems for a comprehensive e-commerce solution[1][2].

Citations:
[1] https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/47064365/73764281-0e71-4e91-b9fb-4ed1df95b993/Tableau-Project-_-Vijay-Kanase.docx
[2] https://ppl-ai-file-upload.s3.amazonaws.com/web/direct-files/47064365/6fdb155a-69b2-4124-9f36-3811fe544fe3/paste.txt
