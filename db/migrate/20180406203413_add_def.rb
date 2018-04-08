class AddDef < ActiveRecord::Migration[5.1]
  def change
    change_column_default :camps, :active, from: nil, to: true
  end
end

