create database test_logstash;

\c test_logstash;

CREATE TABLE IF NOT EXISTS items (
    item_id SERIAL PRIMARY KEY,
    code VARCHAR(255) NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE IF NOT EXISTS data_log (
  log_id SERIAL PRIMARY KEY,
  event_type VARCHAR(16), 
  time_point TIMESTAMP(6)
);