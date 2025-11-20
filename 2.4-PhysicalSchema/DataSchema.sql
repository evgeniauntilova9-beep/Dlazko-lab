CREATE TABLE users (
    user_id SERIAL,
    login VARCHAR(100),
    password VARCHAR(255),
    region VARCHAR(100)
);

CREATE TABLE auth_method (
    auth_id SERIAL,
    method VARCHAR(50),
    user_id INT
);

CREATE TABLE gpsmodule (
    gps_id SERIAL,
    coordinates VARCHAR(100),
    user_id INT
);

CREATE TABLE airquality (
    aq_id SERIAL,
    currentvalue REAL,
    region VARCHAR(100),
    datemeasured DATE
);

CREATE TABLE airqualityhistory (
    aqh_id SERIAL,
    aq_id INT,
    previousvalue REAL,
    datemeasured DATE
);

CREATE TABLE advice (
    advice_id SERIAL,
    text VARCHAR(500),
    user_id INT
);

CREATE TABLE recommendation (
    rec_id SERIAL,
    activitytips VARCHAR(500),
    user_id INT
);

CREATE TABLE notification (
    notif_id SERIAL,
    message VARCHAR(500),
    sentat DATE,
    user_id INT
);

CREATE TABLE voicecourse (
    course_id SERIAL,
    difficultylevel VARCHAR(50)
);

CREATE TABLE training (
    training_id SERIAL,
    audioplayback REAL,
    pitchaccuracy REAL,
    course_id INT,
    user_id INT
);

ALTER TABLE users
ADD CONSTRAINT users_pk PRIMARY KEY (user_id);

ALTER TABLE auth_method
ADD CONSTRAINT auth_method_pk PRIMARY KEY (auth_id);

ALTER TABLE gpsmodule
ADD CONSTRAINT gps_pk PRIMARY KEY (gps_id);

ALTER TABLE airquality
ADD CONSTRAINT airquality_pk PRIMARY KEY (aq_id);

ALTER TABLE airqualityhistory
ADD CONSTRAINT airqh_pk PRIMARY KEY (aqh_id);

ALTER TABLE advice
ADD CONSTRAINT advice_pk PRIMARY KEY (advice_id);

ALTER TABLE recommendation
ADD CONSTRAINT recommendation_pk PRIMARY KEY (rec_id);

ALTER TABLE notification
ADD CONSTRAINT notification_pk PRIMARY KEY (notif_id);

ALTER TABLE voicecourse
ADD CONSTRAINT voicecourse_pk PRIMARY KEY (course_id);

ALTER TABLE training
ADD CONSTRAINT training_pk PRIMARY KEY (training_id);

ALTER TABLE auth_method
ADD CONSTRAINT auth_method_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE gpsmodule
ADD CONSTRAINT gps_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE airqualityhistory
ADD CONSTRAINT airqh_aq_fk
FOREIGN KEY (aq_id)
REFERENCES airquality (aq_id);

ALTER TABLE advice
ADD CONSTRAINT advice_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE recommendation
ADD CONSTRAINT recommendation_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE notification
ADD CONSTRAINT notification_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE training
ADD CONSTRAINT training_user_fk
FOREIGN KEY (user_id)
REFERENCES users (user_id);

ALTER TABLE training
ADD CONSTRAINT training_course_fk
FOREIGN KEY (course_id)
REFERENCES voicecourse (course_id);
