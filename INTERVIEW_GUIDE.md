# Interview Guide: Food Waste Management System

**Project Title:** Food Waste Management System
**Tech Stack:** PHP, MySQL, JavaScript, HTML, CSS

This project is a **perfect match** for the job description. Here is how to explain it technically to an interviewer.

---

## 1. Project Overview (The "Elevator Pitch")
"I built a full-stack web application to solve the problem of food wastage. The system connects three types of users: **Donors** (who have excess food), **Admins** (who manage requests), and **Delivery Persons** (who pick up and distribute food). It ensures that leftover food from restaurants or events reaches needy people instead of being thrown away."

---

## 2. improving your "Strong Understanding" (Mapping Skills to Code)

When they ask about your skills, point to these specific files and features in your project:

### **PHP (Backend Logic)**
*   **Role-Based Authentication:** "I implemented a secure login system carrying user states across pages."
    *   *Code Reference:* `login.php` using `$_SESSION['name']` and `header("location: ...")` to redirect specific roles (Admin/User/Delivery) to their respective dashboards.
*   **Database Interaction:** "I used the `mysqli` library to connect PHP to the database and execute queries."
    *   *Code Reference:* `connection.php` and the `WHERE` clauses in `admin/admin.php` to filter data.

### **MySQL (Database Management)**
*   **Relational Data:** "I designed a normalized database schema where `food_donations` are linked to `admin` and `delivery_persons` via IDs."
    *   *Code Reference:* The `LEFT JOIN` query in `delivery/delivery.php` which combines data from the `food_donations` table and the `admin` table to show pickup locations.
*   **Filtering & Logic:** "I implemented logic to only show donations relevant to a specific user's location."
    *   *Code Reference:* `SELECT * FROM food_donations WHERE location='$loc'` (The issue we just fixed!).

### **JavaScript (Client-Side Logic)**
*   **Chatbot:** "I built a rule-based chatbot to answer user FAQs instantly."
    *   *Code Reference:* `chatbot/constants.js` and `chatbot/index.js`.
*   **Geolocation:** "I used the Geolocation API to auto-detect a delivery person's city."
    *   *Code Reference:* `delivery/delivery.php` uses `geoplugin` logic.

### **HTML & CSS (Frontend)**
*   **Responsive Design:** "The application uses pure CSS (no frameworks) with Media Queries to ensure it works on both mobile and desktop."
    *   *Code Reference:* `home.css` (Look for `@media (max-width: 767px)`).

---

## 3. Common Interview Questions & Answers

**Q: What was the most challenging bug you faced?**
**A:** "We had a logic issue where Admins could only see donations from their *own* registered district. Use the specific example: 'If an admin registered in Chennai but a donation came from Ghaziabad, it wouldn't appear.' I debugged this by inspecting the SQL `WHERE` clause and fixing the mismatch in our registration dropdown menus to ensure data consistency."

**Q: How do you handle security?**
**A:** "I used `password_hash()` in PHP to encrypt passwords before storing them in the database, so they aren't saved as plain text."

---

## 4. Why GitHub is Crucial
The recruiter **will** ask to see the code.
*   If you say "I have it on my laptop", it looks like a college project.
*   If you say **"Here is the GitHub link, you can see my commit history and code structure,"** it looks like a professional software engineer.
