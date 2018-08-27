# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

districtAreas = [
  {
    "name": "Usaquén",
    "initialZipCode": 110111,
    "lastZipCode": 110151,
    "surfaceArea": "65,31",
    "population": 501999,
    "density": "76,864"
  },
  {
    "name": "Chapinero",
    "initialZipCode": 110211,
    "lastZipCode": 110231,
    "surfaceArea": "38,15",
    "population": 139701,
    "density": "3661,88"
  },
  {
    "name": "Santa Fe",
    "initialZipCode": 110311,
    "lastZipCode": 110321,
    "surfaceArea": "45,17",
    "population": 110048,
    "density": "2436,3"
  },
  {
    "name": "San Cristóbal",
    "initialZipCode": 110411,
    "lastZipCode": 110441,
    "surfaceArea": "49,09",
    "population": 404697,
    "density": "8243,98"
  },
  {
    "name": "Usme",
    "initialZipCode": 110511,
    "lastZipCode": 110571,
    "surfaceArea": "215,06",
    "population": 457302,
    "density": "2126,39"
  },
  {
    "name": "Tunjuelito",
    "initialZipCode": 110611,
    "lastZipCode": 110621,
    "surfaceArea": "9,91",
    "population": 199430,
    "density": "20124,11"
  },
  {
    "name": "Bosa",
    "initialZipCode": 110711,
    "lastZipCode": 110741,
    "surfaceArea": "23,93",
    "population": 673077,
    "density": "28126,91"
  },
  {
    "name": "Kennedy",
    "initialZipCode": 110811,
    "lastZipCode": 110881,
    "surfaceArea": "38,59",
    "population": 1088443,
    "density": "28205,31"
  },
  {
    "name": "Fontibón",
    "initialZipCode": 110911,
    "lastZipCode": 110931,
    "surfaceArea": "33,28",
    "population": 394648,
    "density": "11858,41"
  },
  {
    "name": "Engativá",
    "initialZipCode": 111011,
    "lastZipCode": 111071,
    "surfaceArea": "35,88",
    "population": 887080,
    "density": "24723,52"
  },
  {
    "name": "Suba",
    "initialZipCode": 111111,
    "lastZipCode": 111176,
    "surfaceArea": "100,56",
    "population": 1218513,
    "density": "12117,27"
  },
  {
    "name": "Barrios Unidos",
    "initialZipCode": 111211,
    "lastZipCode": 111221,
    "surfaceArea": "11,90",
    "population": 243465,
    "density": "20459,24"
  },
  {
    "name": "Teusaquillo",
    "initialZipCode": 111311,
    "lastZipCode": 111321,
    "surfaceArea": "14,19",
    "population": 153025,
    "density": 10784
  },
  {
    "name": "Los Mártires",
    "initialZipCode": 111411,
    "lastZipCode": 111411,
    "surfaceArea": "6,51",
    "population": 99119,
    "density": "15225,65"
  },
  {
    "name": "Antonio Nariño",
    "initialZipCode": 111511,
    "lastZipCode": 111511,
    "surfaceArea": "4,88",
    "population": 109176,
    "density": "22372,12"
  },
  {
    "name": "Puente Aranda",
    "initialZipCode": 111611,
    "lastZipCode": 111631,
    "surfaceArea": "17,31",
    "population": 258287,
    "density": "14921,25"
  },
  {
    "name": "La Candelaria",
    "initialZipCode": 111711,
    "lastZipCode": 111711,
    "surfaceArea": "2,06",
    "population": 24088,
    "density": "11693,2"
  },
  {
    "name": "Rafael Uribe Uribe",
    "initialZipCode": 111811,
    "lastZipCode": 111841,
    "surfaceArea": "13,83",
    "population": 374246,
    "density": "27060,44"
  },
  {
    "name": "Ciudad Bolívar",
    "initialZipCode": 111911,
    "lastZipCode": 111981,
    "surfaceArea": 130,
    "population": 707569,
    "density": "5442,83"
  },
  {
    "name": "Sumapaz",
    "initialZipCode": 112011,
    "lastZipCode": 112041,
    "surfaceArea": "780,96",
    "population": 6531,
    "density": "8,36"
  }
]

districtAreas.each do |data|
  DistrictArea.create( data )
end


