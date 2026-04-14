-- Вставка тестовых пользователей
INSERT INTO users (first_name, last_name, email, password, enabled)
VALUES ('John', 'Doe', 'john.doe@example.com', '$2a$10$YourHashedPasswordHere1', true),
       ('Jane', 'Smith', 'jane.smith@example.com', '$2a$10$YourHashedPasswordHere2', true),
       ('Bob', 'Johnson', 'bob.johnson@example.com', '$2a$10$YourHashedPasswordHere3', false),
       ('Alice', 'Williams', 'alice.williams@example.com', '$2a$10$YourHashedPasswordHere4', true),
       ('Charlie', 'Brown', 'charlie.brown@example.com', '$2a$10$YourHashedPasswordHere5', true);

-- Вставка authorities (права доступа)
INSERT INTO authorities (authority)
VALUES ('ROLE_USER'),
       ('ROLE_ADMIN'),
       ('ROLE_MANAGER'),
       ('PERMISSION_READ'),
       ('PERMISSION_WRITE'),
       ('PERMISSION_DELETE');

-- Вставка ролей
INSERT INTO roles (role, authority_id)
VALUES ('USER', 1),       -- ROLE_USER
       ('ADMIN', 2),      -- ROLE_ADMIN
       ('MANAGER', 3),    -- ROLE_MANAGER
       ('USER_ADMIN', 2), -- ADMIN
       ('USER_MANAGER', 3);
-- MANAGER

-- Связывание пользователей с ролями
INSERT INTO usr_role (usr_id, role_id)
VALUES
-- John Doe получает роли USER и ADMIN
(1, 1), -- USER role
(1, 2), -- ADMIN role
-- Jane Smith получает роль MANAGER
(2, 3), -- MANAGER role
-- Bob Johnson получает роль USER (disabled user)
(3, 1), -- USER role
-- Alice Williams получает роль USER
(4, 1), -- USER role
-- Charlie Brown получает роли USER и MANAGER
(5, 1), -- USER role
(5, 3); -- MANAGER role