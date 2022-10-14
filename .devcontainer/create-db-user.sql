-- SUPERUSER fixes an issue with permission that PG and ActiveRecord use.
CREATE USER vscode CREATEDB SUPERUSER;
CREATE DATABASE vscode WITH OWNER vscode;
