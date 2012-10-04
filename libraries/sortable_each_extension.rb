module ::Global2000ChefMisc
  module SortableEachExtension
    def sorted_each(&block)
      to_hash.sort{ |a,b| a.first.to_s <=> b.first.to_s }.each(&block)
    end

    Mash.send(:include, self)
    Hash.send(:include, self)
    Chef::Node::Attribute.send(:include, self)
  end
end
