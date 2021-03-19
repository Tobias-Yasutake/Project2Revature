# Project2Revature

## Project Description

Create and save decks for the game Arkham Horror the Living Card Game, published by Fantasy Flight Games. Look up the actual images of the cards being saved, regardless if what packs you own!

## Technologies Used

MCCV with: 
 - Aura Components
 - Javascript
 - Apex controllers
Consumes an external API (from Arkhamdb.com)


## Features

Load up a public community page!
Look up any Arkham Horror Player Card by writing in its name
Access decks created by the SysAdmin and look at their contents
Edit those contents by adding or deleting cards 

To-do list:

 - Handle all exceptions (what if a row isn't checked onclicked?) 
 - Make (create/delete) deck buttons
 - Adding and removing multiple cards (right now they are all single button)
 - Styling the page (currently it has no styling)
 - Exporting the deck after creation for use in other programs like OCTGN


## Getting Started:
Clone this repo and connect it to an org (recommended: use the salesforce extension with VS Code) 

run the upsert method:

upserter.upsertAll();

Make the decks, copies, and card tabs

For some reason modify the real_name__c and faction__c fields to be required (to make them visible)

Freate some fake decks

## Licenses:

This project does not use any Licenses. The page is public and accessible without any password. To edit the page you need to have admin priviliges. 

