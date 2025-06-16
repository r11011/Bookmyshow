-- Table to store theatre details
CREATE TABLE Theatre (
    TheatreID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Location VARCHAR(255) NOT NULL,
    TotalSeats INT NOT NULL
);

-- Table to store movie details
CREATE TABLE Movie (
    MovieID INT IDENTITY(1,1) PRIMARY KEY,
    Title VARCHAR(255) NOT NULL,
    Genre VARCHAR(255) NOT NULL,
    Duration INT NOT NULL,  -- duration in minutes
    Language VARCHAR(255) NOT NULL,
    ReleaseDate DATE NOT NULL
);

-- Table to store user information
CREATE TABLE [User] (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Name VARCHAR(255) NOT NULL,
    Email VARCHAR(255) UNIQUE NOT NULL,
    PhoneNumber VARCHAR(255) UNIQUE NOT NULL
);

-- Table to store shows in a theatre for a movie
CREATE TABLE [Show] (
    ShowID INT IDENTITY(1,1) PRIMARY KEY,
    TheatreID INT NOT NULL,
    MovieID INT NOT NULL,
    ShowTime DATETIME NOT NULL,
    AvailableSeats INT NOT NULL,
    FOREIGN KEY (TheatreID) REFERENCES Theatre(TheatreID),
    FOREIGN KEY (MovieID) REFERENCES Movie(MovieID)
);

-- Table to store user bookings for a show
CREATE TABLE Booking (
    BookingID INT IDENTITY(1,1) PRIMARY KEY,
    ShowID INT NOT NULL,
    UserID INT NOT NULL,
    NumberOfSeats INT NOT NULL,
    BookingDate DATE NOT NULL,
    FOREIGN KEY (ShowID) REFERENCES [Show](ShowID),
    FOREIGN KEY (UserID) REFERENCES [User](UserID)
);

INSERT INTO Theatre (Name, LAUTO_INCREMENTlSeats) VALUES
('Regal Cinema', 'Downtown', 200),
('IMAX Theatre', 'City Center', 300);

INSERT INTO Movie (Title, Genre, Duration, Language, ReleaseDate) VALUES
('Star Trek', 'Sci-Fi', 120, 'English', '2023-06-15'),
('La La Land', 'Musical', 128, 'English', '2023-07-01');

INSERT INTO [User] (Name, Email, PhoneNumber) VALUES
('Alice Johnson', 'alice.j@example.com', '123-456-7890'),
('Bob Smith', 'bob.smith@example.com', '987-654-3210');

INSERT INTO [Show] (TheatreID, MovieID, ShowTime, AvailableSeats) VALUES
(1, 1, '2023-10-25 14:00:00', 200),
(2, 2, '2023-10-25 17:00:00', 300);

INSERT INTO Booking (ShowID, UserID, NumberOfSeats, BookingDate) VALUES
(1, 1, 2, '2023-10-23'),
(2, 2, 3, '2023-10-23');

-- Insert a new theatre with placeholder values
INSERT INTO Theatre (Name, Location, TotalSeats) VALUES
('PVR: Nexus', 'Location Placeholder', 300);