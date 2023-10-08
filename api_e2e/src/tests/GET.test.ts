import { expect, test } from '@playwright/test'



test('retrieve first post', async ({ request }) => {
    const response = await request.get('posts/1')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
})

test('retrieve 1st post and check id', async ({ request }) => {
    const response = await request.get('/posts/1')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect( await response.json()).toEqual(expect.objectContaining({
        "id": 1,
        "userId": 1
    }))
})


test('retrieve the 5th post and check id', async ({ request }) => {
    const response = await request.get('/posts/5')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect( await response.json()).toEqual(expect.objectContaining({
        "id": 5,
        "userId": 1
    }))
})


test('listing all posts (100)', async ({ request }) => {
    const response = await request.get('/posts')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect(await response.json()).toHaveLength(100)
})


test('list all comments (500)', async ({ request }) => {
    const response = await request.get('/comments')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect(await response.json()).toHaveLength(500)
})


test('retrieve all comments to the 1st post', async ({ request }) => {
    const response = await request.get('/comments?postId=1')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect( await response.json()).toHaveLength(5)
})


test('listing all albums (100)', async ({ request }) => {
    const response = await request.get('/albums')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect(await response.json()).toHaveLength(100)
})



test('Negative case: Total amount of albums should not be 200)', async ({ request }) => {
    const response = await request.get('/albums')
    expect(response.ok()).toBeTruthy()
    expect(response.status()).toBe(200)
    expect(await response.json()).not.toHaveLength(200)
})

