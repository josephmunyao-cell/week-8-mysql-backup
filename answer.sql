-- ============================================================================
-- Week 8 Assignment: MySQL Database Backup and Restore
-- ============================================================================

-- ----------------------------------------------------------------------------
-- Question 1: Creating a Complete Database Backup
-- Command:
mysqldump -u root -p sales > sales_backup.sql

-- Explanation of the Command:
-- - mysqldump: The MySQL command-line utility used to export database schemas
--   and data into a SQL script file.
-- - -u root: Connects to MySQL as the 'root' user.
-- - -p: Prompts interactively for the MySQL root password (avoid typing the
--   password directly in the command line for security).
-- - sales: Specifies the target database to back up.
-- - > sales_backup.sql: Redirects the generated SQL dump output into a file
--   named sales_backup.sql in the current working directory.
--
-- Why Regular Database Backups Are Important:
-- Regular backups protect data against accidental deletions or bad updates
-- (e.g., running UPDATE or DELETE without a WHERE clause), hardware failures,
-- corruption, ransomware/security incidents, and failed schema migrations.
-- They allow a database administrator to restore the database to a known good
-- state with minimal data loss.
-- ----------------------------------------------------------------------------


-- ----------------------------------------------------------------------------
-- Question 2: Backing Up All Databases
-- Command:
mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation of the Command:
-- - mysqldump: Exports database definitions and records.
-- - -u root: Authenticates as the 'root' user.
-- - -p: Prompts for the root password interactively.
-- - --all-databases: Instructs mysqldump to export every database on the
--   MySQL server (including user databases like 'sales' and system metadata).
-- - > all_databases_backup.sql: Saves the complete multi-database dump into
--   all_databases_backup.sql.
--
-- Why Backing Up All Databases Is Important Before Server Migration:
-- A server often holds multiple interconnected databases, shared lookup tables,
-- and user/privilege definitions. Backing up all databases ensures nothing is
-- missed during migration, preserves cross-database relationships, and gives
-- you a full rollback point if the migration encounters issues.
-- ----------------------------------------------------------------------------