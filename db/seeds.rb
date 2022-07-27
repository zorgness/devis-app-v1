# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Task.destroy_all
Product.destroy_all
Element.destroy_all
Activity.destroy_all
Room.destroy_all
Quotation.destroy_all
Customer.destroy_all

User.find_by(email: 'test@gmail.com').destroy

user1 = User.new(email: 'test@gmail.com', password: '123456')
user1.save

c = Customer.new(first_name: 'denis', last_name: 'trolel', email: 'denis@gmail.com', address: '5 rue fortia, Marseille', phone: '0708091112', user_id: user1.id)
c.save

c2 = Customer.new(first_name: 'marc', last_name: 'dubois', email: 'marc@gmail.com', address: '19 rue pavillon, Aix-en-Provence', phone: '0666778899', user_id: user1.id)

c2.save

q = Quotation.new(user_id: user1.id, customer_id: c.id, number: 221224, date: Date.today, total_price: 3400)
q.save

q2 = Quotation.new(user_id: user1.id, customer_id: c2.id, number: 221225, date: Date.today + 1, total_price: 6200)
q2.save

r = Room.new(quotation_id: q.id, name: 'salon')
r.save

r2 = Room.new(quotation_id: q.id, name: 'salle de bain')
r2.save


User.all.each do |u|

    p1 = Product.new(user_id: u.id, name: 'spot', description: 'spot patère blanc')
    p1.save

    p2 = Product.new(user_id: u.id, name: 'climatisation', description: 'climatiseur reversible')
    p2.save

    p3 = Product.new(user_id: u.id, name: 'évier', description: 'vasque salle de bain')
    p3.save

    p4 = Product.new(user_id: u.id, name: 'parquet')
    p4.save

    p5 = Product.new(user_id: u.id, name: 'enduit')
    p5.save


    p7 = Product.new(user_id: u.id, name: 'placo')
    p7.save


    e1 = Element.new(user_id: u.id, name: 'mur')
    e1.save

    e2 = Element.new(user_id: u.id, name: 'plafond')
    e2.save

    e3 = Element.new(user_id: u.id, name: 'sol')
    e3.save

    e4 = Element.new(user_id: u.id, name: 'dalle')
    e4.save

    e5 = Element.new(user_id: u.id, name: 'dalle hydrofuge')
    e5.save

    e6 = Element.new(user_id: u.id, name: 'gravat')
    e6.save

    a1 = Activity.new(user_id: u.id, name: 'pose')
    a1.save

    a2 = Activity.new(user_id: u.id, name: 'creation')
    a2.save

    a3 = Activity.new(user_id: u.id, name: 'installation')
    a3.save

    a4 = Activity.new(user_id: u.id, name: 'demolition')
    a4.save

    a5 = Activity.new(user_id: u.id, name: 'terrassement')
    a5.save

    a6 = Activity.new(user_id: u.id, name: 'evacuation')
    a6.save

    a7 = Activity.new(user_id: u.id, name: 'nettoyage')
    a7.save

    a8 = Activity.new(user_id: u.id, name: 'reprise')
    a8.save

    a9 = Activity.new(user_id: u.id, name: 'peinture')
    a9.save

    a10 = Activity.new(user_id: u.id, name: 'réagréage')
    a10.save

    a11 = Activity.new(user_id: u.id, name: 'ouverture')
    a11.save
end

