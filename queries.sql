SELECT 
    [Show].ShowID, 
    Theatre.Name AS TheatreName, 
    Movie.Title AS MovieTitle, 
    [Show].ShowTime, 
    [Show].AvailableSeats
FROM 
    [Show]
JOIN 
    Theatre ON [Show].TheatreID = Theatre.TheatreID
JOIN 
    Movie ON [Show].MovieID = Movie.MovieID;

SELECT 
    Booking.BookingID, 
    [User].Name AS UserName, 
    [Show].ShowID, 
    Movie.Title AS MovieTitle, 
    Booking.NumberOfSeats, 
    Booking.BookingDate
FROM 
    Booking
JOIN 
    [Show] ON Booking.ShowID = [Show].ShowID
JOIN 
    [User] ON Booking.UserID = [User].UserID
JOIN 
    Movie ON [Show].MovieID = Movie.MovieID;

-- This query retrieves all shows at a specific theatre on a specific date
SELECT 
    [Show].ShowID, 
    Theatre.Name AS TheatreName, 
    Movie.Title AS MovieTitle, 
    [Show].ShowTime
FROM 
    [Show]
JOIN 
    Theatre ON [Show].TheatreID = Theatre.TheatreID
JOIN 
    Movie ON [Show].MovieID = Movie.MovieID
WHERE 
    Theatre.TheatreID = 1 AND
    CAST([Show].ShowTime AS DATE) = '2023-10-25';