upzs = [
  {
    "name": "Paseo de los Libertadores",
    "district_area_id": 1
  },
  {
    "name": "Verbenal",
    "district_area_id": 1
  },
  {
    "name": "La Uribe",
    "district_area_id": 1
  },
  {
    "name": "San Cristóbal Norte",
    "district_area_id": 1
  },
  {
    "name": "Toberín",
    "district_area_id": 1
  },
  {
    "name": "Los Cedros",
    "district_area_id": 1
  },
  {
    "name": "Usaquén",
    "district_area_id": 1
  },
  {
    "name": "Country Club",
    "district_area_id": 1
  },
  {
    "name": "Santa Bárbara",
    "district_area_id": 1
  },
  {
    "name": "El Refugio",
    "district_area_id": 2
  },
  {
    "name": "San Isidro-Patios",
    "district_area_id": 2
  },
  {
    "name": "Pardo Rubio",
    "district_area_id": 2
  },
  {
    "name": "Chicó Lago",
    "district_area_id": 2
  },
  {
    "name": "Chapinero",
    "district_area_id": 2
  },
  {
    "name": "Sagrado Corazón",
    "district_area_id": 3
  },
  {
    "name": "La Macarena",
    "district_area_id": 3
  },
  {
    "name": "Las Nieves",
    "district_area_id": 3
  },
  {
    "name": "Las Cruces",
    "district_area_id": 3
  },
  {
    "name": "Lourdes",
    "district_area_id": 3
  },
  {
    "name": "San Blas",
    "district_area_id": 4
  },
  {
    "name": "Sociego",
    "district_area_id": 4
  },
  {
    "name": "20 de julio",
    "district_area_id": 4
  },
  {
    "name": "La Gloria",
    "district_area_id": 4
  },
  {
    "name": "Los Libertadores",
    "district_area_id": 4
  },
  {
    "name": "La Flora",
    "district_area_id": 5
  },
  {
    "name": "Danubio",
    "district_area_id": 5
  },
  {
    "name": "Gran Yomasa",
    "district_area_id": 5
  },
  {
    "name": "Comuneros",
    "district_area_id": 5
  },
  {
    "name": "Alfonso López",
    "district_area_id": 5
  },
  {
    "name": "Parque Entrenubes",
    "district_area_id": 5
  },
  {
    "name": "Ciudad Usme",
    "district_area_id": 5
  },
  {
    "name": "Venecia",
    "district_area_id": 6
  },
  {
    "name": "Tunjuelito",
    "district_area_id": 6
  },
  {
    "name": "Apogeo",
    "district_area_id": 7
  },
  {
    "name": "Bosa Occidental",
    "district_area_id": 7
  },
  {
    "name": "Bosa Central",
    "district_area_id": 7
  },
  {
    "name": "El Porvenir",
    "district_area_id": 7
  },
  {
    "name": "Tintal Sur",
    "district_area_id": 7
  },
  {
    "name": "Castilla",
    "district_area_id": 8
  },
  {
    "name": "Américas",
    "district_area_id": 8
  },
  {
    "name": "Carvajal",
    "district_area_id": 8
  },
  {
    "name": "Kennedy Central",
    "district_area_id": 8
  },
  {
    "name": "Timiza",
    "district_area_id": 8
  },
  {
    "name": "Tintal Norte",
    "district_area_id": 8
  },
  {
    "name": "Calandaima",
    "district_area_id": 8
  },
  {
    "name": "Corabastos",
    "district_area_id": 8
  },
  {
    "name": "Gran Britalia",
    "district_area_id": 8
  },
  {
    "name": "Patio Bonito",
    "district_area_id": 8
  },
  {
    "name": "Las Margaritas",
    "district_area_id": 8
  },
  {
    "name": "Bavaria",
    "district_area_id": 8
  },
  {
    "name": "Fontibón",
    "district_area_id": 9
  },
  {
    "name": "Fontibón-San Pablo",
    "district_area_id": 9
  },
  {
    "name": "Zona Franca",
    "district_area_id": 9
  },
  {
    "name": "Ciudad Salitre Occidente",
    "district_area_id": 9
  },
  {
    "name": "Granjas de Techo",
    "district_area_id": 9
  },
  {
    "name": "Modelia",
    "district_area_id": 9
  },
  {
    "name": "Capellanía",
    "district_area_id": 9
  },
  {
    "name": "Aeropuerto Eldorado",
    "district_area_id": 9
  },
  {
    "name": "Las Ferias",
    "district_area_id": 10
  },
  {
    "name": "Minuto de Dios",
    "district_area_id": 10
  },
  {
    "name": "Boyacá Real",
    "district_area_id": 10
  },
  {
    "name": "Santa Cecilia",
    "district_area_id": 10
  },
  {
    "name": "Bolivia",
    "district_area_id": 10
  },
  {
    "name": "Garcés Navas",
    "district_area_id": 10
  },
  {
    "name": "Engativá",
    "district_area_id": 10
  },
  {
    "name": "Jardín Botánico",
    "district_area_id": 10
  },
  {
    "name": "Álamos",
    "district_area_id": 10
  },
  {
    "name": "La Academia",
    "district_area_id": 11
  },
  {
    "name": "Guaymaral",
    "district_area_id": 11
  },
  {
    "name": "San José de Bavaria",
    "district_area_id": 11
  },
  {
    "name": "Britalia",
    "district_area_id": 11
  },
  {
    "name": "El Prado",
    "district_area_id": 11
  },
  {
    "name": "La Alhambra",
    "district_area_id": 11
  },
  {
    "name": "Casablanca SUba",
    "district_area_id": 11
  },
  {
    "name": "Niza",
    "district_area_id": 11
  },
  {
    "name": "La Floresta",
    "district_area_id": 11
  },
  {
    "name": "Suba",
    "district_area_id": 11
  },
  {
    "name": "El Rincón",
    "district_area_id": 11
  },
  {
    "name": "Tibabuyes",
    "district_area_id": 11
  },
  {
    "name": "Los Andes",
    "district_area_id": 12
  },
  {
    "name": "12 de octubre",
    "district_area_id": 12
  },
  {
    "name": "Los Alcázares",
    "district_area_id": 12
  },
  {
    "name": "Parque Salitre",
    "district_area_id": 12
  },
  {
    "name": "Galerías",
    "district_area_id": 13
  },
  {
    "name": "Teusaquillo",
    "district_area_id": 13
  },
  {
    "name": "Parque Simón Bolívar",
    "district_area_id": 13
  },
  {
    "name": "La Esmeralda",
    "district_area_id": 13
  },
  {
    "name": "Quinta Paredes",
    "district_area_id": 13
  },
  {
    "name": "Ciudad Salitre Oriental",
    "district_area_id": 13
  },
  {
    "name": "Santa Isabel",
    "district_area_id": 14
  },
  {
    "name": "La Sabana",
    "district_area_id": 14
  },
  {
    "name": "Ciudad Jardín",
    "district_area_id": 15
  },
  {
    "name": "Restrepo",
    "district_area_id": 15
  },
  {
    "name": "Ciudad Montes",
    "district_area_id": 16
  },
  {
    "name": "Muzú",
    "district_area_id": 16
  },
  {
    "name": "San Rafael",
    "district_area_id": 16
  },
  {
    "name": "Zona Industrial",
    "district_area_id": 16
  },
  {
    "name": "Puente Aranda",
    "district_area_id": 16
  },
  {
    "name": "La Candelaria",
    "district_area_id": 17
  },
  {
    "name": "San José",
    "district_area_id": 18
  },
  {
    "name": "Quiroga",
    "district_area_id": 18
  },
  {
    "name": "Marco Fidel Suárez",
    "district_area_id": 18
  },
  {
    "name": "Marruecos",
    "district_area_id": 18
  },
  {
    "name": "Diana Turbay",
    "district_area_id": 18
  },
  {
    "name": "El Mochuelo",
    "district_area_id": 19
  },
  {
    "name": "Monteblanco",
    "district_area_id": 19
  },
  {
    "name": "Arborizadora",
    "district_area_id": 19
  },
  {
    "name": "San Francisco",
    "district_area_id": 19
  },
  {
    "name": "Lucero",
    "district_area_id": 19
  },
  {
    "name": "El Tesoro",
    "district_area_id": 19
  },
  {
    "name": "Ismael Perdomo",
    "district_area_id": 19
  },
  {
    "name": "Jerusalén",
    "district_area_id": 19
  }
  
]
upzs.each do |data|
  Upz.create( data )
end