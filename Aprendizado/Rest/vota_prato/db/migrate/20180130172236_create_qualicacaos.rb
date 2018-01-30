class CreateQualicacaos < ActiveRecord::Migration[5.1]
  def change
    create_table :qualicacaos do |t|
      t.float :nota
      t.float :valor_gasto
      t.timestamps
    end
  end
end
