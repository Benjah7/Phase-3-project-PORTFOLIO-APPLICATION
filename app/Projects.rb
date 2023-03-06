class Project < ActiveRecord::Base
    belongs_to :user
   
     enum project_status: { active: 0, archived: 1 }
   
     validates :title, presence: true
     validates :description, presence: true
     validates :project_Github_url, presence: true
   
    
   end
   