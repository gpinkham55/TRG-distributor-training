---
number: 3
title: Customer Records in P21
week: 1
minutes: 180
signoff: false
status: published
summary: Add and maintain contacts and ship-to's in P21, with the tax, carrier, freight, and delivery settings on each ship-to, and know which records belong to your manager or accounting.
---

Every quote, order acknowledgment, pick ticket, packing list, and invoice pulls its data from the customer record. A wrong contact email loses the quote. A wrong ship-to sends the truck to the wrong gate. A wrong tax setting bills tax the customer does not owe, or leaves the branch owing tax it never collected. This module teaches you to add and maintain the two records you will change most: **contacts** and **ship-to's**, with the tax, carrier, and delivery settings on each ship-to.

### Learning objectives

After this module you will be able to:

1. Explain what one bad field costs on every order that uses it.
2. Tell which customer records you maintain and which belong to your manager or accounting.
3. Search P21 for a contact or ship-to before you add one.
4. Add a contact, link it to the right customer and ship-to, and set its roles and documents.
5. Retire a contact who left and keep the history.
6. Add a ship-to with a deliverable street address, carrier, freight terms, and delivery instructions.
7. Enter addresses, phone numbers, and emails to one standard.
8. Decide when to update a ship-to and when to add a new one.
9. Collect a tax exemption certificate and route it to accounting before any ship-to is marked exempt.

## 3.1 What Bad Customer Data Costs

One wrong field gets copied onto every order, quote, and invoice that uses the record. Fix the record once and every document after it is right.

| Bad data | What happens |
|---|---|
| Wrong or old contact email | Quotes and acknowledgments never reach the buyer; the order goes to a competitor |
| A contact who left still gets invoices | Invoices sit unopened; payment runs late |
| A person's name typed in an address line | The name prints on every packing list; the next buyer gets confused |
| A PO box used as a delivery address | Freight carriers refuse it; the shipment comes back |
| Duplicate ship-to's for one address | Sales history splits in two; nobody finds "the last order" |
| An old ship-to overwritten with a new site | Old orders show an address they never shipped to |
| Wrong tax setting | The customer is billed tax they don't owe, or the branch owes tax it never collected |
| Wrong default carrier | Every order to the site ships the wrong way until someone catches it |

> 💡 KEY TAKEAWAY: Search before you add. Most "new" contacts and addresses are already in P21 under another spelling.

### Who maintains what

You start changing records in this module. Change only the records your role owns. Send the rest to the person who owns them, with the facts.

| Record or field | Who changes it | What you do |
|---|---|---|
| Contacts: add, update, retire | You, once trained | Search, add or update, confirm on the account |
| Ship-to's: add and update address, carrier, instructions | You, once trained | Search, add or update, add a dated note |
| Ship-to tax exemption | Accounting | Collect the certificate and send it to accounting |
| New customer account | Accounting | Gather the details and hand them off |
| Terms, credit limit, credit status | Your manager or accounting | Never change them; report what the customer told you |
| Salesperson on the account | Your manager | Report a mismatch to your mentor |

> ⚠️ SAFETY & COMPLIANCE: Never delete a contact or ship-to. Old orders and invoices point to them. Mark the record inactive.

> 📌 INDUSTRY INSIGHT: Do all practice in the P21Play System. In live P21, write down the bad data you find and give it to your mentor until your mentor clears you to make changes.

## 3.2 Contact Maintenance

A contact is a person at the customer. Contacts decide who gets each quote, acknowledgment, and invoice, and who you call with a question.

### Contact roles

| Role | Who it is | What they get |
|---|---|---|
| Purchasing | Buyer, purchasing agent | Quotes, order acknowledgments |
| Accounts payable | AP clerk or a shared AP mailbox | Invoices, statements |
| Maintenance or engineering | Planner, mechanic, engineer | Technical questions, delivery calls |
| Receiving | Dock or warehouse lead | Delivery appointments |

At a small customer one person often holds every role. At a large plant each role is usually a different person. A shared AP mailbox is fine for invoices; the account still needs a buyer who is a real person.

### Steps: add a contact

1. **Search first.** Open **Contact Maintenance** and search by last name, then email, then phone number. If the person is already there, update that record.
2. Enter **first name**, **last name**, and **title**.
3. **Link** the contact to the customer. If the person works at one site, link them to that ship-to too.
4. Enter **direct phone**, extension, **mobile**, and **email**. Read the email back to the caller one letter at a time.
5. Set the contact's **role** or roles.
6. Set which **documents** the contact receives by email: quotes, acknowledgments, invoices.
7. Save with **Ctrl + S**.
8. Press **F8**, open the account, and confirm the contact shows on it.

