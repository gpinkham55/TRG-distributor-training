---
number: 3
title: Customer Records in P21
week: 1
minutes: 135
signoff: true
status: draft
summary: Add and maintain contacts and ship-tos, including the tax, carrier, and delivery settings on each ship-to.
---

Every quote, order acknowledgment, packing list, and invoice comes from the customer record. If a contact's email is wrong, the quote never arrives. If a ship-to is wrong, the truck goes to the wrong gate. This module teaches you to add and maintain the two records you will touch most: **contacts** and **ship-tos**, including the tax and delivery settings that ride along with each ship-to.

### Learning objectives

After this module you will be able to:

1. Explain what bad customer data costs the branch and the customer.
2. Search P21 for a contact or ship-to before adding a new one.
3. Add a contact, link it to the right customer and ship-to, and set its roles and documents.
4. Retire a contact who left without losing history.
5. Add a ship-to with a correct delivery address, carrier, and delivery instructions.
6. Tell when to update a ship-to and when to add a new one.
7. Know which tax and freight fields need a manager or accounting before you change them.

> 📌 INDUSTRY INSIGHT: In this module you start changing records. Do all practice in the P21Play System. In live P21, write down bad data you find and give it to your mentor until you are signed off.

## 3.1 What Bad Customer Data Costs

One wrong field gets copied onto every order, quote, and invoice that uses the record. Fixing the record once fixes every document after it.

| Bad data | What happens |
|---|---|
| Wrong or old contact email | Quotes and acknowledgments never reach the buyer; the order goes to a competitor |
| A contact who left still gets invoices | Invoices sit unopened; payment runs late |
| A person's name typed in an address line | The name prints on every packing list; the next buyer gets confused |
| A PO box used as a delivery address | Freight carriers can't deliver; the shipment comes back |
| Duplicate ship-tos for one address | Sales history splits in two; nobody can find "the last order" |
| An old ship-to overwritten with a new site | Old orders now show the wrong delivery address |
| Wrong tax setting | The customer is billed tax they don't owe, or the branch owes tax it didn't collect |

> 💡 KEY TAKEAWAY: Search before you add. Most "new" contacts and addresses are already in P21 under another spelling.

> ⚠️ SAFETY & COMPLIANCE: Never delete a contact or ship-to. Old orders and invoices point to them. Mark a record inactive instead.

## 3.2 Contact Maintenance

A contact is a person at the customer. Contacts decide who gets each quote, acknowledgment, and invoice, and who you call with a question.

### Contact roles

| Role | Who it is | What they get |
|---|---|---|
| Purchasing | Buyer, purchasing agent | Quotes, order acknowledgments |
| Accounts payable | AP clerk or AP mailbox | Invoices, statements |
| Maintenance or engineering | Planner, mechanic, engineer | Technical questions, delivery calls |
| Receiving | Dock or warehouse lead | Delivery appointments |

One person can hold more than one role at a small customer. At a large plant, each role is usually a different person.

### Steps: add a contact

1. **Search first.** Open **Contact Maintenance** and search by last name, email, and phone number. If the person is already there, update that record instead of adding a new one.
2. Enter **first name**, **last name**, and **title**.
3. **Link** the contact to the customer. If the person works at one site, link them to that ship-to too.
4. Enter **direct phone**, extension, **mobile**, and **email**. Read the email back to the caller letter by letter.
5. Set the contact's **role** or roles.
6. Set which **documents** the contact receives by email (quotes, acknowledgments, invoices).
7. **Save**. Then open Customer Master Inquiry and confirm the contact shows on the account.

[IMAGE EXAMPLE: Contact Maintenance with name, title, phone, email, the customer link, and the document settings marked]

### Steps: a contact leaves the company

1. Do not delete the contact. Mark the record **inactive**.
2. Move the person's roles and document settings to their replacement. Add the replacement first if needed.
3. Add a dated note with your initials and who told you.
4. If the person received invoices, tell accounting.

> 📌 INDUSTRY INSIGHT: Plants change buyers and planners often. When a caller says "I'm new here," take a minute to add them and ask who they replaced. That one question keeps the account clean.

### Common mistakes

- One contact set to receive everything, so invoices reach a maintenance planner.
- A contact who left still set to receive invoices.
- A generic contact ("Accounts Payable," "Purchasing") with no real person behind it. A shared AP mailbox is fine for invoices, but the account still needs a buyer with a real person's contact.
- A typo in the email address.
- Adding a second record for a person already in P21.

## 3.3 Ship-To Maintenance

A ship-to is a delivery address under a customer. It controls where the product goes, how it gets there, and what tax applies.

### Steps: add a ship-to

1. **Search first.** Open the customer's ship-to list and look for the address. Most "new" addresses turn out to be a building, gate, or dock already on file.
2. Open **Ship To Maintenance** and enter the customer ID.
3. Enter the **ship-to name** as it should print on the packing list. Include the site so drivers and receivers can tell sites apart (for example, "Riverbend Paper, Mill No. 2").
4. Enter **Address 1**, **Address 2**, **City**, **State**, and **ZIP code**. Use Address 2 for the building, gate, or dock.
5. Enter the site's **phone number**.
6. Set the **salesperson** and **territory** to match the account.
7. Set the default **carrier** and **freight terms** (3.4).
8. Enter **delivery instructions**: receiving hours, call ahead, gate pass, PO number on the label.
9. Set the **tax** fields for the delivery address (3.4).
10. Set the **default location**: the branch that ships to this address.
11. **Save**, then reopen the ship-to and confirm every field saved.

