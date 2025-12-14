#!/usr/bin/env python3
"""
MySQL Server Database Creation Script
Creates the alx_book_store database in MySQL server
"""

import mysql.connector
from mysql.connector import Error

def create_database():
    """
    Create the alx_book_store database
    If database already exists, script should not fail
    """
    try:
        # Connect to MySQL server (without specifying database)
        connection = mysql.connector.connect(
            host='localhost',
            user='root',
            password=''  # Add your MySQL password if required
        )
        
        if connection.is_connected():
            cursor = connection.cursor()
            
            # Try to create database, ignore error if it already exists
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            
            print("Database 'alx_book_store' created successfully!")
            
            # Close cursor and connection
            cursor.close()
            connection.close()
            
    except Error as e:
        print(f"Error while connecting to MySQL: {e}")
    except Exception as e:
        print(f"An error occurred: {e}")

if __name__ == "__main__":
    create_database()