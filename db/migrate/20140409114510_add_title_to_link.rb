class AddTitleToLink < ActiveRecord::Migration
  def change
    add_column :links, :title, :string
  end
end


# add_column(table_name, column_name, type, options): 
# Adds a new column to the table called table_name named column_name specified to be one of the following types: :string, :text, :integer, :float, :decimal, :datetime, :timestamp, :time, :date, :binary, :boolean. A default value can be specified by passing an options hash like { default: 11 }. Other options include :limit and :null (e.g. { limit: 50, null: false }) – see ActiveRecord::ConnectionAdapters::TableDefinition#column for details.