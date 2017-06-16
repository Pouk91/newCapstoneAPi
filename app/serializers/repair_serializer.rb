class RepairSerializer < ActiveModel::Serializer
  attributes :id, :year, :make, :model, :repairname, :repaircost
end
