class ChallengeApp < ActiveRecord::Migration
  def change
    create_table :mks_users do |t|
      t.string :username, :email, :password
    end
    
    create_table :groups do |t|
      t.string :groupname
    end
    
    create_table :challenges do |t|
      t.string :title, :content
    end
    
    create_table :responses do |t|
      t.belongs_to :challenges, :mks_users  
      t.boolean :correct
    end
    
    create_table :assignments do |t|
      t.belongs_to :challenges, :groups
    end
    
    create_table :users_groups do |t|
      t.belongs_to :mks_users , :groups
    end 
      
  end
end
