import faker from "faker";

const generateCampingSpot = () => {
  const campingSpot = {
    description: faker.lorem.sentence(),
    pic_url: faker.image.imageUrl(),
    rating: faker.datatype.number({ min: 1, max: 100 }),
    num_of_ratings: faker.datatype.number({ min: 1, max: 1000 }),
    acres: faker.datatype.number({ min: 1, max: 100 }),
    location: faker.lorem.words(),
    price: faker.datatype.number({ min: 1, max: 100 }),
  };
  return campingSpot;
};

const fakeCampingSpotAmount = 10;
const campingSpotCollection = [];

for (let i = 0; i < fakeCampingSpotAmount; i++) {
  campingSpotCollection.push(generateCampingSpot());
}
// console.log(campingSpotCollection);

export default campingSpotCollection;