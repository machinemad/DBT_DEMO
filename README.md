# Pizza Sales Data
## DBT Demo Project
#### Dataset Description
A year's worth of sales from a fictitious pizza place, including the date and time of each order and the pizzas served, with additional details on the type, size, quantity, price, and ingredients.

**Recommended Analysis**
1. How many customers do we have each day? Are there any peak hours?

2. How many pizzas are typically in an order? Do we have any bestsellers?

3. How much money did we make this year? Can we indentify any seasonality in the sales?

4. Are there any pizzas we should take of the menu, or any promotions we could leverage?


| **Table**     | **Field**        | **Description**                                                                                                                                                                                      |
|---------------|------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| orders        | order_id         | Unique identifier for each order placed by a table                                                                                                                                                   |
| orders        | date             | Date the order was placed (entered into the system prior to cooking & serving)                                                                                                                       |
| orders        | time             | Time the order was placed (entered into the system prior to cooking & serving)                                                                                                                       |
| order_details | order_details_id | Unique identifier for each pizza placed within each order (pizzas of the same type and size are kept in the same row, and the quantity increases)                                                    |
| order_details | order_id         | Foreign key that ties the details in each order to the order itself                                                                                                                                  |
| order_details | pizza_id         | Foreign key that ties the pizza ordered to its details, like size and price                                                                                                                          |
| order_details | quantity         | Quantity ordered for each pizza of the same type and size                                                                                                                                            |
| pizzas        | pizza_id         | Unique identifier for each pizza (constituted by its type and size)                                                                                                                                  |
| pizzas        | pizza_type_id    | Foreign key that ties each pizza to its broader pizza type                                                                                                                                           |
| pizzas        | size             | Size of the pizza (Small, Medium, Large, X Large, or XX Large)                                                                                                                                       |
| pizzas        | price            | Price of the pizza in USD                                                                                                                                                                            |
| pizza_types   | pizza_type_id    | Unique identifier for each pizza type                                                                                                                                                                |
| pizza_types   | name             | Name of the pizza as shown in the menu                                                                                                                                                               |
| pizza_types   | category         | Category that the pizza fall under in the menu (Classic, Chicken, Supreme, or Veggie)                                                                                                                |
| pizza_types   | ingredients      | Comma-delimited ingredients used in the pizza as shown in the menu (they all include Mozzarella Cheese, even if not specified; and they all include Tomato Sauce, unless another sauce is specified) |
