
-- Hotel Booking System SQL Script

-- Rooms Table
CREATE TABLE Rooms (
    RoomID INT PRIMARY KEY,
    RoomType VARCHAR(50),
    PricePerNight DECIMAL(10, 2),
    Availability VARCHAR(20) -- Available or Booked
);

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Contact VARCHAR(15),
    Email VARCHAR(100)
);

-- Bookings Table
CREATE TABLE Bookings (
    BookingID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    RoomID INT,
    CheckInDate DATE,
    CheckOutDate DATE,
    TotalAmount DECIMAL(10, 2),
    PaymentStatus VARCHAR(20),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (RoomID) REFERENCES Rooms(RoomID)
);

-- Payments Table
CREATE TABLE Payments (
    PaymentID INT PRIMARY KEY AUTO_INCREMENT,
    BookingID INT,
    AmountPaid DECIMAL(10, 2),
    PaymentMethod VARCHAR(50),
    PaymentDate DATE,
    FOREIGN KEY (BookingID) REFERENCES Bookings(BookingID)
);

-- Sample Room Data
INSERT INTO Rooms (RoomID, RoomType, PricePerNight, Availability) VALUES
(101, 'Deluxe', 5000, 'Available'),
(102, 'Standard', 3000, 'Booked'),
(103, 'Suite', 8000, 'Available'),
(104, 'Standard', 3000, 'Available');

-- Sample Customer Data
INSERT INTO Customers (Name, Contact, Email) VALUES
('Raj Malhotra', '9876543210', 'raj@gmail.com'),
('Ananya Sharma', '7894561230', 'ananya@yahoo.com');

-- Sample Booking Data
INSERT INTO Bookings (CustomerID, RoomID, CheckInDate, CheckOutDate, TotalAmount, PaymentStatus) VALUES
(1, 102, '2025-04-01', '2025-04-05', 12000, 'Paid'),
(2, 103, '2025-04-10', '2025-04-15', 40000, 'Pending');

-- Sample Payment Data
INSERT INTO Payments (BookingID, AmountPaid, PaymentMethod, PaymentDate) VALUES
(1, 12000, 'Credit Card', '2025-03-30'),
(2, 20000, 'UPI', '2025-04-08');

-- Optional: Reports (to be run separately)
-- SELECT * FROM Rooms;
-- SELECT * FROM Bookings;
-- SELECT * FROM Payments;
-- SELECT * FROM Customers;
