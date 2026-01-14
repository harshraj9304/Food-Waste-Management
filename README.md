# 🍎 Food Waste Management System

A robust **full-stack web application** designed to bridge the gap between food donors and charity organizations. It efficiently manages surplus food recovery and distribution using a role-based system.

## ✨ Key Features

*   **🥗 Donor Module:** Allows users (hotels, restaurants, individuals) to list excess food details (Veg/Non-veg, Quantity, Pickup Address).
*   **🛠️ Admin Dashboard:** Centralized control panel to view all donations, manage users, and assign food pick-ups to delivery personnel based on location.
*   **📍 Location-Based Matching:** Intelligent filtering system that ensures Admins only see and manage donations within their specific district (e.g., Ghaziabad Admin sees only Ghaziabad donations).
*   **🚚 Delivery Management:** Dedicated portal for Delivery Persons to view assigned orders, accept pickups, and track delivery status.
*   **🤖 Smart Chatbot:** Integrated AI-style chatbot to answer FAQs about the donation process instantly.
*   **📱 Responsive Design:** Fully mobile-friendly interface ensuring accessility on phones, tablets, and desktops.
*   **🔒 Secure Authentication:** Role-based login system with encrypted password storage.

## 🛠️ Tech Stack

*   **Frontend:** HTML5, CSS3, JavaScript
*   **Backend:** PHP (Core)
*   **Database:** MySQL (Relational Schema)
*   **Server:** XAMPP (Apache)

## 🚀 Quick Start

1.  **Clone the Repository**
    ```bash
    git clone https://github.com/harshraj9304/Food-Waste-Management.git
    ```
2.  **Database Setup**
    *   Open PHPMyAdmin.
    *   Create a database named `foodwaste` (or check `connection.php`).
    *   Import the file `food-waste-management-system/database/demo.sql`.
3.  **Run the Project**
    *   Move the folder to `xampp/htdocs`.
    *   Start Apache and MySQL in XAMPP.
    *   Visit `http://localhost/food-waste-management-system`.

## 📂 Project Structure
The source code is organized in the `food-waste-management-system/` directory.

---
*Created by Harsh.*
