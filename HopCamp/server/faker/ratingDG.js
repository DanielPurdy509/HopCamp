import faker from "faker";

const generateFakeRating = ()=> {
    const ratings = {
        username: faker.internet.userName(),
        pic_url: faker.image.imageUrl(),
        date: faker.date.past().toISOString().slice(0, 10),
        recommend: faker.datatype.boolean(),
        campsite: faker.lorem.words(2),
        top_line: faker.lorem.sentence(),
        narrative: faker.lorem.paragraph(),
    };
    return ratings;
};

const numberOfRatings = 10;
const ratingCollection = [];

for (let i = 0; i < numberOfRatings; i++) {
    ratingCollection.push(generateFakeRating());
}
// console.log(ratingCollection);

export default ratingCollection;


// CREATE TABLE rating (
//     id SERIAL PRIMARY KEY,
//     username TEXT NOT NULL,
//     pic_url TEXT,
//     date DATE,
//     recommend BOOLEAN DEFAULT TRUE,
//     campsite TEXT NOT NULL,
//     top_line TEXT,
//     narrative TEXT NOT NULL
// );