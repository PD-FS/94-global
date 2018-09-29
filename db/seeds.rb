# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'json'
require 'set'

file_names_list = [
    'gender',
    'documentType',
    'bloodType',
    'user',
    'department',
    'city',
    'districtArea',
    'upz',
    'neighborhood',
    
    'reportCategory',
    'reportClass',
    'reportType',
    'enterpriseSector',
    'enterprise'
]
p "Validando campos..."
# Json validations
#file_names_list.each do | file_name |
#    p "      " << file_name
#    fileNameWithExtension = file_name + '.json'
#    file = File.read(Rails.root.join('db','json',fileNameWit hExtension))
#    types = JSON.parse(file)
#    types.each do |type|
#        type["Rows"].each do | row |
#            entidadesMalas = ""
#            if !(row.keys.to_set.subset?(type["Entity"].constantize.column_names.to_set))
#                entidadesMalas = entidadesMalas + type["Entity"] + ", "
#                puts (row.keys.to_set)
#                puts (type["Entity"].constantize.column_names.to_set)
#            end
#            if entidadesMalas != ""
#                raise "Error, los campos de las entidades " + entidadesMalas + " no concuerdan con el modelo"
#            end
#        end
#    end
#end
p "Eliminando datos viejos..."
## Destroy types
file_names_list.reverse_each do | file_name |
    p "      " << file_name
    fileNameWithExtension = file_name + '.json'
    file = File.read(Rails.root.join('db','json',fileNameWithExtension))
    types = JSON.parse(file)
    types.reverse_each do |type|
        type["Entity"].constantize.destroy_all
        ActiveRecord::Base.connection.reset_pk_sequence!(type["Entity"].constantize.table_name)
    end
end

p "Poblando tablas..."
## Create types
file_names_list.each do | file_name |
    p "      " << file_name
    fileNameWithExtension = file_name + '.json'
    file = File.read(Rails.root.join('db','json',fileNameWithExtension))
    types = JSON.parse(file)
    types.each do |type|
        type["Rows"].each do | row |
            type["Entity"].constantize.create(row)
        end
    end
end
p "Seed terminado"