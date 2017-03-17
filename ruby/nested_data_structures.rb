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
    }
}

p classroom_supplies[:room1][:supplies_needed][0]
p classroom_supplies[:room2][:number_of_students]