const { expect } = require('chai')
const knex = require('knex')
const app = require('../src/app')
const { makeNotesArray } = require('./note.fixtures')
const { makeFoldersArray } = require('./folder.fixtures')

describe('Noteful Endpoints', function() {
  let db 

  before('make knex instance', () => {
    db = knex({
      client: 'pg',
      connection: process.env.TEST_DB_URL,
    })
    app.set('db', db);
  })

  after('disconnect from db', () => db.destroy())

  before('clean the table', () => db('folder').truncate())

  afterEach('cleanup',() => db('folder').truncate())

  describe(`GET /api/folder`, () => {
    context(`Given no folder`, () => {
      it(`responds with 200 and an empty list`, () => {
        return supertest(app)
          .get('/api/folder')
          .set("Authorization", `Bearer ${process.env.API_TOKEN}`)
          .expect(200, [])
      })
    })

    // describe(`GET /api/folder`, () => {
    //   context('Given there are folders in the database', () => {
    //     const testFolders = makeFoldersArray()
  
    //     beforeEach('insert folders', () => {
    //       return db
    //         .into('folders')
    //         .insert(testFolders)
    //     })
  
    //     it('responds with 200 and all of the folders', () => {
    //       return supertest(app)
    //         .get('/api/folder')
    //         .expect(200, testFolders)
    //     })
    //   })
    // })

  })


})