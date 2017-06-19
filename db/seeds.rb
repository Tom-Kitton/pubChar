# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

CSV.foreach("#{Rails.root}/db/data/seed_190617.csv", :headers => false) do |row|
  row.each_with_index do |val, index|

    next if val.to_s.empty?
    
    clean_val = val.squish.downcase

    if index === 0
      puts "firstname: #{clean_val}"
      Firstname.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 1
      puts "lastname: #{clean_val}"
      Lastname.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 2
      puts "occupation: #{clean_val}"
      Occupation.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 3
      puts "mother tongue: #{clean_val}"
      MotherTongue.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 4
      puts "nationality: #{clean_val}"
      Nationality.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 5
      puts "ethnicity: #{clean_val}"
      Ethnicity.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 6
      puts "gender: #{clean_val}"
      Gender.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 7
      puts "obsession: #{clean_val}"
      Obsession.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 8
      puts "order alignment: #{clean_val}"
      OrderAlignment.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 9
      puts "moral alignment: #{clean_val}"
      MoralAlignment.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 10
      puts "secret language: #{clean_val}"
      SecretLanguage.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 11
      puts "eye colour: #{clean_val}"
      EyeColour.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 12
      puts "skin base tone: #{clean_val}"
      SkinBaseTone.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 13
      puts "favourite food: #{clean_val}"
      FavouriteFood.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 14
      puts "favourite drink: #{clean_val}"
      FavouriteDrink.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 15
      puts "star sign: #{clean_val}"
      StarSign.where(content: clean_val).first_or_create!(content: clean_val)
    end

    if index === 16
      puts "ailment: #{clean_val}"
      Ailment.where(content: clean_val).first_or_create!(content: clean_val)
    end

  end
end