[IMAGE EXAMPLE: Contact Maintenance main screen with the name, title, phone, and email highlighted, and the tabs that hold the customer link and document settings highlighted]

### Data standards

Enter every contact the same way so the next person can find it.

| Field | Standard | Example |
|---|---|---|
| First and last name | Capitalize the first letter; spell it the way the person spells it | Dana Ruiz |
| Title | Job title as the person gives it | Maintenance Planner |
| Phone | 10 digits with the area code; extension in its own field | (205) 555-0142, ext. 318 |
| Email | All lowercase, read back one letter at a time | druiz@southeasternpaper.com |

### Steps: a contact leaves the company

1. Mark the record **inactive**. Keep it on file; old quotes and orders point to it.
2. Move the person's roles and document settings to the replacement. Add the replacement first when needed.
3. Add a dated note with your initials and who told you.
4. If the person received invoices, tell accounting.

> 📌 INDUSTRY INSIGHT: Plants change buyers and planners often. When a caller says "I'm new here," add them and ask who they replaced. That one question keeps the account clean.

> 💡 KEY TAKEAWAY: Each document goes to the person who acts on it. Quotes to the buyer, invoices to AP, delivery calls to receiving.

## 3.3 Ship To Maintenance

A ship-to is a delivery address under a customer. It controls where the product goes, how it gets there, and what tax applies.

### Steps: add a ship-to

1. **Search first.** Press **F8**, open the account, and read the Ship To / Salesrep tab. Most "new" addresses are a building, gate, or dock already on file.
2. Open **Ship To Maintenance** and enter the customer ID.
3. Enter the **ship-to name** as it should print on the packing list. Add the site so drivers and receivers can tell sites apart: "Southeastern Paper Mill, Mill No. 2."
4. Enter **Address 1**, **Address 2**, **City**, **State**, and **ZIP code**. Put the building, gate, or dock in Address 2.
5. Enter the site's **phone number**.
6. Set the **salesperson** and **territory** to match the account.
7. Set the default **carrier** and **freight terms** (3.4).
8. Enter **delivery instructions**: receiving hours, call ahead, gate pass, PO on the label.
9. Set the **tax** fields for the delivery address (3.4).
10. Set the **default location**: the branch that ships to this address.
11. Save with **Ctrl + S**, reopen the ship-to, and confirm every field saved.

[IMAGE EXAMPLE: Ship To Maintenance main screen with the ship-to name and address highlighted, and the tabs that hold the carrier, delivery instructions, and tax settings highlighted]

### What goes where

| Information | Field |
|---|---|
| Company and site | Ship-to name |
| Street address | Address 1 |
| Building, gate, dock, or suite | Address 2 |
| Receiving person | A contact linked to the ship-to |
| "Call 30 minutes before delivery" | Delivery instructions |
| Receiving hours | Delivery instructions |
| A PO box | The customer's bill-to address only; trucks need a street address |

### Address standards

Enter addresses the way the postal service and freight carriers read them.

| Rule | Example |
|---|---|
| Street number and street in Address 1 | 410 Industrial Park Rd |
| Standard street abbreviations | Rd, St, Ave, Blvd, Hwy, Pkwy |
| Unit, building, or dock in Address 2 | Bldg C, Dock 4 |
| Two-letter state code | AL |
| ZIP code; add the 4-digit extension when the customer gives it | 36110 or 36110-1234 |

### Update or add new?

| The customer says | Do this |
|---|---|
| "Our dock moved to the other side of the building." | Update the ship-to: same site, new detail |
| "Our receiving hours changed." | Update the delivery instructions |
| "We moved to a new plant across town." | Add a new ship-to; mark the old one inactive when the customer confirms it closed |
| "Ship this one to our contractor." | Add a new ship-to, or use a one-time address on the order (Module 6) |

Before you update a ship-to, write the old values in your notebook. After you save, add a dated note with your initials and who asked for the change.

> ⚠️ SAFETY & COMPLIANCE: Keep every old site on its own ship-to. Overwrite a ship-to with a new site and every past order on it shows an address it never shipped to.

> 💡 KEY TAKEAWAY: Same site, new detail: update. New site: add a new ship-to.

## 3.4 Tax, Carrier, Freight, and Delivery Instructions

