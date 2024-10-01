/*В базе ВСЕ работники. Но только часть менеджеры. manager_id = employee_id.
Соответственно работник ссылается на строку в той же таблице*/
CREATE TABLE employee(
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES employee (employee_id)
);
INSERT INTO employee
VALUES
-- Менеджеры (manager_id = NULL)
(1, 'Alice', 'Johnson', NULL),
(2, 'Bob', 'Smith', NULL),
(3, 'Charlie', 'Brown', NULL),

-- Сотрудники, подчиненные менеджеру с employee_id = 1
(4, 'David', 'Clark', 1),
(5, 'Eve', 'Davis', 1),

-- Сотрудники, подчиненные менеджеру с employee_id = 2
(6, 'Frank', 'Garcia', 2),
(7, 'Grace', 'Harris', 2),

-- Сотрудники, подчиненные менеджеру с employee_id = 3
(8, 'Hank', 'Martin', 3),
(9, 'Ivy', 'Walker', 3),
(10, 'Jack', 'White', 3);

SELECT e.first_name || ' ' || e.last_name AS employee,
       m.first_name || ' ' || m.last_name AS manager
FROM employee e
LEFT JOIN employee m ON m.employee_id = e.manager_id
ORDER BY manager;
