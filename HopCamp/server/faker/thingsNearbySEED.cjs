const pg = require("pg");
const dotenv = require("dotenv").config;

const { Pool } = pg;

const connectionString = "postgres://postgres:docker@localhost:5432/hopcamp";
const pool = new Pool({ connectionString: connectionString });

const seedThings = async () => {
  try {
    // Connect to the database
    const client = await pool.connect();
    const { default: thingsCollection } = await import("./thingsNearbyDG.js");

    // Insert the faker data into the table
    await Promise.all(
        thingsCollection.map(async (thing) => {
        const query = {
          text: "INSERT INTO things_nearby (img, title, distance) VALUES ($1, $2, $3)",
          values: [
            thing.img,
            thing.title,
            thing.distance,
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

seedThings();