# README

### Problem Statement:

Government releases Tender for work, companies bid to get work. There is possibility of manipulating bid from back-end system.

### Solution:

This application which will store Tender & Bid on Blockchain then using Smart Contract decide which company win bidding.

### Approach

If backend need to transact on blockchain then it will require public key, private key & address
of users. Storing private_key in database OR sending through network is not ideal.

At the moment I think this approach (backend transacting on blockchain) is good for those
application where user's interaction data is not stored on blockchain.
Example application: storing logs on blockchain for audit purpose.

### Alternative

I will be developing JavaScript Application which will interact with blockchain from browser.
