# Базы данных и SQL

## Содержание проекта:

* Семинары - скрипт (включая создание и вставку данных в таблицы) в пакетах `seminar`
  скрины выполненных тасков  в пакетах `image`
* Домашние таски - скрипт (включая создание и вставку данных в таблицы), в пакетах `homework`
  скрины выполненных тасков в пакетах `image`


## Перечень семинаров и выборка ДЗ (исключая создание и вставку данных в таблицы):

## Семинар/ДЗ №1: SQL — получение данных

Задание №1: Уникальные страны клиентов
Определите, сколько уникальных стран представлено среди клиентов.

    SELECT
    COUNT(DISTINCT Country) AS cnt_unique_countries
    FROM
    Customers;


Задание №2: Клиенты из Бразилии.
Определите количество клиентов, которые проживают в Бразилии.

    SELECT
    COUNT(*) AS cnt_brazil_customers
    FROM
    Customers
    WHERE
    Country = 'Brazil';


Задание №3: Средняя цена и количество товаров в категории 5.
Посчитайте среднюю цену и общее количество товаров в категории с идентификатором 5.

    SELECT
    AVG(Price) AS avg_price,
    COUNT(*) AS cnt_total_products
    FROM
    Products
    WHERE
    CategoryID = 5;


Задание №4: Средний возраст сотрудников на 2024-01-01.
Вычислите средний возраст сотрудников на дату 2024-01-01

    SELECT
    round(AVG(AGE), 1)  AS avg_age
    FROM
    (SELECT
    TIMESTAMPDIFF(YEAR, BirthDate, '2024-01-01') AS age
    FROM
    Employees) AS age_list;


Задание №5: Заказы в период 30 дней до 2024-02-15.
Найдите заказы, сделанные в период с 16 января по 15 февраля 2024 года, и отсортируйте их по дате заказа.

    SELECT *
    FROM
    Orders
    WHERE
    OrderDate BETWEEN '2024-01-16' AND '2024-02-15'
    ORDER BY OrderDate;


Задание №6: Количество заказов за ноябрь 2023 года (используя начальную и конечную дату)
Определите количество заказов, сделанных в ноябре 2023 года, используя начальную и конечную дату месяца.

    SELECT
    COUNT(*) AS cnt_november_orders
    FROM
    Orders
    WHERE
    OrderDate >= '2023-11-01'
    AND OrderDate <= '2023-11-30';


Задание №7: Количество заказов за январь 2024 года (используя LIKE)
Найдите количество заказов за январь 2024 года, используя оператор LIKE для фильтрации даты.

    SELECT
    COUNT(*) AS cnt_january_orders
    FROM
    Orders
    WHERE
    OrderDate LIKE '2024-01%';


Задание №8: Количество заказов за 2024 год
Определите количество заказов за 2024 года, используя функцию STRFTIME для извлечения года.

    SELECT
    COUNT(*) AS cnt_orders_2024
    FROM
    Orders
    WHERE
    YEAR(OrderDate) = 2024;


## Семинар/ДЗ №2: SQL — Группировка, агрегатные функции, подзапросы

Задание №1: Анализ влияния категорий продуктов на общий доход.
Описание: Вам необходимо проверить, как различные категории продуктов влияют на общий доход (общую сумму заказов)
в таблице OrderDetails. Подсчитайте общее количество заказов (сумму количества) и общий доход
(сумму количества * цену) для каждой категории продуктов.
Выведите результаты, включая:
● CategoryID
● Общее количество заказов (total_quantity)
● Общий доход (total_revenue)

    SELECT
    p.CategoryID,
    SUM(od.Quantity) AS total_quantity,
    round(SUM(od.Quantity * p.Price), 2)  AS total_revenue
    FROM
    OrderDetails AS od
    JOIN
    Products AS p ON od.ProductID = p.ProductID
    GROUP BY p.CategoryID
    ORDER BY total_revenue DESC;


Задание №2: Анализ частоты заказа продуктов по категориям
Описание: Напишите запрос SQL для подсчета количества заказов продуктов покаждой категории.
Подсчитайте количество уникальных заказов (OrderID) для каждой категории продуктов.
Выведите результаты, включая:
● CategoryID
● Количество уникальных заказов (order_count)
Отсортируйте результаты по убыванию количества уникальных заказов (order_count).

    SELECT
    p.CategoryID, COUNT(DISTINCT od.OrderID) AS order_count
    FROM
    OrderDetails AS od
    JOIN
    Products AS p ON od.ProductID = p.ProductID
    GROUP BY p.CategoryID
    ORDER BY order_count DESC;


