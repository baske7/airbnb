const faker = require('faker');
const db = require('./db');

async function seedUsers(n = 10) {
  for (let i = 0; i < n; i++) {
    await db.query(
      `INSERT INTO users (usersName, password, email, role, phoneNumber, profileImage, bio, userCreated_at)
       VALUES (?, ?, ?, ?, ?, ?, ?, ?)`,
      [
        faker.internet.userName(),
        faker.internet.password(),
        faker.internet.email(),
        faker.random.arrayElement(['guest', 'host']),
        faker.phone.phoneNumber(),
        faker.image.avatar(),
        faker.lorem.sentences(2),
        new Date()
      ]
    );
  }
  console.log(`✔ Dodato ${n} korisnika`);
}

async function run() {
  try {
    await seedUsers(15);
    console.log('✔ Seedovanje završeno');
  } catch (err) {
    console.error('❌ Greška:', err);
  } finally {
    process.exit();
  }
}

run();
