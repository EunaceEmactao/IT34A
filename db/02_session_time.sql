
-- session sql 
CREATE TABLE user_sessions(
    session_id INT AUTO_INCREMENT PRIMARY KEY,

    user_id INT NOT NULL,

    session_start DATETIME NOT NULL DEFAULT CURRENT TIMESTAMP,
    session_end DATETIME DEFAULT NULL,
    session_duration INT DEFAULT NULL,

    CONSTRAINT fk_user_sessions_user_id
    FOREIGN KEY (user_id)
    REFERENCES users(user_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);

-- COMMIT 2 NANI 
-- commit 1 kay katong functions file 