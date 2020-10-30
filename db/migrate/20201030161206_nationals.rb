class Nationals < ActiveRecord::Migration[6.0]
  def change
    create_table(:nationals) do |t|
      t.column(:national_park, :string)
      t.column(:state, :string)

      t.timestamps()
    end
  end
end
