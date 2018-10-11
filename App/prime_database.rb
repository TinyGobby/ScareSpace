def insert_horrors
  dracula = User.create(email: 'count.dracula@transylvania.com' password: 'blood')
  pennywise = User.create(email: 'dancingclown@derry.com' password: 'kids5uc')
  vorhees = User.create(email: 'jasonthebest@crystallake.com' password: 'friday13')
  nancy = User.create(email: 'sleepynancy@freddy.com' password: 'dontgotosleep')
  johnny = User.create(email: 'heresjonny@theshining.com' password: 'allworknoplay')
  samara = User.create(email: 'girl@thering.com' password: 'leapingfromyourscreen')
  bran = Space.create(name: 'Bran Castle', address: 'Transylvania', price: "6666", description: "Rather grand", lister_id: dracula.id)
  coffin = Space.create(name: "Draculas coffin", address: 'Bran Castle Basement', price: "666", description: "Cosy", lister_id: dracula.id)
  neibolt = Space.create(name: 'Neibolt Street', address: '29 Neibolt Street', price: "666", description: 'Run down abandoned house near the trainyard', lister_id: pennywise.id)
  sewers = Space.create(name: 'Sewers', address: 'Derry, Maine', price: "666", description: 'Damp and smelly', lister_id: pennywise.id)
  crystal = Space.create(name: 'Camp Crystal Lake', address: 'Crystal Lake', price: "666", description: 'Delightfully decorated in red', lister_id: vorhees.id)
  forest = Space.create(name: 'Camp Forest Green', address: 'Crystal Lake', price: "666", description: 'Camp Blood', lister_id:vorhees.id)
  elm = Space.create(name: 'Elm Street', address: '1428 North Genesee Avenue', price: "666", description: 'A lovely colonial era townhouse', lister_id: nancy.id)
  overlook = Space.create(name: 'Overlook Hotel', address: 'Rockies', price: "666", description: 'The Shining', lister_id: johnny.id)
  maze = Space.create(name: 'The Maze', address: 'Overlook Hotel', price: "666", description: 'A bit chilly', lister_id: johnny.id)
  well = Space.create(name:'The Well', address:"The End Of Your Garden", price: "666", description: "Cold and wet", lister_id: samara.id)
  tv = Space.create(name: "Your TV", address: "Your Living Room", price: "666", description: "Lots of static", lister_id: samara.id)
  Space.list(bran.id, dracula.id, 29)
  Space.list(bran.id, dracula.id, 30)
  Space.list(bran.id, dracula.id, 31)
  Space.list(coffin.id, dracula.id, 1)
  Space.list(neibolt.id, pennywise.id, 27)
  Space.list(sewers.id, pennywise.id, 29)
  Space.list(crystal.id, vorhees.id, 13)
  Space.list(crystal.id, vorhees.id, 31)
  Space.list(forest.id, vorhees.id, 13)
  Space.list(forest.id, vorhees.id, 31)
  Space.list(elm.id, nancy.id, 31)
  Space.list(elm.id, nancy.id, 1)
  Space.list(elm.id, nancy.id, 2)
  Space.list(overlook.id, johnny.id, 31)
  Space.list(maze.id, johnny.id, 1)
  Space.list(maze.id, johnny.id, 31)
  Space.list(well.id, samara.id, 1)
  Space.list(well.id, samara.id, 2)
  Space.list(well.id, samara.id, 3)
  Space.list(well.id, samara.id, 4)
  Space.list(well.id, samara.id, 5)
  Space.list(well.id, samara.id, 6)
  Space.list(tv.id, samara.id, 7)
  Request.book(bran.id, samara.id, 30)
  Request.book(bran.id, samara.id, 31)
  Request.book(coffin.id, samara.id, 1)
  Request.book(neibolt.id, johnny.id, 27)
  Request.book(crystal.id, samara.id, 13)
  Request.book(elm.id, vorhees.id, 31)
  Request.book(maze.id, nancy.id, 1)
  Request.book(well.id, dracula.id, 1)
  Request.book(well.id, dracula.id, 2)
  Request.book(well.id, dracula.id, 3)
  Request.book(tv.id, nancy.id, 7)
end