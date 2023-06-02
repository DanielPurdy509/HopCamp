const pg = require("pg");
const dotenv = require("dotenv").config;

const { Pool } = pg;

const connectionString = "postgres://postgres:docker@localhost:5432/hopcamp";
const pool = new Pool({ connectionString: connectionString });

const seedTents = async () => {
  try {
    // Connect to the database
    const client = await pool.connect();
    const { default: tentsCollection } = await import("./tentLocationsDG.js");

    // Insert the faker data into the table
    await Promise.all(
        tentsCollection.map(async (tent) => {
        const query = {
          text: "INSERT INTO tent_locations (price, icon, lat, lng) VALUES ($1, $2, $3, $4)",
          values: [
            tent.price,
            tent.icon,
            tent.lat,
            tent.long,
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

seedTents();