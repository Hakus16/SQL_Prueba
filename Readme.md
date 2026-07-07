# EcoMarket Riwi S.A.S. - Relational Database Implementation

## Project Description
This project centralizes and normalizes the core operational data for EcoMarket Riwi S.A.S. It transitions their old single Excel spreadsheet system into a structured, relational database in Third Normal Form (3FN), eliminating customer duplicates, inconsistent cities, redundant categories, and incomplete order tracking to ensure complete data integrity.

## Technologies Used
* **Database Engine:** MySQL
* **Language:** SQL (DDL, DML)
* **Documentation:** Markdown

## Database Engine Used
* **MySQL Server** (Compatible with MySQL Workbench, CLI, and local environments).

## Explanation of Normalization Process
1. **Un-normalized Form (UNF):** Found redundant customers with varying names, duplicate products, repetitive distribution center logs, and cities written in multiple ways within a single Excel spreadsheet.
2. **First Normal Form (1FN):** Ensured all attributes are atomic. Created primary keys (`id`) for all tracking layers and removed repeating groups.
3. **Second Normal Form (2FN):** Isolated partial dependencies. Split independent master catalogs into their own logical entities (`cities`, `customers`, `distribution_centers`, `categories`).
4. **Third Normal Form (3FN):** Eradicated transitive dependencies. Separated transactional layers (`orders`, `order_details`) away from master catalogs, ensuring non-key attributes depend solely on the primary key.

## Database Structure & Entity Relationship Model
The database consists of 7 normalized tables:
* `cities` -> Stores unique logistical cities.
* `customers` -> Contains verified commercial client data.
* `distribution_centers` -> Tracks physical storage and dispatch points.
* `categories` -> Product families.
* `products` -> Clean food and product items with current stock tracking.
* `orders` -> Transactional headers linking customers, cities, and dispatch centers.
* `order_details` -> Transactional item logs tracking historical sale prices.

## Instructions to Create the Database
1. Open your MySQL interface (e.g., MySQL Workbench).
2. Copy the entire unmerged SQL script (DDL, DML, and Queries).
3. Execute the script to generate the schema `bd_yesid_palacio_Esthercita` along with all tables, constraints, views, and procedures.

## Instructions to Load Data
Data injection is handled via native SQL `INSERT INTO` batches bundled directly into the script, populating master records systematically before executing transactional entries to honor foreign key constraints.

## SQL Query Explanation
The implementation includes six business intelligence queries designed for operational decision-making:
* **Query 1:** Current stock levels per product for supply planning.
* **Query 2:** Historical order volume grouped by city to identify top markets.
* **Query 3:** Total revenue generated per product category.
* **Query 4:** Products sorted by lowest stock levels to prevent out-of-stock scenarios.
* **Query 5:** Most active customers sorted by order frequency.
* **Query 6:** Financial value of current inventory held across distribution centers.

## Extra Features Included
* **Views:** Two commercial views tracking monthly sales revenue and top-selling items.
* **Stored Procedure:** `sp_get_customers` to dynamically query single clients or fetch the complete customer directory when passing a `NULL` parameter.

## Developer Information
* **Full Name:** Yesid Palacio
* **Clan:** Esthercita
* **GitHub Repository:** []
