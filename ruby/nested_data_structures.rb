art_gallery = {
  school_of_athens: {
    artist: "Raphael",
    people: [
      "Plato",
      "Aristotle",
      "Heraclitus",
      "Ptolemy",
      "Euclid"
    ],
    objects: [
      'globe',
      'chalkboard',
      'tablet'
    ]
  },
  garden_of_earthly_delights: {
    artist: "Hieronymous Bosch",
    people: [
      "Adam",
      "Eve",
      "guy with the flowers in his bottom",
    ],
    objects: [
      "backgammon board",
      "citadel",
      "flowers",
      "oversized birds",
      "oversized fruits"
    ]
  },
  the_persistence_of_memory: {
    artist: "Salvador Dali",
    people: [],
    objects: [
      "melting clock one",
      "melting clock two",
      "melting clock three"
    ]
  }
}

# add Raphael to list of people in the School of Athens

art_gallery[:school_of_athens][:people] << "Raphael"
art_gallery[:school_of_athens][:people]

# capitalize first letter of "guy with the flowers in his bottom"

art_gallery[:garden_of_earthly_delights][:people][2].capitalize
p art_gallery[:garden_of_earthly_delights][:people][2]

# remove "oversized birds" from list of objects in "the Garden of Earthly Delights"

art_gallery[:garden_of_earthly_delights][:objects].slice!(3)
p art_gallery[:garden_of_earthly_delights][:objects]