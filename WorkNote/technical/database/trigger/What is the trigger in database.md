
In MariaDB, a **trigger** is a set of SQL statements that automatically execute in response to specific events on a table, such as `INSERT`, `UPDATE`, or `DELETE` operations. Triggers can be configured to run either **BEFORE** or **AFTER** these events. They are commonly used to enforce data integrity, maintain audit logs, or implement complex business rules within the database.

[MariaDB](https://mariadb.com/kb/en/trigger-overview/?utm_source=chatgpt.com)

**Creating a Trigger in MariaDB:**

To create a trigger, you can use the `CREATE TRIGGER` statement with the following syntax:

sql

Sao chépChỉnh sửa

`CREATE TRIGGER trigger_name {BEFORE | AFTER} {INSERT | UPDATE | DELETE} ON table_name FOR EACH ROW BEGIN     -- Trigger logic here END;`

- **`trigger_name`**: The unique name of the trigger within the database.
- **`BEFORE | AFTER`**: Specifies whether the trigger should execute before or after the triggering event.
- **`INSERT | UPDATE | DELETE`**: The event that activates the trigger.
- **`table_name`**: The table to which the trigger is associated.
- **`FOR EACH ROW`**: Indicates that the trigger will execute once for each row affected by the event.

**Example:**

Suppose you have a table named `orders` and you want to maintain a log of all insertions into this table. First, create a `orders_log` table to store the log entries:

`CREATE TABLE orders_log (     log_id INT AUTO_INCREMENT PRIMARY KEY,     order_id INT,     order_date DATETIME,     customer_id INT,     log_timestamp DATETIME DEFAULT CURRENT_TIMESTAMP );`

Next, create a trigger that inserts a record into the `orders_log` table whenever a new order is added to the `orders` table:


`CREATE TRIGGER after_order_insert AFTER INSERT ON orders FOR EACH ROW BEGIN     INSERT INTO orders_log (order_id, order_date, customer_id)     VALUES (NEW.order_id, NEW.order_date, NEW.customer_id); END;`

In this example:

- **Trigger Name**: `after_order_insert`
- **Timing**: `AFTER INSERT` – The trigger fires after a new row is inserted into the `orders` table.
- **Associated Table**: `orders`
- **Trigger Logic**: Inserts the new order details into the `orders_log` table.

Within the trigger body, the `NEW` keyword refers to the new row being inserted into the `orders` table. Similarly, in `UPDATE` or `DELETE` triggers, you can use the `OLD` keyword to reference the row before it was updated or deleted.

For more detailed information on creating triggers in MariaDB, you can refer to the official MariaDB documentation





---
## Liên quan

https://chatgpt.com/share/67a4360d-b288-8013-a2e4-4ed2f464add3