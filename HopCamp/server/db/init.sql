DROP DATABASE IF EXISTS hopcamp;
CREATE DATABASE hopcamp;
\c hopcamp


CREATE TABLE campers_also (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    pic_url TEXT,
    rating INTEGER NOT NULL,
    num_of_ratings INTEGER NOT NULL,
    acres INTEGER NOT NULL,
    location TEXT NOT NULL,
    price INTEGER
);

CREATE TABLE camping_spot (
    id SERIAL PRIMARY KEY,
    description TEXT NOT NULL,
    pic_url TEXT,
    rating INTEGER NOT NULL,
    num_of_ratings INTEGER NOT NULL,
    acres INTEGER NOT NULL,
    location TEXT NOT NULL,
    price INTEGER
);

CREATE TABLE photos (
  id SERIAL PRIMARY KEY,
  pic TEXT,
  url TEXT
);

CREATE TABLE rating (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL,
    pic_url TEXT,
    date DATE,
    recommend BOOLEAN DEFAULT TRUE,
    campsite TEXT NOT NULL,
    top_line TEXT,
    narrative TEXT NOT NULL
);

CREATE TABLE tent_locations (
    id serial PRIMARY KEY,
    price integer,
    icon text,
    lat float,
    lng float
);

CREATE TABLE things_nearby (
    id serial PRIMARY KEY,
    img text,
    title text,
    distance text
);

CREATE TABLE campsites (
  id serial PRIMARY KEY,
  name TEXT NOT NULL,
  available INT,
  demand TEXT,
  instantBook BOOLEAN,
  descriptions text,
  capacity INT,
  restrictions TEXT,
  amenities TEXT,
  price INTEGER,
  type text,
  imgURL TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);



INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Slide Ranch', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1553553974/campground-photos/wmafcr0bpjgfxg1efrvk.jpg', 92, 244, 6, 'Occidental, CA', 99.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Winsor Family Farm', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1490764831/campground-photos/bw7wyp5xaompeedpk4di.jpg', 100, 529, 1, 'San Martin, CA', 150.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('CAMP CAZ', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1596059949/campground-photos/hagkewvq5taxjdtzxut8.jpg', 100, 154, 18, 'Cazadero, CA', 195.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Bay View "Tree House"', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1646637636/campground-photos/zdzgbs2xew3zooti9vcn.jpg', 100, 6, 2, 'San Rafael, CA', 270.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Separate Star Point', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1494610161/campground-photos/xuticasod50xgzihspuf.jpg', 97, 357, 1, 'Jenner, CA', 150.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Pine Grove Cobb Resort', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1529184372/campground-photos/s0nrouqbi6i2idyb9gzc.jpg', 95, 305, 30, 'Cobb, CA', 150.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Star Route', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1565829426/campground-photos/iz0txphqfcrhbuqhpcj5.jpg', 98, 175, 3, 'Carmel Valley, CA', 100.00);
INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Rambling Rose Ranch', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1648425463/campground-photos/r1ns8fslmorzkndkqtd9.jpg', 96, 105, 30, 'Middletown, CA', 125.00);

INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Finley Camp', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1628812689/campground-photos/lqu534g3bctm4aj0temq.jpg', 99, 462, 20, 'Bodega, CA', 95.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Goat farm for a small RV', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1607125219/campground-photos/r5pumhaidpcxzow8cbzb.jpg', 96, 14, 7, 'Occidental, CA', 75.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Shanti Permaculture Farm', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1502215644/campground-photos/qwpnkvb9koh4tfgdj4jx.jpg', 96, 57, 6, 'Occidental, CA', 305.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Treehouse! Sun+Pool+Spa+Sauna!', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1591716037/campground-photos/krzycz0tlrrkalrxb4xy.jpg', 99, 243, 6, 'Occidental, CA', 99.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('The Meadow Grove of Hands Full', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1592601756/campground-photos/byj0molsu5ktqpgnulyw.jpg', 95, 404, 300, 'Valley Ford, CA', 45.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Rancho Laslendini', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1661211237/campground-photos/fdxwgo7smc3jnyxvypb9.jpg', 100, 11, 5, 'Occidental, CA', 55.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Love Family Farm', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1657001310/campground-photos/ewn98zu27alj2nnrt71i.jpg', 88, 26, 1, 'Sebastopol, CA', 45.00);
INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ('Celebration Retreat', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_550,q_auto/v1682293028/campground-photos/tfsiwiwr5hdabz4txmi9.jpg', 100, 1, 3, 'Sebastopol, CA', 75.00);

INSERT INTO photos (pic, url) VALUES
  ('pic1_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_60/v1476482092/campground-photos/abvqx8gl26smow3uxgk8.jpg'),
  ('pic2_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_60/v1467751641/campground-photos/shu8s1oyjqjrgsmcc6gm.jpg'),
  ('pic3_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_60/v1447142502/campground-photos/waaje5sol4bzjaellxgp.jpg'),
  ('pic4_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_60/v1445485223/campground-photos/fnqqusfbuyxsyrizknsj.jpg'),
  ('pic5_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_60/v1445485065/campground-photos/p4mfmzsuapsb8hqs7wg2.jpg'),
  ('pic6_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_80/v1476482090/campground-photos/pyjxig2abgalkhh6kpdm.jpg'),
  ('pic7_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_80/v1472247288/campground-photos/xtuutkiep3ekc3t1n9wn.jpg'),
  ('pic8_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_80/v1470530386/campground-photos/osu51frsvlodi52yjp41.jpg'),
  ('pic9_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_80/v1445485060/campground-photos/p1gizt29wlal2thvnlt2.jpg'),
  ('pic10_URL', 'https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_1120,q_80/v1476483277/campground-photos/fuhi5sbqwy2otsylq9qd.jpg');

INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Michael M.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-5-15', true, 'Site 1 - Redwood Camp', null, 'This was our third trip to Salmon Creek Ranch, and we had a wonderful time as always. Thank you for your wonderful hospitality.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Dan P.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-5-15', true, 'Site 2 - Creekside Camp', 'Creekside #2', 'I had a great time camping! Stayed at Creekside #2 and really enjoyed the experience.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Julie T.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/10102309938935784.jpg', '2023-5-15', true, 'Site 2 - Redwood Camp', 'Fun stay with little ones', 'Some friends and I brought our babies camping for the first time on John and Lesley’s land. It was a fantastic first camping experience for all of us! The farm itself is huge and very green. The kiddos enjoyed seeing the animals (dogs, ducks, and goats!). The campsite itself was big, clean, and had everything we needed (though make sure to bring your own water!). John was super friendly and a clear communicator. We also came home with some duck eggs, which we are excited to devour!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Emma M.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/4197022053724766.jpg', '2023-5-8', true, 'Eagle’s Nest Treehouse Farmstay', 'Great stay!', 'Lesley and John were lovely hosts. They are incredibly responsive and kindly showed us around the treehouse and answered questions about the property. Photos cannot do the treehouse justice. The craftsmanship and peaceful location are truly special.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Jessy K', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-5-7', true, 'Site 1 - Creekside Camp', 'Gem in the Redwoods', 'Beautiful location. Great to hear creek sounds all night. Secluded but accessible. The directions were very clear. Hiking around the property was lovely. This is a true gem of a site in the redwoods! We hope to return.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Karilyn O.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-5-2', false, 'Site 2 - Creekside Camp', null, 'Sadly we were pressed for time driving up from LA and since they have a must arrive before 9pm notice, we headed straight to the site not realizing that we were not near any food options that were still open. We survived, but I wish I had known in advance that they have a 9pm arrival time (although I’m sure we would have thought we would arrive early anyway!) The sites are located literally right on the road, just separated by a few plants and a fence. It’s a quiet road, but it does just feel like you are in some random overgrown area to be honest. We were in a 22 foot camper and it was tough to fit it well. We had to leave quite early in the morning and were shocked to see someone sleeping on the ground near the gate. It was a bit unnerving as we didn’t see a vehicle so weren’t sure if they were legally staying or not. This was our first time to do Hipcamp and we were a bit disappointed. Considering the price of this site, I’m not sure I would recommend as it’s quite pricey for what you get, unless this is your destination and you plan to hike around the property more…');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Inbal B.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/5195829463816594.jpg', '2023-5-2', true, 'Site 2 - Creekside Camp', 'beautiful campsite, part of nature!', 'Such a beautiful camp! Close enough to home (bay area folks), but totally secluded - a part of nature...John and Lesley were very responsive to my many questions, we were 4 families and camped along the meadow of combined campsites #1, #2, #3 - had the creek to ourseleves and overall a wonderful time. Take note there is no running water - literally - that is good for dishwashing/ hydrating. BYO. We will definitely come back!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Marilyn H.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-4-27', true, 'Eagle’s Nest Treehouse Farmstay', null, 'The treehouse was absolutely breathtaking! The bed was comfortable I didn’t want to get up. John and Leslie were perfect hosts 💞💞💞');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Karen J F.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-4-25', true, 'Eagle’s Nest Treehouse Farmstay', null, 'We THOROUGHLY LOVED our stay at Eagle’s Nest!!! Truly a dream come true staying in a treehouse and in such a beautiful setting surrounded by nature. We were welcomed into the world that John & Lesley created w their beautiful animals grazing the rolling pastures, the forest and the magical treehouse so perfectly placed to really commune w the natural world. SO PEACEFUL AND SERENE. HIGHLY RECOMMEND TO ANY AND ALL!!!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Inbal B.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/5195829463816594.jpg', '2023-4-23', true, 'Site 1 - Creekside Camp', null, 'So wonderful to have a group camp without anyone around us…. Definitely not the usual campsite — being it all with you, except the picnic table and fire pit :) Camped with 3 other families, all young children, we all had a wonderful and chill time. The creek is so full Post rains, and super clean too. John and Lesley answered all of my questions (I had many!). There isn’t reception for the most part, but all the instructions work as explained. Highly recommended- when you are ready to just be part of nature, this is the place to go! Thank you for letting our group on this well kept nature filled ranch');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Sheree W.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1679903399/profile/igg48vbztdb29a5er9hx.jpg', '2023-4-19', true, 'Site 3 - Redwood Camp', null, 'I booked my trip on a Monday so my friend, my 2 labs, and I had the whole place to ourselves. So much to love about this ranch with its extensive hiking trails and easy access to the creek. A few of the campsites are under the calm and solitude of redwood groves--definitely a relaxing getaway. Looking forward to returning during the summer.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Anthony R', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/10228088127285597.jpg', '2023-4-17', true, 'Site 1 - Redwood Camp', null, 'Camping at site #1 on John and Lesley’s land was wonderful. Driving in was a bit of an adventure but in a good way. Make sure to bring the 4wd :) You should definitely treat yourself with some of the goodies from the mercantile. We centered almost all of our meals on what was available at the mercantile. Having Filet Mignon and Duck eggs was a wonderful way to start off the day camping. When we went they had plenty of duck eggs and various cuts of beef and goat vacuum sealed in the deep freezer. The center meadow was perfect for stargazing but it gets a little damp with few so make sure to bring your boots. Near the entrance of the farm there is a family trout fishing farm. We didn’t catch anything(my 3yo daughter was more interested in casting and then reeling it in immediately haha) They gave us a free return ticket to use within 30 days. If you are planning to go, I would do it on the first day so that you can come back if you don’t catch anything. Most of all we just enjoyed hanging out under the beautiful redwoods. Not many other places where you can have 400 acres of pristine land to explore.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Alyssa E.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-4-14', true, 'Site 3 - Creekside Camp', 'Enchanting Creekside Retreat', 'Beautiful area. We had a great time! We stayed at Campsite 3 near the creek with our four kids ages 3 to 14. The trail down to the creek leads from the tent deck. It’s pretty steep—take caution. But the kids loved playing by the creek all day! There was a fire ring and a picnic table at the campsite. Bring your own firewood and especially kindling! We stayed in mid-April so it was cold at sunset. We layered up and wore beanies while we slept. But it was still super fun! We would definitely recommend to friends and would love to stay there again. There are an abundance of plants that surround the campsite that you should not touch, some type of nettle—so beware. Also, we got lost trying to find the campsites and had to turn around several times. Best advice—for Creekside campsites set your GPS directions from your starting point to take you to the BODEGA post office (Not Bodega Bay—no cell service in the Bodega area which added to our confusion.) Once you get to the post office, Salmon Creek road is directly across the street. Follow the Host’s written directions from there. Just after you cross the bridge there will be a gate on the left side for the 3 Creekside campsites. There is only one porta-potty for all three sites but it was clean and there was no smell. We were the only ones camping at the sites so it was nice and quiet. Loved the blue wildflowers and ferns. Felt like we were in a fairy forest. Definitely recommend!!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Michal R.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1620666176/profile/qxsjg0czzl8usnbqixur.jpg', '2023-4-9', true, 'Eagle’s Nest Treehouse Farmstay', 'Gorgeous treehouse right by coast', 'What an amazing location and treehouse! We spent the evening in the treehouse after a wonderful fish and chips dinner just ten minutes away on the coast, and loved waking up surrounded by ancient trees. The farm is gorgeous and the hosts are so nice!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Warren W.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-4-7', true, 'Site 3 - Creekside Camp', 'Gorgeous treehouse right by coast', 'I stayed in Creekside #3. It was closer to the road than I was expecting, but I don’t think I saw one car drive by the whole time. It was really close to the creek, which was great. There are tons of trails to hike on the other side of the creek.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Brian B.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1681533293/profile/ulbqw2e4yepokkrjvtjj.jpg', '2023-4-2', true, 'Eagle’s Nest Treehouse Farmstay', 'Waking up in the trees is magical!', 'John and Leslie’s land is a beautiful working ranch with lovely goats, cows and ducks, and the treehouse is absolutely magical. Only regret is not staying here for more than one night. We’ll have to come back soon!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Lauren J.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/1730579680292009.jpg', '2023-4-1', true, 'Eagle’s Nest Treehouse Farmstay', 'Perfect Treehouse Paradise', 'John and Lesley were amazing hosts. Our camper van we were traveling in would not make it down the road to the treehouse, so John graciously let us use his Subaru to make trips back and forth. The treehouse was a dream!! Waking up in the canopy of trees on our honeymoon road trip was definitely the highlight. We grilled up some delicious burgers fresh from their farm! Make sure to spend some time hiking the beautiful trails of John and Lesley’s perfect paradise.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Samantha T.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/1730579680292009.jpg', '2023-3-30', true, 'Eagle’s Nest Treehouse Farmstay', null, 'The eagle’s nest was so much fun! It was so relaxing sitting in the trees and listening to the rain, we even saw some deer right outside. John and Lesley were very helpful and friendly, but also let us enjoy our vacation without interruption. I can’t wait to come back!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Matthew L.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-3-18', true, 'Eagle’s Nest Treehouse Farmstay', 'Perfect romantic getaway', 'The eagle’s nest was so much fun! It was so relaxing sitting in the trees and listening to the rain, we even saw some deer right outside. John and Lesley were very helpful and friendly, but also let us enjoy our vacation without interruption. I can’t wait to come back!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Sahil S.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-3-12', true, 'Eagle’s Nest Treehouse Farmstay', 'Beautiful treehouse!', 'One of the best experience for me and my wife. Tree house is beautiful. Will recommend 100% to anyone.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Audrey C.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-2-28', true, 'Site 3 - Redwood Camp', 'Peaceful camping at its finest', 'This camping spot is absolutely perfect for someone looking for a peaceful private spot to camp. The sound of the rustling creek was amazing to fall asleep to. John was incredibly helpful at providing directions when we got lost trying to find his place. Highly recommend and will visit again if we are back in the area!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Kelly C.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-2-27', true, 'Site 1 - Redwood Camp', 'Camping in the wild!', 'Beautiful land wow! Camp 1 is a little darker in the redwoods and chilly so we chose to sleep in camp two that had sunshine and redwoods! Beauuuutiful! Recommend any of the camps, John was easy to work with. Delightful!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Isabel T.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-2-23', true, 'Site 2 - Redwood Camp', null, 'The ranch is absolutely gorgeous and really well -located near Bodega Bay, Dillon Beach, etc. We loved hiking around the property’s trails and find the beautiful Highland Cattle. Some things to keep in mind are that the meadow sites are not super accessible (you truly need AWD) and we weren’t comfortable driving the route at night so the convenience of car camping is reduced.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('James D.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-2-22', true, 'Eagle’s Nest Treehouse Farmstay', null, 'A magical location. Peaceful, beautiful, and safe. Lovely hosts! Dig the Mercantile too!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Hannah D.', 'https://hipcamp-res.cloudinary.com/image/upload/v1681428992/default_avatar_sxenbd.png', '2023-2-20', true, 'Site 1 - Redwood Camp', null, 'John and Lesley’s property is such a refreshing gem in California. It was a perfect starting point for our weekend backpacking trip in Point Reyes. Campsite 1 was a cozy redwood grove with a picnic table, a fire ring, and a nearby portojohn. We spent a few hours walking around the property to explore the trails and especially to see the animals. John was out and about and was so friendly. We loved talking to him about the animals and their land. The road down to camp is steep and rough, about 4-5mph careful drive with a high clearance car will do the trick. I would love to come back here again, great memories!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Brandi B.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1598835003/profile/aohdjfuyceyoxdnlxnch.jpg', '2023-2-20', true, 'Site 1 - Redwood Camp', 'Camp in the stars', 'John & Lesley are great hosts! They gave great directions and we loved the property! Oh, The stars! Great stay for the night.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Eric E.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/10221285787754122.jpg', '2023-2-19', true, 'Site 3 - Redwood Camp', 'Five stars', 'Had a really great time staying at the redwood camp. We stayed at campsite 3 and it is perfect if you’re looking for a weekend to disconnect. John was a really great host and even lended us jumper cables because I was an idiot and left the light on in my car all night. What a guy!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Meg S.', 'https://hipcamp-res.cloudinary.com/image/facebook/h_150,w_150/10214803459624974.jpg', '2023-1-3', true, 'Eagle’s Nest Treehouse Farmstay', null, 'This place is magical. I don’t think there’s anything new I can add to the other reviews on here - it is a very special place that I will never forget.');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Ashlyn R.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1655065027/profile/vn1kslymkjjetnltuwes.jpg', '2022-12-29', true, 'Eagle’s Nest Treehouse Farmstay', null, 'Another side of Bodega Bay I needed to see! Nestled in the amazing trees amongst the redwoods. Not hard to get to. Lesley met with me to get me to the treehouse. Really kind and showed me around. I was even able to explore more of the property and do some morning hiking. The morning fog from the ocean was a chef’s kiss. Hope to come back someday when I need a peaceful escape!');
INSERT INTO rating (username, pic_url, date, recommend, campsite, top_line, narrative) VALUES ('Bruce W.', 'https://hipcamp-res.cloudinary.com/image/upload/c_fill,f_auto,h_150,w_150/v1655065027/profile/vn1kslymkjjetnltuwes.jpg', '2022-12-29', true, 'Eagle’s Nest Treehouse Farmstay', 'So relaxing and secluded. Very 😍', 'It’s as though you’re going on to your own private ranch. Right away you see cattle and a little further on some veryFuzzy Furry cattle. Upon arriving at the main house and mercantile I was greeted by Leslie. I let her know what we preordered for food and she took me into the mercantile and showed me around and got us our food along with Some extra we decided to get. They even have dog treats made from their livestock. Next we were taken to the tree house not far away and given a walk through on how everything worked very beautiful tree house And a nice area to eat down below.');

INSERT INTO tent_locations (price, icon, lat, lng) VALUES
    ('$120','tentIcon',38.357545192706645,-123.00161904696465),
    ('$120','tentIcon',38.35720866975814,-123.00195164087064),
    ('$120','tentIcon',38.35641200618477,-123.00222556527875),
    ('$120','tentIcon',38.35575318999367,-123.0024773538188),
    ('$120','tentIcon',38.35561857767026,-123.00382918711409),
    ('$120','tentIcon',38.35527363244915,-123.00311035512375),
    ('$399','bedIcon',38.35428226556023,-123.00542735269164);

    INSERT INTO things_nearby (img, title, distance) VALUES
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1655602609/park_images/poi/us/s8wg6jkl2uo1h241bcsh.jpg','Bodega Head','4 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1646262040/park_images/poi/us/senhj6traburp1ftwfmo.jpg','Armstrong Redwoods State Natural Reserve','12 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1639636733/park_images/poi/us/kkddfa35ggwbckdpv1za.jpg','Marconi Conference Center State Historic Park','16 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1424593552/campground-photos/pt1f22v5wfy6gprggina.jpg','Salt Point State Park','23 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1639636713/park_images/poi/us/ykoomrxz9edlchi0akvf.jpg','Jack London State Historic Park','24 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1639636719/park_images/poi/us/yz9kfrgtijkticauivfr.jpg','Kruse Rhododendron State Natural Reserve','24 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1639636739/park_images/poi/us/h7trzfxbnvrae8rhtohi.jpg','Olompali State Historic Park','27 miles away'),
    ('https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_60/v1656091995/park_images/poi/us/hptjpoye6iqc9g8fhfto.jpg','Calistoga Hot Springs','27 miles away');

    INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type, imgURL)
VALUES ('Wildwood Retreat', 3, 'High', true, 'Escape to the serene Wildwood Retreat surrounded by lush greenery.', 4, 'No pets allowed', 'Fire pit, Picnic table', 50.00,'RV/tent site','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1447144043/campground-photos/deqddjjea4ilhirvyzai.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Serenity Springs', 3, 'Medium', true, 'Experience tranquility at Serenity Springs, where you can unwind and rejuvenate.', 6, 'Quiet hours between 10 PM and 7 AM', 'Hiking trails, Fishing spot', 60.00,'RV/tent site','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1447142515/campground-photos/rd7dvfnczgfeiehtabxm.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Whispering Pines', 6, 'Low', false, 'Discover the magic of Whispering Pines, surrounded by towering pine trees.', 3, NULL, 'Campfire ring, BBQ grill', 40.00,'Lodging','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1447813372/campground-photos/b67zkjgrdgim0zrwe1dp.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Mountain Vista', 3, 'High', true, 'Enjoy breathtaking views from Mountain Vista, where adventure awaits.', 8, 'No smoking allowed', 'Scenic overlook, Wildlife spotting', 75.00,'Lodging','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1447144254/campground-photos/hb94pn0mjd51zlnnl53w.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Lakeside Haven', 4, 'Medium', false, 'Experience serenity at Lakeside Haven, nestled by a pristine lake.', 5, 'Pets allowed on leash', 'Kayaking, Fishing dock', 55.00,'Lodging','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1541964948/campground-photos/wxy1q7nw0z6mtvxsscbi.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Tranquil Meadows', 6, 'High', true, 'Immerse yourself in the tranquility of nature at Tranquil Meadows.', 2, 'No loud music after 9 PM', 'Nature trails, Picnic area', 45.00,'RV/tent site','https://hipcamp-res.cloudinary.com/f_auto,c_limit,w_950,q_80/v1476481913/campground-photos/cype84jbmatzfgmae0vh.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Adventure Point', 3, 'High', true, 'Embark on an unforgettable adventure at Adventure Point, the ultimate outdoor playground.', 10, NULL, 'Rock climbing wall, Zipline', 80.00,'RV/tent site','https://explorerchick.com/wp-content/uploads/2019/02/Camping-in-lake-clark-national-park-women-only-copy-01.jpeg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Moonlit Grove', 2, 'Medium', false, 'Experience the enchantment of the Moonlit Grove, surrounded by ancient trees.', 4, NULL, 'Campfire circle, Stargazing platform', 60.00,'Lodging','https://tpwd.texas.gov/state-parks/park-information/facilities/campsites/tpw_tof_003_800p.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Starry Skies Campground', 2, 'High', true, 'Camp under the starry skies at our enchanting campground.', 6, 'No RVs allowed', 'Firewood provided, Outdoor games', 65.00,'RV/tent site','https://cdn.vox-cdn.com/thumbor/wNCd1cBf7MrId4a_2IT-XmcfygY=/0x0:5114x3414/1200x800/filters:focal(2148x1298:2966x2116)/cdn.vox-cdn.com/uploads/chorus_image/image/64713096/shutterstock_1106746100.0.jpg');
INSERT INTO campsites (name, available, demand, instantBook, descriptions, capacity, restrictions, amenities, price, type,imgURL)
VALUES ('Rustic Oasis', 4, 'Medium', true, 'Escape to the Rustic Oasis, a hidden gem nestled in nature.', 3, NULL, 'Hammock, BBQ area', 50.00,'RV/tent site','https://sanctuaryhomedecor.com/wp-content/uploads/2021/06/Rustic-Built-In-BBQ-Area-6.jpg');