Each ship-to carries tax and delivery defaults. Every order to that address picks them up. Set them right once.

### Tax

Sales tax follows the delivery address. P21 uses the ship-to's tax settings to charge tax on each order.

| Situation | What to do |
|---|---|
| Normal taxable delivery | Set the tax jurisdiction for the delivery address |
| The customer says they are tax exempt | Ask for the exemption certificate and send it to accounting. Accounting marks the ship-to exempt once the certificate is on file. |
| Will call (the customer picks up) | Tax follows your branch's address; your mentor shows you how your branch sets it up |
| Delivery to another state | Ask accounting before you set the tax fields |
| A certificate expires | Tell accounting; the customer needs a new one on file |

### Steps: a customer says they are tax exempt

1. Ask for the **exemption certificate** by email.
2. Check that it shows the customer's legal company, address, the state, the exemption type, and a signature.
3. Send it to accounting with the customer ID and the ship-to's it covers.
4. Leave the ship-to taxable until accounting confirms the certificate is on file.
5. Tell the customer that tax shows on orders until accounting finishes; accounting credits it back when the state rules allow.

> ⚠️ SAFETY & COMPLIANCE: Never mark a ship-to tax exempt on the customer's word. Without a certificate on file, the branch owes the tax it did not collect.

> 📌 INDUSTRY INSIGHT: Many plants buy repair parts tax exempt under manufacturing exemptions, and farms often buy under agricultural exemptions. The rules vary by state and by how the part is used. Accounting decides; you collect the certificate.

### Carrier

| Carrier | When it fits |
|---|---|
| Branch truck | Local deliveries on your branch's route |
| Will call | The customer picks up at the counter |
| Parcel (UPS, FedEx) | Small, light orders off your route |
| LTL freight | Heavy or bulky orders: rolls of sheet, reels of hose, expansion joints |
| Customer's carrier or account | The customer arranges freight and pays the carrier (collect) |

### Freight terms

Freight terms say who pays shipping and how it shows on the invoice.

| Term | Who pays | How it shows |
|---|---|---|
| Prepaid | The branch | No freight line on the invoice |
| Prepaid and add | The branch pays the carrier; the customer pays the branch | A freight line on the invoice |
| Collect | The customer pays the carrier | No freight line; the carrier bills the customer |

Set the terms the customer buys on. When you don't know them, ask your mentor before you set them.

### Delivery instructions

Write instructions a driver and the warehouse can act on:

- Receiving hours
- Call ahead, with the phone number
- Gate, dock, or door number
- PO or release number required on the label or packing list
- Safety gear required on site: hard hat, safety glasses, steel toes

> 💡 KEY TAKEAWAY: A ship-to is right when a driver who has never been there can deliver to it, and accounting can bill it, without calling anyone.

## 3.5 Case Study, What If, and Rookie Mistakes

### Case study: the new warehouse

Dana Ruiz calls from Southeastern Paper Mill: "I'm the new buyer. We opened a parts warehouse at 410 Industrial Park Road, Building C. Ship our gasket orders there. Dock 4, and call the dock before you come. Send quotes to me. Pat Owens retired."

1. **F8.** The rep finds the account and reads the Ship To / Salesrep tab. No ship-to at 410 Industrial Park Rd.
2. **Contact Maintenance.** The rep searches "Ruiz," then Dana's email. No match. The rep adds Dana: title Buyer, direct phone, email read back one letter at a time, role Purchasing, receives quotes and acknowledgments. Linked to the account.
3. **Retire Pat.** The rep marks Pat Owens inactive, moves Pat's quote setting to Dana, and adds a dated note: "Retired per Dana Ruiz."
4. **Ship To Maintenance.** The rep adds the ship-to: "Southeastern Paper Mill, Parts Warehouse." Address 1: 410 Industrial Park Rd. Address 2: Bldg C, Dock 4. Delivery instructions: "Call dock before delivery" with the dock phone.
5. **Carrier and freight.** The warehouse is on the branch truck route. The rep sets the branch truck and the account's freight terms.
6. **Tax.** The rep asks whether the warehouse buys under the same exemption as the mill. Dana isn't sure. The rep leaves the ship-to taxable and asks Dana to email the certificate for accounting.
7. The rep saves, reopens both records, and confirms they show on the account.

One call changed three records. The next gasket order to the warehouse prints the right dock, reaches the right buyer, and taxes the right way.

### What if...

