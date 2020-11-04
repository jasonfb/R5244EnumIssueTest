class AddXyzToUsers < ActiveRecord::Migration[5.2]
  def up
    execute <<-DDL
          CREATE TYPE xyz_setting AS ENUM (
            'apple', 'bananna', 'cherry'
          );
    DDL


    add_column :users, :xyz, :xyz_setting
  end

  def down
    remove_column  :users, :xyz
    execute "DROP type xyz_setting;"
  end
end
