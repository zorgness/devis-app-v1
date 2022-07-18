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
User.destroy_all

u = User.new(email: 'test@gmail.com', password: '123456')
u.save

c = Customer.new(first_name: 'denis', last_name: 'trolel', email: 'denis@gmail.com', address: '5 rue fortia, Marseille', phone: '0708091112', user_id: u.id)
c.save

c2 = Customer.new(first_name: 'marc', last_name: 'dubois', email: 'marc@gmail.com', address: '19 rue pavillion, Aix-en-Provence', phone: '0666778899', user_id: u.id)
c2.save

q = Quotation.new(user_id: u.id, customer_id: c.id, number: 221224, date: Date.today, total_price: 3400)
q.save

q2 = Quotation.new(user_id: u.id, customer_id: c2.id, number: 221225, date: Date.today + 1, total_price: 6200)
q2.save

r = Room.new(quotation_id: q.id, name: 'salon')
r.save

r2 = Room.new(quotation_id: q.id, name: 'salle de bain')
r2.save

p1 = Product.new(name: 'spot', description: 'spot patère blanc')
p1.save

p2 = Product.new(name: 'climatisation', description: 'climatiseur reversible')
p2.save

p3 = Product.new(name: 'évier', description: 'vasque salle de bain')
p3.save

e1 = Element.new(name: 'mur')
e1.save

e2 = Element.new(name: 'plafond')
e2.save

e3 = Element.new(name: 'sol')
e3.save

a1 = Activity.new(name: 'pose')
a1.save

a2 = Activity.new(name: 'creation')
a2.save

a3 = Activity.new(name: 'installation')
a3.save

a4 = Activity.new(name: 'demolition')
a4.save

t1 = Task.new(room_id: r.id, product_id: p1.id, activity_id: a1.id, number_of_items: 3)
t1.save

t2 = Task.new(room_id: r.id, element_id: e1.id, activity_id: a2.id, m2: 4)
t2.save

t3 = Task.new(room_id: r2.id, product_id: p3.id, activity_id: a3.id, number_of_items: 1)
t3.save
