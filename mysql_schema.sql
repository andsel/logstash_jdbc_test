-- create schema test_logstash; use test_logstash;

CREATE USER 'andrea'@'%' IDENTIFIED BY 'password'; GRANT ALL PRIVILEGES ON *.* TO 'andrea'@'%' WITH GRANT OPTION;
 
CREATE TABLE IF NOT EXISTS items (
    item_id INT AUTO_INCREMENT PRIMARY KEY,
    code VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS data_log (
  log_id INT AUTO_INCREMENT PRIMARY KEY,
  event_type VARCHAR(16), 
  time_point TIMESTAMP(6)
);