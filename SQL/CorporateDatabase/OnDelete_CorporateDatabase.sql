-- ON DELETE SET NULL
-- makes it so if you delete a related row, it sets all the other places it is as null. for example deleating a branch manager would set the manager ID in the employee tble to null.

-- ON DELETE CASCADE
-- using the above example, ON DELETE CASCADE makes it so when you delete branch manager row, all related rows in other tables are deleted as well(used mostly on  primary keys)