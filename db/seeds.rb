# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.destroy_all
Task.destroy_all
Category.destroy_all
Room.destroy_all
Quotation.destroy_all
Customer.destroy_all
User.destroy_all

u = User.new(email: 'test@gmail.com', password: '123456')
u.save

c = Customer.new(first_name: 'denis', last_name: 'trolel', email: 'denis@gmail.com', address: '5 rue fortia, Marseille', phone: '0708091112', user_id: u.id)
c.save

q = Quotation.new(user_id: u.id, customer_id: c.id, number: 221224, date: Date.today, total_price: 3400)
q.save

r = Room.new(quotation_id: q.id, name: 'salon')
r.save

r2 = Room.new(quotation_id: q.id, name: 'salle de bain')
r2.save

c = Category.new(room_id: r.id, name: 'électricité')
c.save

c2 = Category.new(room_id: r.id, name: 'maçonnerie')
c2.save

c3 = Category.new(room_id: r2.id, name: 'plomberie')
c3.save

t1 = Task.new(category_id: c.id, name: 'pose')
t1.save

t2 = Task.new(category_id: c2.id, name: 'creation')
t2.save

t3 = Task.new(category_id: c3.id, name: 'pose')
t3.save

p1 = Product.new(task_id: t1.id, name: 'spot', number_of_items: 3, price: 21, description: 'spot patère blanc')
p1.save

p2 = Product.new(task_id: t2.id, name: 'cloison', m2: 3, price: 30, description: 'plaquo')
p2.save

p3 = Product.new(task_id: t3.id, name: 'évier', number_of_items: 1, price: 220, description: 'vasque salle de bain')
p3.save
