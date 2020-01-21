
puts "Destroying seeds"

Item.destroy_all
Jointable.destroy_all
Order.destroy_all
User.destroy_all


puts "Making new users"

users=[{
    username: 'Gena',
    email: 'gena@126.com',
    password_digest: '1234'
},
{
    username: 'Carlie',
    email: 'carlie@126.com',
    password_digest: '5678'
},
]

User.create(users)

puts 'Making new items'

items=[{
    name: 'Philips Avent Baby Bottle Gift Set - Clear',
    price: 28,
    image: 'https://www.mothercare.ru/media/catalog/product/cache/5/image/9df78eab33525d08d6e5fb8d27136e95/b/a/base.scf030_17.jpg',
    description: 'Ideal starter set for new mom/n
    Natural wide shape nipple, ultra soft/n
    Airflex vent technology/n
    Multiple bottle and nipple sizes/n
    BPA-Free'
},
{
    name: 'Nuk Simply Natural Bottle 9oz',
    price: 6,
    image: 'https://www.nuk-usa.com/dw/image/v2/ABBP_PRD/on/demandware.static/-/Sites-master-catalog-nuk/default/dw5b771cd6/hi-res/bottles/BOTTLE_9oz_BOTTLE.jpg',
    description: "Multiple nipple holes and innovative, extra-soft nipple provide a natural feed—it feels just like mom’s breast/n
    9 oz bottle comes with medium-flow nipple that has 6 holes to provide baby's most comfortable feed/n
    Advanced 1-Piece Anti-Colic Air system helps reduce colic, gas, and spit up for greater comfort and fewer messes/n
    Flexible nipple allows for a continuous latch and is the same shape as mom’s nursing nipple during breastfeeding"
},
{
    name: 'MAM Anti-Colic Bottle, 9oz, 1ct',
    price: 4,
    image: 'http://www.leslouves.com/wp-content/uploads/2019/02/biberon-anticolique-mam-DR.jpg',
    description: "GREAT FOR BREASTFEEDING MOMS: SkinSoft nipple mimics breastfeeding, making the MAM Anti-Colic Bottle the best bottle for a breastfed baby. Switching between breastfeeding and bottle feeding is simple and easy with MAM Anti-Colic Baby Bottles./n
    REDUCES COLIC, GAS AND REFLUX: Advanced anti-colic venting system creates a vacuum effect to eliminate bubbles that cause gas and aggravate colic and reflux symptoms."
},
{
    name: 'Comotomo Silicone Bottle 5oz (2pk)',
    price: 22,
    image: 'https://ct.yimg.com/xd/api/res/1.2/vU0nf24RCIm.p0PBE_sUjg--/YXBwaWQ9eXR3YXVjdGlvbnNlcnZpY2U7aD00MDA7cT04NTtyb3RhdGU9YXV0bzt3PTQwMA--/https://s.yimg.com/ob/image/f92d0cc2-4cb4-45b0-b00d-1f6dfc327779.jpg#400x400',
    description: "Closely mimics natural breastfeeding/n
    Scratch-resistant, bacteria-resistant, shatterproof and leak-proof/n
    Package quantity: 2/n
    Features: Wide neck bottles, nipple vent, vacuum-free feeding, vent valve/n
    Safety & security: Nitrosamine-free, BPA-free"
}]

Item.create(items)

puts "Making orders"

o1 = Order.create(user_id:1)
o2 = Order.create(user_id:1)
o3 = Order.create(user_id:2)
o4 = Order.create(user_id:2)

puts 'Making joins'

Jointable.create(order_id:1, item_id:1)
Jointable.create(order_id:1, item_id:2)
Jointable.create(order_id:3, item_id:3)
Jointable.create(order_id:3, item_id:4)

puts "Done"
