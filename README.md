# PortfolioManagement
# CompanyPortfolioManagementSystem

IMPORTANT---
Admin login (sample)
Email: admin@gmail.com
Password: admin123


📌 Company Portfolio Management System

A Java MVC–based web application designed to manage a company’s portfolio website with a public-facing interface and a secure admin panel.
The system allows administrators to manage projects, clients, contact form submissions, and newsletter subscribers through a centralized dashboard.

🚀 Features
🌐 Public Website

View company projects

View happy clients

Contact form submission

Newsletter subscription

Clean and responsive UI

🔐 Admin Panel

Secure admin login & logout

Dashboard overview

Projects Management

Add project

View projects

Edit project

Delete project

Clients Management

Add client

View clients

Edit client

Delete client

Contacts Management

View contact submissions

Delete contacts

Subscribers Management

View newsletter subscribers

Delete subscribers

Image upload support for projects and clients

🏗️ Project Architecture (MVC)

This project follows the MVC (Model–View–Controller) architecture:

Model

Handles database operations

Communicates with MySQL using JDBC

Examples:

ProjectModel

ClientModel

ContactModel

SubscriberModel

View

JSP & HTML files for UI

Displays data from the backend

Examples:

index.jsp

admin_dashboard.jsp

admin_view_projects.jsp

Controller

Servlets handle requests & responses

Acts as a bridge between View and Model

Examples:

ProjectServlet

ClientServlet

AdminLoginServlet


🛠️ Technologies Used

Java (JSP & Servlets)

MVC Architecture

JDBC

MySQL

HTML5

CSS3

Apache Tomcat


🔒 Security Features

Admin session management

Direct admin page access blocked without login

File upload handling

Confirmation dialogs for delete actions

✨ Enhancements Implemented

Full CRUD operations for Projects & Clients

Delete functionality for Contacts & Subscribers

Image upload system

Clean, professional UI

Admin panel integration into public site

📌 Future Enhancements

Role-based access control

Pagination & search

Soft delete functionality

Dashboard analytics

Responsive mobile optimization

👨‍💻 Author

Hricha Laad
B.Tech Computer Science
Java | JSP | Servlets | MySQL