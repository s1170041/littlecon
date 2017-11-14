# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(email: 's1170041@gmail.com', password: 'ss2cerichan', password_confirmation: 'ss2cerichan')


Party.create!(
	title: "タイトル", 
	venue_type: 1, 
	venue: "渋谷", 
	venue_address: "渋谷区三丁目", 
	prefecture: "東京", 
	city: "渋谷",
	man_fee: 7000,
	women_fee: 3000,
	min_age_man: 20,
	max_age_man: 29,
	min_age_women: 20,
	max_age_women: 29,
	max_participant_count: 8,
	open_time: "12/31"
	)


Profile.create!(
	user_id: 1,
	nic_name: "にっくさん",
	sex: 0, 
	age: 23, 
	postal_code: 2210842,
	address1: "東京都",
	address2: "目黒区",
	job_type: 2,
	annual_income: 800, 
	height: 170, 
	garments: 1,
	blood_type: "A",			
	smoke_flag: 0,
	drink_type: 2,
	favorite_stations: 0,
	monday: 1,
	tuesday: 0,
	wednesday: 0,
	thursday: 1,
	friday: 0,
	saturday: nil,
	sunday: nil,
	target_min_age: 20,
	target_max_age: 30,
	marriage_history: 0,
	ng_list: 1,
	self_pr: "自己PR文"
	)