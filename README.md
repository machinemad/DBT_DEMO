# 🍕 Pizza Sales Data 🍕
## 📊 DBT Project

### 1. What is your dataset, and what are its tables and structure? What outcome do you want to address? 🗂️

* **Dataset Explanation:** Provide a detailed overview of your dataset, including its schema, key tables, and the relationships between them.
* **Desired Outcome:** Describe the specific business questions or problems you aim to address with this dataset.

### 📋 Dataset Description
A year's worth of sales data from a fictitious pizza place, including detailed information on each order such as date, time, pizza types, sizes, quantities, prices, and ingredients.

---

### 📊 Dataset Dictionary

| **Table**     | **Field**        | **Description**                                                                                                                                                                                      |
|---------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| **orders**        | `order_id`         | Unique identifier for each order placed by a table                                                                                                                                                   |
| **orders**        | `date`             | Date the order was placed (entered into the system prior to cooking & serving)                                                                                                                       |
| **orders**        | `time`             | Time the order was placed (entered into the system prior to cooking & serving)                                                                                                                       |
| **order_details** | `order_details_id` | Unique identifier for each pizza placed within each order (pizzas of the same type and size are kept in the same row, and the quantity increases)                                                    |
| **order_details** | `order_id`         | Foreign key that ties the details in each order to the order itself                                                                                                                                  |
| **order_details** | `pizza_id`         | Foreign key that ties the pizza ordered to its details, like size and price                                                                                                                          |
| **order_details** | `quantity`         | Quantity ordered for each pizza of the same type and size                                                                                                                                            |
| **pizzas**        | `pizza_id`         | Unique identifier for each pizza (constituted by its type and size)                                                                                                                                  |
| **pizzas**        | `pizza_type_id`    | Foreign key that ties each pizza to its broader pizza type                                                                                                                                           |
| **pizzas**        | `size`             | Size of the pizza (Small, Medium, Large, X Large, or XX Large)                                                                                                                                       |
| **pizzas**        | `price`            | Price of the pizza in USD                                                                                                                                                                            |
| **pizza_types**   | `pizza_type_id`    | Unique identifier for each pizza type                                                                                                                                                                |
| **pizza_types**   | `name`             | Name of the pizza as shown in the menu                                                                                                                                                               |
| **pizza_types**   | `category`         | Category that the pizza falls under in the menu (Classic, Chicken, Supreme, or Veggie)                                                                                                                |
| **pizza_types**   | `ingredients`      | Comma-delimited ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified) |

---

### 🔍 Recommended Analysis
1. **Customer Trends:** How many customers do we have each day? Are there any peak hours?
2. **Order Insights:** How many pizzas are typically in an order? Do we have any bestsellers?
3. **Revenue Analysis:** How much money did we make this year? Can we identify any seasonality in the sales?
4. **Menu Optimization:** Are there any pizzas we should take off the menu, or any promotions we could leverage?

🎨 Feel free to contribute or reach out with any questions or suggestions!

---

# DBT Project Presentation Checklist 📋



### 2. How is DBT architecture organized in your project? What are staging, curated, and consumption folders, and how are they materialized? 🏗️

* **DBT Architecture Overview:** Explain the purpose of each folder in your DBT project:
  - **Staging:** Raw data transformation and initial cleaning.
  - **Curated:** Data transformations that are more refined and prepared for analysis.
  - **Consumption:** Final data models used for reporting and analysis.
* **Materialization:** Discuss the materialization strategies used for each layer (e.g., table, incremental).

### 3. How are sources defined in your DBT project? 📚

* **Sources Definition:** Describe the process of defining and configuring data sources in your DBT project, including any relevant configurations or settings.

### 4. What cleaning operations were performed in staging models, and what tests and macros have you created? 🧹

* **Staging Models and Cleaning Operations:** Outline the transformations and cleaning steps applied to the raw data in staging models.
* **Tests:**
  - **Singular Test:** Provide an example of a singular test you have implemented.
  - **Generic Test:** Provide an example of a generic test you have implemented.
* **Macro:** Describe at least one macro created in your project, including its purpose and usage.

### 5. What are the curated models, and what operations (e.g., joining, stacking, incremental logic) were applied? 🔄

* **Curated Models:** Detail the curated models, including any joining or stacking operations.
* **Incremental Logic:** Explain how incremental logic is used to handle data updates and additions.

### 6. What consumption models have you created, and what business requirements do they address? 📈

* **Consumption Models:** Describe the final models used for analysis and reporting.
* **Business Requirements:** Explain how these models fulfill specific business requirements or use cases.

### 7. What is your deployment environment, and how are jobs created, scheduled, and triggered via API? 🌐

* **Deployment Environment:** Detail the environment in which your DBT project is deployed (e.g., Snowflake, BigQuery).
* **Job Creation and Scheduling:** Describe how DBT jobs are created and scheduled.
* **API Trigger Information:** Provide information on how APIs are used to trigger jobs or workflows.

### 8. What are the final results in the Snowflake environment? ❄️

* **Final Results:** Summarize the final results and outcomes of your DBT project as observed in the Snowflake environment.