[IMAGE EXAMPLE: Ship To Maintenance with the name, address lines, carrier, delivery instructions, and tax fields marked]

### What goes where

| Information | Correct field | Not here |
|---|---|---|
| Building, gate, dock | Address 2 | Ship-to name |
| Receiving person's name | A contact linked to the ship-to | Address lines |
| "Call 30 minutes before delivery" | Delivery instructions | Address lines or name |
| Street address | Address 1 | A PO box |

### Update or add new?

| The customer says | Do this |
|---|---|
| "Our dock moved to the other side of the building." | Update the ship-to: same site, new detail |
| "Our receiving hours changed." | Update the delivery instructions |
| "We moved to a new plant across town." | Add a new ship-to; mark the old one inactive when the customer confirms it is closed |
| "Ship this one to our contractor." | Add a new ship-to, or use a one-time address on the order (Module 6) |

When you update a ship-to, write the old values in your notebook first. Then add a dated note with your initials and who asked for the change.

> ⚠️ SAFETY & COMPLIANCE: Never overwrite an old ship-to with a new site. Every past order on that ship-to would show the new address, and the history no longer matches what shipped.

### Common mistakes

- Overwriting a ship-to with a new location.
- Using a PO box as a delivery address. Many customers bill to a PO box; trucks need a street address.
- Typing names or delivery instructions in the address lines.
- Adding a duplicate ship-to for an address already on file.

## 3.4 Tax and Delivery Setup

Each ship-to carries tax and delivery defaults. Every order to that address picks them up, so set them right once.

### Tax

Sales tax depends on where the product is delivered, not where the customer is billed. P21 uses the ship-to's tax settings to charge tax on each order.

| Situation | What to do |
|---|---|
| Normal taxable delivery | Set the tax jurisdiction for the delivery address |
| Customer says they are tax exempt | Ask for their exemption certificate and send it to accounting; mark the ship-to exempt only after accounting confirms it is on file |
| Will call (customer picks up) | Tax follows your branch's location; ask your mentor how your branch sets it up |
| Delivery to another state | Ask accounting before you set the tax fields |

> ⚠️ SAFETY & COMPLIANCE: Never mark a ship-to tax exempt on the customer's word alone. Without a certificate on file, the branch owes the tax it did not collect.

> 📌 INDUSTRY INSIGHT: Many plants buy repair parts tax exempt under manufacturing exemptions, and farms often buy under agricultural exemptions. The rules vary by state and by what the part is used for. Accounting decides; you collect the certificate.

### Carrier and freight

| Carrier | When it fits |
|---|---|
| Branch truck | Local deliveries on your branch's route |
| Will call | The customer picks up at the counter |
| Parcel (for example UPS or FedEx) | Small, light orders outside your route |
| LTL freight | Heavy or bulky orders: rolls of sheet, reels of hose, expansion joints |
| Customer's carrier or account | The customer arranges freight and gives you their account number |

**Freight terms** say who pays shipping and how it shows on the invoice, for example prepaid, prepaid and added to the invoice, or collect. Set the terms the customer buys on. If you don't know them, ask your mentor before you guess.

### Delivery instructions

Write instructions the driver and the warehouse can act on:

- Receiving hours
- Call ahead, with the phone number
- Gate, dock, or door number
- PO or release number required on the label or packing list
- Safety gear required on site

> 💡 KEY TAKEAWAY: A ship-to is right when a driver who has never been there could deliver to it, and accounting could bill it, without calling anyone.

## 3.5 Practice, Knowledge Check, and Test-Out

### Practice in the P21Play System

Your mentor picks the accounts. Do every task in the P21Play System and bring your notes to your mentor.

1. **Search before you add.** Your mentor gives you three contact names. Search each one by last name, email, and phone. Write which ones are already in P21 and on which account.
2. **Add a contact.** A practice caller says: "This is Dana Ruiz, the new buyer at Riverbend Paper, Mill No. 2. Send quotes to me." Add Dana, link her to the account and the ship-to, set her role and documents, and confirm she shows on the account.
3. **Retire a contact.** The practice caller adds: "Pat Owens retired. Pat used to get our quotes." Mark Pat inactive and move the quote documents to Dana.
4. **Add a ship-to.** A practice caller asks you to deliver to a new warehouse: 410 Industrial Park Road, Building C, Dock 4, call the dock before every delivery. Add the ship-to with the right fields for each piece of information.
5. **Update or add.** For each of the four statements in the "Update or add new?" table in 3.3, tell your mentor what you would do and why.
6. **Find the errors.** Your mentor shows you a ship-to with three planted mistakes. Find and fix them.

### Knowledge check (practice, not graded)

1. A caller gives you a new contact. What do you do before you add the contact?
2. The receiving clerk's name is typed in Address 2 of a ship-to. Where should it go?
3. A customer moves to a new plant. Do you update the ship-to or add a new one?
4. A contact retired. Do you delete the record?
5. A new customer says they are tax exempt. What do you need before you mark the ship-to exempt?
6. Which carrier fits a full reel of 4 in suction hose going 300 miles?
7. Where do you put "call 30 minutes before delivery"?

Work these on your own, then check your answers with your mentor.

### Module quiz and test-out

- **Module quiz:** 10 questions drawn from a pool of 25; 80% to pass.
- **Test-out:** 10 questions; 90% to pass. Passing marks Module 3's reading complete. The mentor sign-off still applies.
- **Mentor sign-off:** with your mentor watching, add one contact and one ship-to in the P21Play System from a practice call, with every field correct.
