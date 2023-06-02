const pg = require("pg");
const dotenv = require("dotenv").config;

const { Pool } = pg;

const connectionString = "postgres://postgres:docker@localhost:5432/hopcamp";
const pool = new Pool({ connectionString: connectionString });

const seedCampersAlsoData = async () => {
  try {
    // Connect to the database
    const client = await pool.connect();
    const { default: campersAlsoCollection } = await import(
      "./campersAlsoDG.js"
    );

    // Insert the faker data into the table
    await Promise.all(
      campersAlsoCollection.map(async (campersAlso) => {
        const query = {
          text: "INSERT INTO campers_also (description, pic_url, rating, num_of_ratings, acres, location, price) VALUES ($1, $2, $3, $4, $5, $6, $7)",
          values: [
            campersAlso.description,
            campersAlso.pic_url,
            campersAlso.rating,
            campersAlso.num_of_ratings,
            campersAlso.acres,
            campersAlso.location,
            campersAlso.price,
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

seedCampersAlsoData();