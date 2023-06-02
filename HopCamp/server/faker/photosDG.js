import faker from "faker";

const photoGallery = () => {
  const photos = {
    pic: faker.lorem.words(2),
    url: faker.image.imageUrl(),
  };
  return photos;
};

const fakePhotoAmount = 10;
const photoCollection = [];

for (let i = 0; i < fakePhotoAmount; i++) {
  photoCollection.push(photoGallery());
}
// console.log(photoCollection);

export default photoCollection;