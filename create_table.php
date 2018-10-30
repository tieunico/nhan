//This is the current format of our tables.
/* If you want to creates these tables. You must use sql editor inside
myphpadmin. Remember to erase all the comments line when you are in sql editor.
*/
CREATE TABLE bay_1 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_2 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_3 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_4 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_5 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_6 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_7 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE bay_8_9 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE tie (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE aux (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE m1 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE m2 (
    id          int AUTO_INCREMENT PRIMARY KEY,
    status      bit         NOT NULL,
    voltage     FLOAT(10,3) NOT NULL,
    current     FLOAT(10,3) NOT NULL,
    power       FLOAT(10,3) NOT NULL,
    reactive_power FLOAT(10,3)  NOT NULL,
    reg_time    TIMESTAMP
);
CREATE TABLE system_cmd(
    id          int AUTO_INCREMENT PRIMARY KEY,
    time    TIMESTAMP,
    system_command     varchar(255) NOT NULL
)
