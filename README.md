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




# E-commerce Database Management System

This project is a Flask-based E-commerce Database Management System that includes user authentication, order tracking, customer management, and inventory control.

## Features
- **User Authentication**: Login, registration, and logout functionality with hashed passwords.
- **Order Management**: Track late shipments, generate pick lists, and display order details.
- **Customer Management**: Retrieve customer information and their associated orders.
- **Inventory Control**: Manage items, stock locations, and order-related inventory.
- **Git Integration**: Version control setup and collaboration guidelines.

## Project Structure
```
ecommerce_app/
├── app.py                     # Main Flask application
├── requirements.txt           # Python dependencies
├── templates/                 # HTML templates
│   ├── base.html
│   ├── index.html
│   ├── login.html
│   ├── register.html
│   └── list_items.html
└── README.md                  # Project documentation
```

## Prerequisites
- Python 3.6 or later
- pip (Python package manager)
- MySQL

## Setup Instructions
1. Clone the repository:
   ```bash
   git clone <repository-url>
   cd ecommerce_app
   ```
2. Create a virtual environment (optional but recommended):
   ```bash
   python3 -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```
3. Install required dependencies:
   ```bash
   pip install -r requirements.txt
   ```
4. Set up the MySQL database with the required tables and sample data (SQL scripts provided in documentation).
5. Update the database credentials in `app.py`:
   ```python
   conn = mysql.connector.connect(
       host="localhost",
       user="your_mysql_user",
       password="your_mysql_password",
       database="ecommerce_db"
   )
   ```
6. Run the Flask application:
   ```bash
   python app.py
   ```
7. Access the application in your browser at: `http://127.0.0.1:5000/`.

## Deployment

### Deploy on PythonAnywhere
1. Create an account at [PythonAnywhere](https://www.pythonanywhere.com/).
2. Upload your project files to the **Files** section.
3. Set up a virtual environment in the console:
   ```bash
   python3 -m venv venv
   source venv/bin/activate
   pip install -r requirements.txt
   ```
4. Configure the **Web App** in PythonAnywhere:
   - Choose the Flask framework.
   - Set the WSGI file to point to `app.py`.
   - Specify the virtual environment path.
5. Reload the web app to see it live at `<your-username>.pythonanywhere.com`.

### Deploy on Heroku
1. Install the Heroku CLI: [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli).
2. Create a `Procfile` in your project folder:
   ```
   web: python app.py
   ```
3. Add a `runtime.txt` file for Python version:
   ```
   python-3.9.7
   ```
4. Push the project to Heroku:
   ```bash
   heroku create
   git push heroku main
   ```
5. Access the app at the URL provided by Heroku.

## Routes
| Route                                | Description                                       | Method     |
|-------------------------------------|---------------------------------------------------|------------|
| `/`                                 | Home page with user navigation.                  | GET        |
| `/login`                            | User login functionality.                        | GET, POST  |
| `/register`                         | User registration functionality.                 | GET, POST  |
| `/logout`                           | Log out the current user.                        | GET        |
| `/list_items/<customer_id>`         | List items ordered by a specific customer.       | GET        |
| `/list_customers/<item_id>`         | List customers who ordered a specific item.      | GET        |
| `/pick_list/<order_id>`             | Generate a pick list for a specific order.       | GET        |
| `/late_orders`                      | List orders that were shipped late.              | GET        |
| `/items_by_month/<month>`           | List items ordered in a specific month.          | GET        |
| `/customer_details/<customer_id>`   | Retrieve details of a specific customer.         | GET        |
| `/modify_item_table`                | Add a new column for charity donations.          | POST       |
| `/stock_location/<order_id>/<item_id>` | Retrieve stock location for a specific item.    | GET        |

## Contribution Guidelines
1. Create a new branch for each feature or bug fix:
   ```bash
   git checkout -b <branch-name>
   ```
2. Regularly commit changes with descriptive messages:
   ```bash
   git commit -m 'Description of changes made'
   ```
3. Push your branch to the remote repository:
   ```bash
   git push origin <branch-name>
   ```
4. Open a pull request to merge changes into the main branch.

## License
This project is licensed under the MIT License.

