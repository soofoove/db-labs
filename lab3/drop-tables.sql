-- Create a function to drop all tables
CREATE OR REPLACE FUNCTION drop_all_tables()
RETURNS void LANGUAGE plpgsql AS $$
DECLARE
    r RECORD;
BEGIN
    -- Loop through each table in the current database
    FOR r IN (SELECT tablename FROM pg_tables WHERE schemaname = current_schema()) LOOP
        -- Generate and execute a DROP TABLE command for each table
        EXECUTE 'DROP TABLE IF EXISTS ' || quote_ident(r.tablename) || ' CASCADE';
    END LOOP;
END;
$$;

-- Call the function to drop all tables
SELECT drop_all_tables();

-- Optionally, drop the function as it's no longer needed
DROP FUNCTION IF EXISTS drop_all_tables();
