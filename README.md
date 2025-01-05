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

