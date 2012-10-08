def try_include_recipe( recipe )
  begin
    include_recipe "#{recipe}"
  rescue
    Chef::Log.info("Loading recipe #{recipe} did not work, no worries here")
  end
end
