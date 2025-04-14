# 🏨 Hotel Booking System (MySQL)

This project is part of the **ARTTIFAI Tech Internship - MySQL Task 3**.  
It is a complete backend system for managing hotel rooms, customer bookings, and payments using **MySQL**.

---

## 📌 Project Objectives

- Manage hotel rooms and customer data
- Handle room bookings and avoid double-booking
- Record payments and generate invoices
- Generate reports for occupancy, revenue, and customer activity

---

## 🧾 Database Structure

The system includes the following tables:

- **Rooms** – Room ID, type, price per night, availability
- **Customers** – Customer name, contact, email
- **Bookings** – Booking details, check-in/out, payment status
- **Payments** – Payment info (amount, method, date)

---

## ⚙️ How to Run This Project

### 🖥️ Using MySQL Workbench (Recommended)
1. Install [MySQL Workbench](https://dev.mysql.com/downloads/workbench/)
2. Open the file `HotelBookingSystem.sql`
3. Select all and click the ⚡ **Execute** button
4. All tables and sample data will be created

### 🌐 Using phpMyAdmin
1. Install [XAMPP](https://www.apachefriends.org/index.html)
2. Start Apache & MySQL, go to `http://localhost/phpmyadmin`
3. Create a database (e.g., `HotelDB`)
4. Import or paste the contents of `HotelBookingSystem.sql`

---

## 🧪 Sample Data Inserted

### 📋 Rooms Table
| RoomID | RoomType | PricePerNight | Availability |
|--------|----------|----------------|--------------|
| 101    | Deluxe   | 5000           | Available    |
| 102    | Standard | 3000           | Booked       |
| 103    | Suite    | 8000           | Available    |
| 104    | Standard | 3000           | Available    |

### 👤 Customers Table
| CustomerID | Name           | Contact     | Email            |
|------------|----------------|-------------|------------------|
| 1          | Raj Malhotra   | 9876543210  | raj@gmail.com    |
| 2          | Ananya Sharma  | 7894561230  | ananya@yahoo.com |

### 📅 Bookings Table
| BookingID | CustomerID | RoomID | Check-In   | Check-Out  | TotalAmount | PaymentStatus |
|-----------|------------|--------|------------|------------|--------------|----------------|
| 1001      | 1          | 102    | 2025-04-01 | 2025-04-05 | 12000        | Paid           |
| 1002      | 2          | 103    | 2025-04-10 | 2025-04-15 | 40000        | Pending        |

### 💳 Payments Table
| PaymentID | BookingID | AmountPaid | Method       | Date        |
|-----------|-----------|-------------|--------------|-------------|
| 5001      | 1001      | 12000       | Credit Card  | 2025-03-30  |
| 5002      | 1002      | 20000       | UPI          | 2025-04-08  |

---

## 🔍 Example Queries

```sql
-- List all available rooms
SELECT * FROM Rooms WHERE Availability = 'Available';

-- View all bookings
SELECT * FROM Bookings;

-- View payment history
SELECT * FROM Payments;

-- View customer info
SELECT * FROM Customers;
