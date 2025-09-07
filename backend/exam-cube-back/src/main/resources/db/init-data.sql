use examCube;
TRUNCATE TABLE users;
INSERT INTO db_connection_config (name, type, host, port, username, password, options)
VALUES
('primary', 'mysql', 'localhost', 8080, 'root', '123456', '{"serviceName": "ORAL", "ssl": true, "connectTimeout": 5000}'),
('contestant', 'mysql', 'localhost', 3306, 'root', '123456', '{"serviceName": "ORAL"}'),
('sys', 'mysql', 'localhost', 3306, 'root', '123456', '{"ssl": false}');