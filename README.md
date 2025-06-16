# BookMyShow Backend Database

This project provides a simple backend database schema and sample queries for a movie ticket booking system similar to BookMyShow.

## Features

- Manage theatres, movies, users, shows, and bookings
- Sample data for quick testing
- Example SQL queries for common operations

## Database Schema

The database consists of the following tables:

- **Theatre**: Stores theatre details
- **Movie**: Stores movie details
- **User**: Stores user information
- **Show**: Stores show timings for movies in theatres
- **Booking**: Stores user bookings for shows

## Setup Instructions

1. **Database**: Designed for SQL Server (T-SQL syntax).
2. **Create Schema**:  
   Run `create_schema.sql` to create tables and insert sample data.
3. **Run Queries**:  
   Use `queries.sql` to test data retrieval and booking queries.

## Example Queries

- List all shows with theatre and movie details
- List all bookings with user and movie details
- Find all shows at a specific theatre on a specific date

## Files

- `create_schema.sql`: Table definitions and sample data
- `queries.sql`: Example queries
- `README.md`: Project documentation

## Notes

- Table names `[User]` and `[Show]` are wrapped in brackets due to SQL reserved keywords.
- Adjust syntax if using a different SQL dialect (e.g., MySQL, PostgreSQL).

---

**Author:**  
Rakesh S R 
2025
