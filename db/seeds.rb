# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# User.create(name: "Dorcas")
User.create(name: 'John', full_name: 'John Doe')
User.create(name: 'Anna', full_name: 'Anna Doe')

john_id = User.find_by(name: 'John').id
anna_id = User.find_by(name: 'Anna').id

Car.create(
  name: 'Mercedes-Benz',
  model: 'E-Class Cabriolet',
  description: 'Mercedes-AMG E 53 4MATIC+ combined fuel consumption: 8.71 /100 km, combined CO2 emissions: 200 g/km',
  img: 'https://www.mercedes-benz.co.in/content/india/en/passengercars/models/cabriolet-roadster/r232-23-1/overview/_jcr_content/root/responsivegrid/tabs/tabitem/highlight/slider/image_661524872.component.damq5.3372643566415.jpg/MANUFAKTUR_spectral_blue_magno.jpg',
  finance_fee: 1365.12,
  total_amount: 87500.00,
  duration: 48,
  user_id: john_id
)

Car.create(
  name: 'Mercedes-Benz',
  model: 'Mercedes-AMG Roadster',
  description: 'Mercedes-AMG E 53 4MATIC+ combined fuel consumption: 8.71 /100 km, combined CO2 emissions: 200 g/km',
  img: 'https://www.mercedes-benz.co.in/content/india/en/passengercars/models/cabriolet-roadster/a238-fl-22-2/overview/_jcr_content/root/responsivegrid/tabs_2147443577/tabitem/highlight/slider/image_1448322380.component.damq5.3382289293948.jpg/spectral_blue_magno.jpg',
  finance_fee: 1365.12,
  total_amount: 87500.00,
  duration: 48,
  user_id: anna_id
)

Car.create(
  name: 'Mercedes-Benz',
  model: 'A-Class Limousine',
  description: 'Mercedes-AMG E 53 4MATIC+ combined fuel consumption: 8.71 /100 km, combined CO2 emissions: 200 g/km',
  img: 'https://www.mercedes-benz.co.in/content/india/en/passengercars/models/coupe/x290-e-performance-22-2/overview/_jcr_content/root/responsivegrid/tabs/tabitem/simple_teaser/simple_teaser_item.component.damq6.3350875009220.jpg/mercedes-amg-gt-63-se-perf-x290-equipment-exterior-aerodynamics-package-764x573-11-2022.jpg',
  finance_fee: 1365.12,
  total_amount: 87500.00,
  duration: 48,
  user_id: john_id
)

Car.create(
  name: 'Mercedes-Benz',
  model: 'EQS Limousine',
  description: 'Mercedes-AMG E 53 4MATIC+ combined fuel consumption: 8.71 /100 km, combined CO2 emissions: 200 g/km',
  img: 'https://www.mercedes-benz.co.in/content/india/en/passengercars/models/saloon/v297/overview/_jcr_content/root/responsivegrid/tabs/tabitem/hotspot_module/hotspot_simple_image.component.damq5.3338214080901.jpg/mercedes-eq-eqs-v297-exterior-hotspot-3302x1858-08-2022.jpg',
  finance_fee: 1365.12,
  total_amount: 87500.00,
  duration: 48,
  user_id: anna_id
)

Car.create(
  name: 'Mercedes-Benz',
  model: 'A-Class Hatchback',
  description: 'Mercedes-AMG E 53 4MATIC+ combined fuel consumption: 8.71 /100 km, combined CO2 emissions: 200 g/km',
  img: 'https://www.mercedes-benz.co.in/content/india/en/passengercars/models/hatchback/w177-fl/amg/_jcr_content/root/responsivegrid/media_slider/media_slider_item/image.component.damq5.3369509478082.jpg/Final-2022-10-A-Class-AMG-35-Hatchback-W177-Launch-Still-18-TIFF-RGB.jpg',
  finance_fee: 1365.12,
  total_amount: 87500.00,
  duration: 48,
  user_id: john_id
)