Задание №3: Вывод наиболее популярных продуктов по количеству заказов.
Описание: Выведите список продуктов (название ProductName), отсортированных по количеству заказов
в порядке убывания. Подсчитайте общее количество заказов (Quantity) для каждого продукта.
Выведите результаты, включая:
● ProductName
● Общее количество заказов (total_quantity)
Отсортируйте результаты по убыванию общего количества заказов (total_quantity).

    SELECT
    p.ProductName, SUM(od.Quantity) AS total_quantity
    FROM
    OrderDetails AS od
    JOIN
    Products AS p ON od.ProductID = p.ProductID
    GROUP BY p.ProductName
    ORDER BY total_quantity DESC;



## Семинар/ДЗ №3: SQL — Объединение таблиц

Задание 1: Анализ прибыли по категориям продуктов.
Задание: Определите общую прибыль для каждой категории продуктов, используя таблицы OrderDetails, Orders и Products.
Для расчета прибыли умножьте цену продукта на количество, а затем суммируйте результаты по     категориям.

    SELECT
    c.CategoryName,
    ROUND(SUM(p.Price * od.Quantity), 2) AS total_profit
    FROM
    OrderDetails AS od
    JOIN
    Orders AS o ON od.OrderID = o.OrderID
    JOIN
    Products AS p ON od.ProductID = p.ProductID
    JOIN
    Categories AS c ON p.CategoryID = c.CategoryID
    GROUP BY c.CategoryName;


Задание 2: Количество заказов по регионам
Задание: Определите количество заказов, размещенных клиентами из различных стран, за каждый месяц

    SELECT
    c.Country AS Country,
    MONTH(o.OrderDate) AS Month,
    YEAR(o.OrderDate) AS Year,
    COUNT(o.OrderID) AS cnt_orders
    FROM
    Orders AS o
    JOIN
    Customers AS c ON o.CustomerID = c.CustomerID
    GROUP BY c.Country , MONTH(o.OrderDate) , YEAR(o.OrderDate);


Задание 3: Средняя продолжительность кредитного срока для клиентов.
Задание: Рассчитайте среднюю продолжительность кредитного срока для клиентов по категориям образования.

    SELECT
    education AS education,
    ROUND(AVG(credit_term), 1) AS avg_credit_term
    FROM
    Clusters
    GROUP BY education;


## Семинар/ДЗ №4: SQL — Оконные функции

Задание 1: Ранжирование продуктов по средней цене
Задание: Ранжируйте продукты в каждой категории на основе их средней цены (AvgPrice).
Используйте таблицы OrderDetails и Products.
Результат: В результате запроса будут следующие столбцы:
● CategoryID: идентификатор категории продукта,
● ProductID: идентификатор продукта,
● ProductName: название продукта,
● AvgPrice: средняя цена продукта,
● ProductRank: ранг продукта внутри своей категории на основе средней цены в порядке убывания.

    WITH avg_product_price AS (
    SELECT
    p.CategoryID,
    p.ProductID,
    p.ProductName,
    round(AVG(p.Price), 2) AS avg_price
    FROM Products AS p
    JOIN OrderDetails AS od ON p.ProductID = od.ProductID
    GROUP BY p.CategoryID, p.ProductID, p.ProductName
    )
    SELECT
    CategoryID,
    ProductID,
    ProductName,
    avg_price,
    RANK() OVER (PARTITION BY CategoryID ORDER BY avg_price DESC) AS rank_product
    FROM avg_product_price;


Задание 2: Средняя и максимальная сумма кредита по месяцам
Задание: Рассчитайте среднюю сумму кредита (AvgCreditAmount) для каждого кластера в каждом месяце и сравните её
с максимальной суммой кредита (MaxCreditAmount) за тот же месяц. Используйте таблицу Clusters.

    WITH avg_credit AS (
    SELECT
    month, cluster, round(AVG(credit_amount), 2)  AS avg_credit_amount
    FROM Clusters
    GROUP BY month, cluster
    ORDER BY month, cluster
    ),
    max_credit AS (
    SELECT
    month, MAX(credit_amount) AS max_credit_amount
    FROM Clusters
    GROUP BY month
    )
    SELECT
    ac.month, ac.cluster, ac.avg_credit_amount, mc.max_credit_amount
    FROM avg_credit AS ac
    JOIN max_credit AS mc ON ac.month = mc.month;


