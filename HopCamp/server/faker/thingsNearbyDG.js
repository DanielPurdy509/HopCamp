import faker from "faker";

const generateFakeThings = ()=> {
    const thingsNearby = {
        img: faker.image.imageUrl(),
        title: faker.lorem.words(),
        distance: faker.datatype.number({ min: 1, max: 10 }) + ' miles',
    };
    return thingsNearby;
};

const numberOfThings = 10;
const thingsCollection = [];

for (let i = 0; i < numberOfThings; i++) {
    thingsCollection.push(generateFakeThings());
}
// console.log(campersAlsoCollection);

export default thingsCollection;






// CREATE TABLE things_nearby (
//     id serial PRIMARY KEY,
//     img text,
//     title varchar,
//     distance varchar
// );