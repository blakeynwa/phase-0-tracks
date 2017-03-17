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

    }
}

p classroom_supplies[:room1][:supplies_needed][0]