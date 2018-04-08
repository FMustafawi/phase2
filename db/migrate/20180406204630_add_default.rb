class AddDefault < ActiveRecord::Migration[5.1]
  def change
    
    change_column_default :curriculums, :active, from: nil, to: true
    change_column_default :instructors, :active, from: nil, to: true
    change_column_default :locations, :active, from: nil, to: true
    
  end
end
