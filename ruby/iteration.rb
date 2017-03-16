def dinosaurs
  puts "Dinosaurs are extinct!"
  yield("T-rex", "Pterodactyl")
end

dinosaurs { |dino1, dino2| puts "But #{dino1} and #{dino2} are really cool!"}
