
puts "Destroying seeds"

Jointable.destroy_all
User.destroy_all
Item.destroy_all
Order.destroy_all


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
    description: 'Ideal starter set for new mom
    Natural wide shape nipple, ultra soft
    Airflex vent technology
    Multiple bottle and nipple sizes
    BPA-Free',
    category: "feeding"
},
{
    name: 'Nuk Simply Natural Bottle 9oz',
    price: 6,
    image: 'https://www.nuk-usa.com/dw/image/v2/ABBP_PRD/on/demandware.static/-/Sites-master-catalog-nuk/default/dw5b771cd6/hi-res/bottles/BOTTLE_9oz_BOTTLE.jpg',
    description: "Multiple nipple holes and innovative, extra-soft nipple provide a natural feed—it feels just like mom’s breast
    9 oz bottle comes with medium-flow nipple that has 6 holes to provide baby's most comfortable feed
    Advanced 1-Piece Anti-Colic Air system helps reduce colic, gas, and spit up for greater comfort and fewer messes
    Flexible nipple allows for a continuous latch and is the same shape as mom’s nursing nipple during breastfeeding",
    category: "feeding"
},
{
    name: 'MAM Anti-Colic Bottle, 9oz, 1ct',
    price: 4,
    image: 'http://www.leslouves.com/wp-content/uploads/2019/02/biberon-anticolique-mam-DR.jpg',
    description: "GREAT FOR BREASTFEEDING MOMS: SkinSoft nipple mimics breastfeeding, making the MAM Anti-Colic Bottle the best bottle for a breastfed baby. Switching between breastfeeding and bottle feeding is simple and easy with MAM Anti-Colic Baby Bottles.
    REDUCES COLIC, GAS AND REFLUX: Advanced anti-colic venting system creates a vacuum effect to eliminate bubbles that cause gas and aggravate colic and reflux symptoms.",
    category: "feeding"
},
{
    name: 'Comotomo Silicone Bottle 5oz (2pk)',
    price: 22,
    image: 'https://ct.yimg.com/xd/api/res/1.2/vU0nf24RCIm.p0PBE_sUjg--/YXBwaWQ9eXR3YXVjdGlvbnNlcnZpY2U7aD00MDA7cT04NTtyb3RhdGU9YXV0bzt3PTQwMA--/https://s.yimg.com/ob/image/f92d0cc2-4cb4-45b0-b00d-1f6dfc327779.jpg#400x400',
    description: "Closely mimics natural breastfeeding
    Scratch-resistant, bacteria-resistant, shatterproof and leak-proof
    Package quantity: 2
    Features: Wide neck bottles, nipple vent, vacuum-free feeding, vent valve
    Safety & security: Nitrosamine-free, BPA-free",
    category: "feeding"
},
{
    name: "Gerber Baby Girls' 3pk Fox Sleep N' Play Pajamas",
    price: 10.00,
    image: 'https://target.scene7.com/is/image/Target/GUEST_78316dbc-9e6b-4c3a-8861-b6cb38fb5080?wid=488&hei=488&fmt=pjpeg',
    description: "Includes 3 Sleep ‘n Plays
    100% cotton jersey
    STANDARD 100 by OEKO-TEX certified product
    Variety of art and patterns
    Imported",
    category: "clothing"
},
{
    name: "Baby Boys' Batman Logo 2pc Hooded Set",
    price: 12.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_f338ddd9-50f9-40c0-98bb-c4be91e7cb50?wid=488&hei=488&fmt=pjpeg',
    description: "Keep your little superhero comfy and ready to take on the world in the Batman Logo Hooded Set. Featuring soft, breathable construction for all-day comfort, this two-piece clothing set works just as well for playtime as it does for hanging out with mom and dad. The long-sleeve pullover sports the yellow Batman logo printed on the front, while the attached hood is accented with the pointy ears of the superhero. The solid lounge pants showcase the word 'Batman' written on one leg, and they have a kangaroo pocket on the front for added sweet style.",
    category: "clothing"
},
{
    name: "Baby Girls' 3pc Hedge Hog Vest Top & Bottom Set - Just One You® made by carter's Pink",
    price: 14.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_5d28da3e-9a31-4359-a011-b6fdf29a8df1?fmt=webp&wid=1400&qlt=80',
    description: "Each piece of this baby 3-Piece Set from Just One You® made by carter's can be worn together or mixed and matched with other baby essentials. Bottoms are easy to pull on and off, and the bodysuit's crotch-snap closure helps make diaper changing easier. Everything is machine washable and designed to keep your little one comfortable.
    If the item details above aren’t accurate or complete, we want to know about it. Report incorrect product info.
    ",
    category: "clothing"
},
{
    name: "Gerber Baby Boys' 5pk Long Sleeve Bear Bodysuits",
    price: 8.00,
    image: 'https://target.scene7.com/is/image/Target/GUEST_2feae0d2-eb44-4715-90ea-3d61c706b940?fmt=webp&wid=1400&qlt=80',
    description: "Includes 5 Gerber long sleeve Onesies Bodysuits
    100% cotton rib
    STANDARD 100 by OEKO-TEX certified product
    Variety of art and patterns
    Imported
    ",
    category: "clothing"
},
{
    name: "Baby Trend Expedition Jogger Travel System",
    price: 130.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_e99f5c0c-518b-49b0-9c18-2cf14afc6965?fmt=webp&wid=1400&qlt=80',
    description: "The Baby Trend Expedition Travel System pairs a 3-Wheel Jogger and a EZ Flex-Loc Infant Car Seat and Base. The stroller also features a parent tray with 2 cup holders, a covered storage compartment for small incidentals. Larger items fit in the large storage basket. The adjustable canopy with peek-a-boo window that ratchets to helps protect your child from the elements. The stroller features a multi-position reclining padded seat with a fully adjustable 5-point safety harness and tether strap and a child's tray with cup holders that also accepts any Baby Trend infant car seat.",
    category: "travel"
},
{
    name: "Baby Jogger City Select Stroller",
    price: 539.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_ef3d3d0c-1898-44fb-8a5f-c50180870f01?fmt=webp&wid=1400&qlt=80',
    description: "Whether you're looking for a travel system, a pram, a double stroller, a triple, or just a single, the City Select could be the only stroller you'll ever need. The most versatile stroller on the market today, the City Select was designed to keep your family rolling as it grows from one child to two...or even three. The City Select is not intended for jogging.",
    category: "travel"
},
{
    name: "Joovy ScooterX2 Double Stroller",
    price: 219.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_afa5591c-0bd5-426a-9857-0f1b83749d80?fmt=webp&wid=1400&qlt=80',
    description: "The SUV of Double Strollers. The ScooterX2 is a side-by-side double stroller with all the right features and at a great value! Whether you have twins or siblings, this stroller performs anywhere.",
    category: "travel"
},
{
    name: "Jeep Wrangler Stroller Wagon with Included Car Seat Adapter by Delta Children",
    price: 299.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_44aefd56-179b-47fa-8cb2-efb779979e41?fmt=webp&wid=1400&qlt=80',
    description: "The Jeep Wrangler Stroller Wagon by Delta Children is ready to tackle any family adventure. Designed with all the conveniences of a double stroller and the rugged durability of a wagon, it’s a super-fun crossover that makes any outing easy—take it to the park, beach or sporting event. With so many ways to ride, it’s ideal for kids of varying ages. Attach your current infant car seat with the included adapter for babies or use the two seats with 5-point safety harnesses to securely transport older siblings, twins or friends. The UV blocking canopy protects little ones from the sun while pull-down shades block additional light during naptime. Remove the canopy for open-air cruising. Equipped with more storage than the average stroller, you can keep travel essentials inside the wagon, or use the pockets at the front and back. This wagon is the most off-road capable option ever thanks to the combination of all-terrain, airless tires and back wheel suspension that absorbs every little bump. Easy to maneuver, swivel front wheels allow you to turn and pivot, and you can push or pull the wagon with the two adjustable leatherette handlebars. To store or transport, the Jeep Wrangler Stroller Wagon by Delta Children features a compact folds and quick release back wheels which make it easier to fit tight spaces. And when your children outgrow the need for a stroller/wagon, use it to haul your own gear at the farmers market, while gardening or the grocery store. Holds up to 110 lbs. Weighs 45.5 lbs.

    Since 1941, Jeep has been a symbol of freedom and expression. Influenced by a love of the great outdoors. Jeep kids' products are created for life’s little adventurers.",
    category: "travel"
},
{
    name: "The Honest Company Disposable Diapers All The Alpacas",
    price: 25.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_afe0ab9d-ba64-4746-a32e-0465f21872b6?fmt=webp&wid=1400&qlt=80',
    description: "The Honest Company's new and best ever diaper. These super-absorbent, eco-friendly diapers are made with plant-derived and sustainable materials and they're gentle for baby's delicate skin.* Now featuring an improved fit and advanced leak protection like never before, this super-soft diaper is designed to perform. Oh, and did we mention how adorable they are?",
    category: "diaper"
},
{
    name: "Huggies Little Snugglers Diapers Super Pack",
    price: 24.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_acb562ac-b05c-462c-a1e9-ce7e3e7cb5a2?fmt=webp&wid=1400&qlt=80',
    description: "Designed for gentle skin protection, Huggies Little Snugglers diapers provide premium softness and breathability to help keep baby dry & comfortable. Huggies GentleAbsorb Liner draws moisture away from baby's skin with a cushiony layer of protection, while the Pocketed Back Waistband contains the mess and helps prevent diaper blowouts. Huggies absorbent Leak Lock System helps eliminate leaks for up to 12 hours of protection, and wetness indicator changes color when wet. Little Snugglers diapers are hypoallergenic, fragrance free, lotion free, paraben free, and free of elemental chlorine & natural rubber latex. Additionally, Preemie and Newborn size diapers have an umbilical cord cutout to protect your baby's belly button while it heals. Huggies Little Snugglers disposable diapers come in sizes Preemie (up to 6 lb.), Newborn (up to 10 lb.), 1 (up to 14 lb.), 2 (12-18 lb.), 3 (16-28 lb.), 4 (22-37 lb.), 5 (27+ lb.) and 6 (35+ lb.) and feature adorable Disney Baby Winnie the Pooh designs.",
    category: "diaper"
},
{
    name: "Pampers Swaddlers Disposable Diapers Enormous Pack",
    price: 24.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_72bba7ab-034c-4f17-87c6-c12c693a64a8?fmt=webp&wid=1400&qlt=80',
    description: "Wrap your baby in a diaper that's 2x softer** and the #1 Choice of Hospitals, Nurses and Parents.* Its comforting Heart Quilts liner provides breathability and comfort while pulling wetness and mess away from the skin. In addition, Air Channels help distribute moisture evenly, providing up to 12 hours of protection, while a Wetness Indicator tells you when your baby might need a change.",
    category: "diaper"
},
{
    name: "Luvs Disposable Diapers Giant Pack",
    price: 24.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_6684d670-e1b5-4b8b-94fa-e72cb02e584f?fmt=webp&wid=1400&qlt=80',
    description: "Stop leaks around the clock with Luvs. Designed with Triple Leakguards, Luvs can absorb 20x its weight* and feature a Wetness Indicator that turns blue when wet. When it comes to bedtime, Luvs Nightlock Technology works to lock away wetness so your baby can dream on.

    For complete comfort, Luvs diapers are super soft on your baby's skin with a comfy feel, plus they're designed with larger, refastenable tabs for a secure fit. So try 'em and luv 'em, and if you don't, Luvs offers a money-back guarantee.**",
    category: "diaper"
},
{
    name: "Fisher-Price Laugh and Learn Game and Learn Controller",
    price: 9.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_26d74d4f-d5ff-4e98-b5da-80ef7be3617e?fmt=webp&wid=1400&qlt=80',
    description: "Your baby can get into the gaming fun with this Laugh & Learn toy video game controller, which features two 'gaming' modes and lots of hands-on activities! As little gamers move the joystick and press the ABCD and number buttons, they'll hear exciting songs, sounds, and phrases that introduce numbers, shapes, colors, and more! Where development comes into play, Academics: Playful songs and phrases introduce numbers, the alphabet, shapes, colors, and more. Fine Motor: As little fingers grasp, press, spin, and toggle the hands-on activities, fine motor skills like dexterity and hand-eye coordination are being fostered. Creativity & Imagination: The realistic design encourages early role play and imaginative fun for your little 'gamer'!",
    category: "toys"
},
{
    name: "Nuby Ice Gel Baby Teether Keys",
    price: 3.89,
    image: 'https://target.scene7.com/is/image/Target/GUEST_b431730b-3fb5-41b6-8b13-5cd421bc6acb?fmt=webp&wid=1400&qlt=80',
    description: "The IcyBite Keys by Nuby is another innovation in the natural teething process as well as a toy which combines exercise for young hands, gums and teeth. This Nuby teether also features areas filled with purICE. The cool resilient surface soothes and stimulates sore gums safely and stays colder, longer than water filled teethers! The colorful key shapes with raised, offset surfaces assist in the eruption of teeth by gently massaging infant’s gums. The colorful shapes are also easy for baby to hold and sized for maximum effectiveness as a teether and soother.",
    category: "toys"
},
{
    name: "VTech Care for Me Learning Carrier",
    price: 24.99,
    image: 'https://target.scene7.com/is/image/Target/GUEST_68c47e56-ead5-43e9-bf6b-9908973f1810?fmt=webp&wid=1400&qlt=80',
    description: "Care for Me Learning Carrier is an interactive pet carrier that lets little ones take their plush pet anywhere! Put the plush puppy inside or take him out of the carrier and hear playful phrases when opening and closing the door. The activity panel on the side of the carrier is packed with learning fun! Press the light-up buttons to learn about colors, shapes, pet care and more. Sliding the letter beads introduce letters and play music. Sliding the window and spinning the roller add to the fun and encourage motor skills. The carrier also includes four pet care accessories so toddlers can groom, feed and play with the cuddly puppy. Take your plush pet everywhere! Intended for ages 9-36 months. Requires 2 AAA batteries. Batteries included for demo purposes only. New batteries recommended for regular use.",
    category: "toys"
},
{
    name: "Bright Starts Teethe & Read Play Book",
    price: 3.29,
    image: 'https://target.scene7.com/is/image/Target/GUEST_233646d6-a6dd-4c10-8f8d-20d1e03e4218?fmt=webp&wid=1400&qlt=80',
    description: "Share a story with baby he's sure to savor! The Teethe & Read toy is a soft book with teething corners made for baby's every chomp and chew.
    He'll love following along the adventures of his Bright Starts buddies within the pages of this plush book, and the textured corners help bring relief to tender gums during this dental growth spurt. Your little one can sink his teeth right into these fabric crinkle pages without them getting soggy or torn. And with an easy-to-grip handle, your baby can take this tasty tale wherever he goes.",
    category: "toys"
}







]

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