Задание 3: Разница в суммах кредита по месяцам
Задание: Создайте таблицу с разницей (Difference) между суммой кредита и предыдущей суммой кредита
по месяцам для каждого кластера. Используйте таблицу Clusters.

    WITH credit_difference AS (
    SELECT
    month, cluster, credit_amount,
    LAG(credit_amount) OVER (PARTITION BY cluster ORDER BY month) AS previous_credit_amount
    FROM Clusters
    )
    SELECT
    month,
    cluster, credit_amount, previous_credit_amount,
    COALESCE(credit_amount - previous_credit_amount, 0) AS difference
    FROM credit_difference;


## Семинар/ДЗ №5: SQL — Создание таблиц и представлений

Задание 1: Создание таблицы и изменение данных
Задание: Создайте таблицу EmployeeDetails для хранения информации о сотрудниках.
Таблица должна содержать следующие столбцы:
● EmployeeID (INTEGER, PRIMARY KEY)
● EmployeeName (TEXT)
● Position (TEXT)
● HireDate (DATE)
● Salary (NUMERIC)
После создания таблицы добавьте в неё три записи с произвольными данными о сотрудниках.

    CREATE TABLE  `homework_5`.`employeeDetails` (
    EmployeeID INT PRIMARY KEY NOT NULL,
    EmployeeName VARCHAR(100) NOT NULL,
    Position VARCHAR(100) NOT NULL,
    HireDate DATE,
    Salary INT NOT NULL
    );

    INSERT INTO `homework_5`.`employeeDetails` (`EmployeeID`, `EmployeeName`, `Position`, `HireDate`, `Salary`)
    VALUES
    (1, 'Ivan Ivanov', 'Head of Sales', '2020-03-03', 100000),
    (2, 'Petr Petrov', 'Analyst', '2024-04-04', 70000),
    (3, 'Semen Semenov', 'Accountant', '2021-05-05', 40000)
    ;

-- Получение данных из таблицы EmployeeDetails

    SELECT *
    FROM employeeDetails;



Задание 2: Создание представления
Задание: Создайте представление HighValueOrders для отображения всех заказов, сумма которых превышает 10000.
В представлении должны быть следующие столбцы:
● OrderID (идентификатор заказа),
● OrderDate (дата заказа),
● TotalAmount (общая сумма заказа, вычисленная как сумма всех Quantity * Price).

    CREATE VIEW HighValueOrders AS
    SELECT
    o.OrderID,
    o.OrderDate,
    SUM(od.Quantity * p.Price) AS total_amount
    FROM Orders AS o
    JOIN OrderDetails AS od ON o.OrderID = od.OrderID
    JOIN Products AS p ON od.ProductID = p.ProductID
    GROUP BY o.OrderID, o.OrderDate
    HAVING SUM(od.Quantity * p.Price) > 10000;

-- Получение данных из представления HighValueOrders

    SELECT *
    FROM HighValueOrders;



Задание 3: Удаление данных и таблиц
Задание: Удалите все записи из таблицы EmployeeDetails, где Salary меньше 50000.
Затем удалите таблицу EmployeeDetails из базы данных.

-- Удаление записей из таблицы EmployeeDetails, где Salary меньше 50000:

    DELETE FROM EmployeeDetails
    WHERE
    Salary < 50000;

-- Удаление таблицы EmployeeDetails

    DROP TABLE EmployeeDetails;

-- Получение данных из таблицы EmployeeDetails

    SELECT *
    FROM EmployeeDetails;


Задание 4: Создание хранимой процедуры.
Задание: Создайте хранимую процедуру GetProductSales с одним параметром ProductID.
Эта процедура должна возвращать список всех заказов, в которых участвует продукт с заданным ProductID,
включая следующие столбцы:
● OrderID (идентификатор заказа),
● OrderDate (дата заказа),
● CustomerID (идентификатор клиента).

-- Создание хранимой процедуры GetProductSales

    CREATE PROCEDURE GetProductSales(pProductID INT)
    SELECT
    od.ProductID,
    o.OrderID,
    o.OrderDate,
    o.CustomerID
    FROM Orders AS o
    JOIN OrderDetails AS od ON o.OrderID = od.OrderID
    WHERE od.ProductID = pProductID;

-- Вызов хранимой процедуры GetProductSales

    CALL GetProductSales(10);