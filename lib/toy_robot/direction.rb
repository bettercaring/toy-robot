# This is the entrypoint for all directions supported by the robot
# More directions can easily be supported by creating a direction module
# under `directions` folder. eg: north_east.rb, south_west.rb
Dir[File.join(File.dirname(__FILE__), "directions/*.rb")].sort.each do |file|
  require file
end
