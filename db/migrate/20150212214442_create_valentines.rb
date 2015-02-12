class CreateValentines < ActiveRecord::Migration
  def change
    create_table :valentines do |t|
      t.string :name
      t.string :message
    end
  end
end
