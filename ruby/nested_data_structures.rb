classroom_supplies = {
    room1: {
        name: "Freshman",
        number_of_students: {
          total_capacity: 50,
          current_number: 33
      },
      supplies_needed: [
          "Pencils",
          "Textbooks"]

    },
    room2: {
        name: "Sophomore",
        number_of_students: {
          total_capacity: 40,
          current_number: 39
        },
        supplies_needed: [
          "Stickie Notes",
          "Projector"]
    },
    room3: {
        name: "Junior",
        number_of_students: {
          total_capacity: 37,
          current_number: 21
        },
        supplies_needed: [
          "Soccer balls",
          "Desks"]
    },
    room4: {
        name: "Senior",
        number_of_students: {
          total_capacity: 20,
          current_number: 3
        },
        supplies_needed: [
          "Attendance Sheet",
          "Senioritis Anditdote"]
    },
}

puts classroom_supplies[:room1][:supplies_needed][0]
puts classroom_supplies[:room2][:number_of_students]
puts classroom_supplies[:room3][:name]
puts classroom_supplies[:room4][:supplies_needed][1]