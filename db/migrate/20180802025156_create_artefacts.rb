class CreateArtefacts < ActiveRecord::Migration[5.2]
  def change
    create_table :artefacts do |t|
      t.string :name
      t.string :key
      t.belongs_to :project, index:true, foreign_key: true

      t.timestamps nulls: false
    end
  end
end