| Situation | What to do | Reason |
|---|---|---|
| The caller is already in P21 on another account | Ask which account they buy for; link them to the right one | A contact on the wrong account gets the wrong documents |
| One address has two ship-to's | Tell your mentor; keep using the one with the order history | Duplicates split sales history |
| A customer asks to ship to a PO box | Ask for the street address of the receiving site. | Company policy: We can't ship to a P.O. Box |
| A customer wants their terms or credit limit changed | Take the details and hand them to your manager | Terms and credit belong to your manager and accounting |
| A caller says "put me on the invoices" | Pass the call to accounting - only accounting changes the contact that receives receipts | AP changes affect how the branch gets paid |
| The ship-to's salesperson differs from the account's | Tell your mentor | Commissions and account ownership follow the salesperson |
| A new customer with no account calls to order | Take the details and send them to accounting | Accounting directs customers in creating new customer accounts |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| Adding a contact without searching | Two records for one person; history split | Search by last name, email, and phone first |
| One contact set to receive everything | Invoices reach a maintenance planner | Send each document to the person who acts on it |
| A typo in an email | Quotes and acknowledgments disappear | Read the email back one letter at a time |
| Deleting a contact who left | Old quotes and orders lose their contact | Mark the contact inactive |
| Names or instructions in address lines | The label and packing list print wrong | Use the delivery instructions and contact fields |
| Overwriting a ship-to with a new site | Past orders show the wrong address | Add a new ship-to for a new site |
| Marking a ship-to exempt on the customer's word | The branch owes the tax | Get the certificate to accounting first |
| Skipping the check after saving | A field that didn't save goes unnoticed | Reopen the record and read it |

## 3.6 Customer Record Terms

| Term | Meaning |
|---|---|
| Bill-to | The account that receives the invoice |
| Ship-to | A delivery address under a customer |
| Contact | A person at the customer |
| Contact role | What the person does for the customer: purchasing, AP, maintenance, receiving |
| Document settings | Which documents a contact receives by email |
| Inactive | A record kept for history and hidden from new orders |
| Address 1 / Address 2 | Street address / building, gate, dock, or suite |
| Default location | The branch that ships to a ship-to |
| Carrier | How an order travels: branch truck, will call, parcel, LTL, customer's carrier |
| LTL | Less than truckload: freight for heavy or bulky orders |
| Freight terms | Who pays shipping and how it shows on the invoice |
| Prepaid and add | The branch pays the carrier and adds freight to the invoice |
| Collect | The customer pays the carrier |
| Tax jurisdiction | The tax area set by the delivery address |
| Exemption certificate | The customer's signed form showing a tax exemption |
| One-time address | A delivery address entered on one order (Module 6) |

## 3.7 Practice, Knowledge Check, and Module Quiz

### Practice in the P21Play System

Your mentor picks the accounts. Do every task in the P21Play System and bring your notes to your mentor.

1. **Search before you add.** Your mentor gives you three contacts. Search each one by last name, email, and phone. Write which ones are already in P21 and on which account.
2. **Add a contact.** A practice caller says: "This is Dana Ruiz, the new buyer at Southeastern Paper Mill, Mill No. 2. Send quotes to me." Add Dana, link her to the account and the ship-to, set her role and documents, and confirm she shows on the account.
3. **Retire a contact.** The practice caller adds: "Pat Owens retired. Pat used to get our quotes." Mark Pat inactive and move the quote setting to Dana.
4. **Add a ship-to.** The practice caller asks you to deliver to a new warehouse: 410 Industrial Park Road, Building C, Dock 4, call the dock before every delivery. Add the ship-to with each piece of information in the right field.
5. **Update or add.** For each statement in the "Update or add new?" table in 3.3, tell your mentor what you would do and why.
6. **Find the errors.** Your mentor shows you a ship-to with three planted mistakes. Find and fix them.
7. **Tax exempt.** A practice caller says, "We're tax exempt, take the tax off." Tell your mentor every step you take and who does what.

### Knowledge check (practice)

1. A caller gives you a new contact. What do you do before you add the contact?
2. The receiving clerk's name is typed in Address 2 of a ship-to. Where should it go?
3. A customer moves to a new plant. Do you update the ship-to or add a new one?
4. A contact retired. What do you do with the record?
5. A customer says they are tax exempt. What do you need before the ship-to is marked exempt, and who marks it?
6. Which carrier fits a full reel of 4 in suction hose going 300 miles?
7. Where do you put "call 30 minutes before delivery"?
8. The customer pays the carrier directly. Which freight term is that?

Work these on your own, then check your answers with your mentor.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
