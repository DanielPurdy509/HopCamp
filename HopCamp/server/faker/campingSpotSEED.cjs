const pg = require("pg");
const dotenv = require("dotenv").config;

const { Pool } = pg;

const connectionString = "postgres://postgres:docker@localhost:5432/hopcamp";
const pool = new Pool({ connectionString: connectionString });

const seedCampingSpots = async () => {
  try {
    // Connect to the database
    const client = await pool.connect();
    const { default: campingSpotCollection } = await import("./campingSpotDG.js");

    // Insert the faker data into the table
    await Promise.all(
      campingSpotCollection.map(async (campingSpot) => {
        const query = {
          text: "INSERT INTO camping_spot (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ($1, $2, $3, $4, $5, $6, $7)",
          values: [
            campingSpot.description,
            campingSpot.pic_url,
            campingSpot.rating,
            campingSpot.num_of_ratings,
            campingSpot.acres,
            campingSpot.location,
            campingSpot.price,
          ],
        };
        await client.query(query);
      })
    );

    // Release the database connection
    client.release();

    console.log("Faker data seeded successfully!");
  } catch (error) {
    console.error("Error seeding faker data:", error);
  } finally {
    // Close the database pool
    pool.end();
  }
};

seedCampingSpots();