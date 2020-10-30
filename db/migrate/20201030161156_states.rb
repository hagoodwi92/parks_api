class States < ActiveRecord::Migration[6.0]
  def change
    create_table(:states) do |t|
      t.column(:state_park, :string)
      t.column(:state, :string)

      t.timestamps()
    end
  end
end
