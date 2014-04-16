module AssembliesHelper
  def unit_tree(root_assembly_id = nil)
    level = 0
    te = Assembly.new
    te.name = '-'
    assembly_list = [] << [te,level]

    assembly_hash=Hash.new
    assemblies = Assembly.order(:name).load
    assemblies.each do |assembly|
      unless assembly_hash[assembly.plant_id].is_a? Array
        assembly_hash[assembly.plant_id]=[]
      end
      assembly_hash[assembly.plant_id] << assembly
    end

    build_tree_for=Proc.new do |root_id|
      if assembly_hash[root_id]
        level += 1
        assembly_hash[root_id].each do |unit|
          assembly_list << [unit,level]
          build_tree_for.call unit.id
        end
        level -=1
      end
    end

    build_tree_for.call root_assembly_id

    assembly_list
  end
end
