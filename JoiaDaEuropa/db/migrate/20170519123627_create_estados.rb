class CreateEstados < ActiveRecord::Migration[5.0]
  def change
    create_table :estados do |t|
      t.column :name, :string
    end

    Estado.create :name => "Pendente"
    Estado.create :name => "Em andamento"
    Estado.create :name => "Finalizado"

  end
end
