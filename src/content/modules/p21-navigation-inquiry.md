---
number: 2
title: P21 Navigation and Inquiry
week: 1
minutes: 180
signoff: false
status: published
summary: Move around Prophet 21 with the menus and shortcuts, then look up a customer, an item with its stock by location, a customer's price, and a customer's past orders.
---

Prophet 21 (P21) holds every customer, item, order, quote, and purchase order the branch has. This module teaches you to move around P21 and look things up fast. You will use three lookups on almost every request: the customer, the item and its stock, and what the customer bought before. This module reads records; Module 3 teaches you to change them.

### Learning objectives

After this module you will be able to:

1. Sign in to the correct system and confirm which system you are in before you save anything.
2. Open windows from the menu, your favorites, and the keyboard shortcuts, and keep several windows open at once.
3. Search for any record with the fewest characters that find it.
4. Use inquiry windows to look, and recognize the maintenance and entry windows that change records.
5. Read a customer account in Customer Master Inquiry: address, credit status and terms, ship-tos, salesperson, contacts, and notes.
6. Read an item in Item Master Inquiry: description, unit of measure, stock by location, open POs, open orders, transfers, and substitutes.
7. Convert between the common units of measure: EA, FT, SI, and SF.
8. Find a past sale in Customer Sales History and open the order behind it.
9. Answer the most common phone and counter questions with P21 lookups alone.

## 2.1 Signing In and Reading the P21 Screen

TRG runs two copies of P21. **Live P21** is the real system: orders saved there print, ship, and bill. The **P21Play System** is a copy of live data for training. Do every practice task in this course in the P21Play System until your mentor moves you to live P21.

Stock and order status in the P21Play System lag behind live P21. When an exercise and the P21Play System disagree, trust the P21Play System and write down what you found.

### Signing in

1. Open P21 from the shortcut your branch set up. Pick the P21Play System for practice.
2. Sign in with **your own user ID and password**. Every order, quote, and change carries the ID of the person who made it.
3. Read the **title bar** for the system before you start. Do this every time you sign in.
4. Lock your screen or sign out when you step away.

[IMAGE EXAMPLE: The P21 sign-in window. The title shows which system you are signing in to; this one says LIVE]

> ⚠️ SAFETY & COMPLIANCE: Check which system you are in before you save anything. An order saved in live P21 by mistake can ship product and bill a customer for something they never ordered.

### The parts of the screen

| Part | Where it is | What you use it for |
|---|---|---|
| Title bar | Top of the P21 window | Shows the system and the open window |
| Main menu | Left side or top | Opens every window by area |
| Favorites | Beside the main menu | Your most-used windows, one click away |
| Toolbar | Under the title bar | Save, new, clear, delete, print, and close buttons |
| Window tabs | Across the top of each window | Move between the main record and its detail |
| Fields | Inside each tab | Hold one value each: an ID, a date, a quantity |

The first time you open each window, click through every tab and write down what each one holds.

> 💡 KEY TAKEAWAY: Your user ID is your signature in P21. Use only your own, and never share your password.

## 2.2 Moving Around: Menus, Shortcuts, and Search

Open a window, find the record, read its tabs, and save only if you changed something.

### The main menu

These are the areas you will use most in your first weeks.

| Menu area | Windows you will use | What they do | Module |
|---|---|---|---|
| Orders | Order Entry, Order Inquiry, Sales Pricing Inquiry | Enter and look up orders; check a customer's price | 2, 6 |
| CRM | Customer Master Inquiry, Ship To Maintenance, Contact Maintenance | Look up accounts; keep ship-to's and contacts current | 2, 3 |
| Inventory | Item Master Inquiry | Look up items and stock | 2 |
| Inventory > Purchasing | Purchase Order Entry, Purchase Order Inquiry | Buy stock and check what is coming | 13 |
| Inventory > Shipping | Shipping | Reprint pick tickets and confirm shipments | 6 |

'

Add the windows you use every day to your **favorites**: Customer Master Inquiry, Item Master Inquiry, Order Inquiry, and Order Entry.

[IMAGE EXAMPLE: The P21 menu open over Order Entry. Starred windows are your favorites]

### Keyboard shortcuts

Press **Alt + F1** in P21 to see the full cheat sheet.

| Keys | What it does |
|---|---|
| **Open a window** |  |
| F2 | Opens a new Item Master Inquiry window |
| F8 | Opens a new Customer Master Inquiry window |
| Alt + F10 | Opens a new Transaction Master Inquiry window |
| Alt + F8 | Opens a new Vendor / Supplier Management window |
| **Work in a window** |  |
| Ctrl + S | Quick save |
| Ctrl + Z | Undoes the last change |
| Alt + C | Clears the window |
| Ctrl + W | Closes the window |
| Tab | Moves to the next field |
| Shift + Tab | Moves back one field |
| Enter | Opens the search on a partial entry |
| F6 | Moves focus to the next section of the window |
| Alt + P | Opens the popup |
| Alt + K | Opens the custom popup |
| Alt + F7 | Shows the date, time, and user |
| **Move between windows** |  |
| Alt + Right Arrow | Next window |
| Alt + Left Arrow | Previous window |
| Alt + Up Arrow | Snaps the window splitter up |
| Alt + Down Arrow | Snaps the window splitter down |
| **Panels** |  |
| Alt + M | Menu panel |
| Alt + F | Favorites panel |
| Alt + H | History panel: windows and records you opened recently |
| Alt + N | Notifications panel |
| Alt + R | Shows or hides the toolbar |
| **Help** |  |
| Alt + F1 | Shortcuts cheat sheet |
| Ctrl + right-click | Opens the browser's right-click menu |

### Searching for a record

Most ID fields (customer, ship-to, contact, item, order) open a search window.

1. Type part of the value, then press Enter or click the Open Search button.
2. Search on the **shortest piece that is unique**. "SOUTHEAST" finds the account; "Southeastern Paper Mill, Inc." misses it when the record spells Inc without the period.
3. When too many records come back, add a second filter: city, phone, or ZIP code.
4. Pick the record, then confirm it is the right one before you go on.

| Looking for | Search by |
|---|---|
| A customer | Customer ID, part of the company, phone number, city |
| An item | Item ID, a word from the description, manufacturer part number, customer part number |
| An order | Order number, the customer's PO number, the customer ID |
| A quote | Quote number, the customer ID |

> 💡 KEY TAKEAWAY: When a search finds nothing, search again with less. Most "it isn't in the system" answers come from searching on too much text.

### Inquiry, maintenance, and entry windows

| Window type | What it does | Use it when | Examples |
|---|---|---|---|
| Inquiry | Shows a record; fields are locked | You only need to look | Customer Master Inquiry, Item Master Inquiry, Order Inquiry |
| Maintenance | Adds or changes a record | You need to add or fix something, and you are trained to | Ship To Maintenance, Contact Maintenance |
| Entry | Creates a transaction | You are entering a new order, quote, or PO | Order Entry, Quote Entry, Purchase Order Entry |

> ⚠️ SAFETY & COMPLIANCE: Use the inquiry window when you only need to look. A maintenance window opened "just to check" is the most common way trainees change a record by accident. If you change something by mistake, press Ctrl + Z before you save, or close without saving.

### Working with several windows

Keep Customer Master Inquiry open beside Order Entry. Check history and notes as you take the order, without closing the order.

### Saving and closing

P21 keeps a change only after you save. Close a window with unsaved changes and P21 asks what to do. Read the prompt before you click.

### Notes and pop-ups

Customers, ship-to's, items, and orders carry notes. A note set to pop up appears when you open the record. Read every one. It may say "PO required," "call before delivery," or "do not substitute brands."

## 2.3 Customer Master Inquiry

Know who the customer is, how they buy, and what rules come with the account before you quote, enter an order, or answer a question. **Customer Master Inquiry** (F8) shows it all in one window.

### How customer records fit together

| Record | What it is | Example |
|---|---|---|
| Customer (bill-to) | The account that gets the invoice | Southeastern Paper Mill, billed to its accounts payable office |
| Ship-to | A delivery address under the customer | The mill, a warehouse across town, a second plant |
| Contact | A person at the customer | A buyer, a maintenance planner, an accounts payable clerk |

One customer has many ship-to's and many contacts. Some companies have several customer accounts, one per plant, each billing to a different office. Module 3 teaches you to add and maintain ship-to's and contacts.

### Steps

1. Press **F8** to open Customer Master Inquiry.
2. Search by customer ID, part of the company, phone number, or city.
3. **Confirm the right account.** Check the physical address and the ship-to list. When two accounts look alike, ask the caller which plant, location, or address they are calling about.
4. On the **Credit Status** tab, check the account status and terms. An account on COD or Hold changes what you can promise; bring in your mentor before you go on.
5. Read the **Customer Notes**: PO required, release numbers, receiving hours, tax exemption, brand preferences.
6. Check the **Ship To / Salesrep** tab. Is the delivery address on file? Who is the salesperson?
7. Check the **contacts**. Is the caller listed, with the right phone and email?
8. Check **Open Orders** and **Open Quotes** before you create anything new. A customer calling to "order those gaskets" may already have a quote waiting.

[IMAGE EXAMPLE: Customer Master Inquiry main screen with the customer ID and contacts highlighted, and the Physical Address, Credit Status, Ship To / Salesrep, Customer Notes, Customer Sales History, Open Orders, and Open Quotes tabs highlighted]

### What each part holds

| Where | What to read | What it tells you |
|---|---|---|
| Main screen | Customer ID, company, contacts | Which account you have open and who you can talk to |
| Physical Address tab | Street address, city, state, ZIP | Confirms the account; tells two plants apart |
| Credit Status tab | Account status, terms | Whether the account can buy on terms today, and how it pays |
| Ship To / Salesrep tab | Ship-to addresses, salesperson | Where orders deliver and who owns the account |
| Customer Notes tab | Account rules | What every order on this account needs |
| Customer Sales History tab | Invoiced lines by date | What the customer bought, when, and at what price (2.5) |
| Open Orders tab | Orders not yet shipped | What is already on the way |
| Open Quotes tab | Quotes not yet ordered | Prices already given |

### Credit status: what it means for you

| Status | What you do |
|---|---|
| Good | Take the order on the account's terms |
| COD | Take the order; payment by credit or debit card at pickup and before delivery |
| Hold | Take the order, tell the customer you need to check one thing, and bring in your manager. Only a manager or accounting releases a hold. |

> 📌 INDUSTRY INSIGHT: Large customers often have many accounts. A paper company may have one account per mill; an equipment dealer may have one per store. The company alone rarely tells you which account to use. The physical address and the ship-to list do.

### What to say as you look

- "Can I get your account number, or the company and city?"
- "I have Southeastern Paper Mill on Mill Road in Riverside. Is that the right location?"
- "Who am I speaking with?" Then check the contact list.
- "Is this going to the mill or to the warehouse?"

## 2.4 Item Master Inquiry and Stock by Location

Most requests come down to three questions: do you have it, where is it, and when can I get it? **Item Master Inquiry** (F2) answers all three.

### Steps

1. Press **F2** to open Item Master Inquiry.
2. Search by item ID, a word from the description, a manufacturer part number, or the customer's part number. Your mentor will show you how your branch builds item IDs.
3. Read the full **description** and the **unit of measure** (UOM).
4. Check your **location**: net quantity available.
5. On the **Inventory** tab, check other locations. Another branch may have it and can transfer it.
6. On the **Open PO** tab, check what is coming and the expected date.
7. On the **Open Order** tab, check which orders hold the stock you see on hand.
8. On the **Transfer** tab, check stock already moving between branches.
9. On the **Substitute** tab, check approved alternates when the item is out.

[IMAGE EXAMPLE: Item Master Inquiry main screen with the item ID, description, location, net quantity available, and unit of measure highlighted, and the Inventory, Open PO, Open Order, Transfer, and Substitute tabs highlighted]

### What each part holds

| Where | What to read | What it tells you |
|---|---|---|
| Main screen | Item ID, description, location, net quantity available, UOM | What the item is and how many you can promise |
| Inventory tab | Stock at every location | Which branch has it |
| Open PO tab | PO number, quantity, expected date | When more arrives |
| Open Order tab | Orders holding stock | Who the allocated stock belongs to |
| Transfer tab | Transfers in and out | Stock already on its way between branches |
| Substitute tab | Approved alternate items | What to offer when the item is out |

### Reading stock quantities

| Quantity | What it means | Example |
|---|---|---|
| On hand | Physically in your building | 100 FT |
| Allocated | Already promised to open orders | 60 FT |
| Net available | On hand minus allocated: what you can promise | 40 FT |
| On order | Coming in on open POs | 200 FT, expected in 5 business days |

> ⚠️ SAFETY & COMPLIANCE: Promise only the net available quantity. Stock that is on hand and allocated belongs to another customer's order.

> 📌 INDUSTRY INSIGHT: P21 counts total feet on hand. 300 FT of hose on hand can be one 250 FT reel and a 50 FT remnant. Before you promise one continuous length, have the warehouse check the reels and the remnant rack.

### Units of measure

The unit of measure says what one unit of the item is. Read it every time before you enter a quantity.

| Unit | Meaning | Typical items |
|---|---|---|
| EA | Each, one piece | Fittings, clamps, couplings, cut gaskets, assemblies |
| FT | Foot | Bulk hose, tubing, cord |
| SI | Square inch | Gasket sheet and sheet rubber sold by the piece |
| SF | Square foot | Sheet rubber and gasket sheet in larger pieces |
| RL | Roll | Full rolls of sheet rubber or tape |

EA, SI, and SF are the most common units across TRG.

### Converting units

| Convert | Rule | Example |
|---|---|---|
| Inches to feet | Divide by 12 | 78 in of hose = 6.5 FT |
| A piece of sheet to SI | Length (in) × width (in) | 12 in × 24 in = 288 SI |
| SI to SF | Divide by 144 | 288 SI = 2 SF |
| A piece of sheet to SF | Length (ft) × width (ft) | 3 ft × 4 ft = 12 SF |

> 💡 KEY TAKEAWAY: 100 SI of gasket sheet is one piece about 10 in × 10 in. Read the unit before you read the quantity.

### Price

Price depends on the customer. Check a customer's price in Sales Pricing Inquiry: Orders > Order Processing > Inquiry > Sales Pricing Inquiry. Enter the customer ID and the item ID so the customer's own pricing applies. Module 6 covers pricing in full.

### When you can't find the item

1. Search again with less text, or with a manufacturer or customer part number.
2. Try another description. A customer's "cam lock" is a cam and groove fitting; a "red rubber" sheet is SBR.
3. Check the Substitute tab on a similar item.
4. Ask your mentor. The item may need a special order or a new item setup; Module 6 covers both.

## 2.5 Orders, Quotes, and Sales History

"Send me the same hose as last time" is one of the most common requests you will get. The customer rarely has the part number. **Customer Sales History** has it.

### Where to look

| What you need | Where to find it |
|---|---|
| Everything a customer bought in a date range | Customer Master Inquiry, Customer Sales History tab |
| The full order: every line, the PO, the ship-to | Order Inquiry, opened from the history line or by order number |
| Orders not yet shipped | Customer Master Inquiry, Open Orders tab |
| Prices given and not yet ordered | Customer Master Inquiry, Open Quotes tab |
| Who else holds stock of an item | Item Master Inquiry, Open Order tab |

### Steps: "the same as last time"

1. Press **F8**, find the customer, and confirm the account (2.3).
2. Open the **Customer Sales History** tab.
3. Narrow the list with what the customer gives you: a **date range** ("back in April"), a word from the **description** ("steam," "2 inch"), the **ship-to** ("for the No. 2 machine"), or their **PO number**.
4. Open the matching line. Read the **item ID**, **quantity**, **unit of measure**, and **price**.
5. Open the **order** to see the other lines. A hose often ships with fittings, clamps, or a matching assembly on the same order.
6. Read the item description back to the customer. Ask whether anything changed: length, ends, temperature, or media.

[IMAGE EXAMPLE: Customer Master Inquiry main screen with the customer ID highlighted and the Customer Sales History tab highlighted, open to a date range with one hose line and its order number]

### Order Inquiry

Order Inquiry shows one order from entry to invoice. Open it by order or by item, or from a line in sales history, then drill into the order. The line items open on the main screen.

| Where | What to read | What it tells you |
|---|---|---|
| Main screen | Order number, customer, ship-to, PO number, status | Which order you have and where it stands |
| Main screen, line items | Item, quantity ordered, quantity shipped, UOM, disposition | What was ordered and what is still open |
| Shipments | Ship date, carrier, quantity shipped | What left the building and when |
| Invoices | Invoice number and date | What has billed |

[IMAGE EXAMPLE: Order Inquiry main screen with the order number, customer, PO number, status, and line items highlighted, and the Shipments and Invoices tabs highlighted]

### Answering the common questions

| The customer asks | Where you look | What you read |
|---|---|---|
| "Do you have it?" | F2, main screen | Net quantity available at your location |
| "Does another branch have it?" | F2, Inventory tab | Stock at every location |
| "When will more come in?" | F2, Open PO tab | Expected date and quantity |
| "Where's my order?" | Order Inquiry | Status, shipments, carrier |
| "What did I pay last time?" | F8, Customer Sales History | Price on the last line |
| "Did you already quote this?" | F8, Open Quotes | Quote number, items, and expiration |

### Case study: the outage hose

A maintenance planner at Southeastern Paper Mill calls: "We need the same steam hoses you made us for the outage last spring. Six of them."

1. **F8.** The rep searches "SOUTHEAST" and gets two accounts: the mill and the box plant. The planner confirms the mill on Mill Road.
2. **Credit Status.** The account shows Good, on Net 30 terms.
3. **Customer Notes.** "PO required on every order. Deliver to the storeroom dock."
4. **Customer Sales History.** The rep sets the date range to March through May of last year and filters on "steam." One line: six 1 in steam hose assemblies, 25 FT each, EA.
5. **Order Inquiry.** The order also carried twelve interlocking clamps. The rep reads both lines back.
6. **Changes.** The planner confirms the same length, same ends, same 150 psi steam service.
7. **F2.** The rep checks bulk steam hose: 140 FT net available, 150 FT needed. One 100 FT reel arrives on an open PO in two days.
8. The rep gives the planner a real ready date, gets the new PO number, and moves to Order Entry (Module 6).

The planner described the hose in one sentence. Sales history supplied the item, the length, the ends, and the clamps. The stock check caught a 10 FT shortfall before anyone promised it.

> 💡 KEY TAKEAWAY: Sales history answers "what did we sell them" with facts. Check it before you ask the customer to describe the part again.

## 2.6 What If and Rookie Mistakes

### What if...

| Situation | What to do | Reason |
|---|---|---|
| A customer search finds nothing | Search again with less text, then by phone number and city | The account may be spelled differently than the caller says it |
| Two accounts match the caller | Read both physical addresses and ask which plant, location, or address | Each account bills and ships differently |
| The caller is missing from the contacts | Take their phone and email, finish the request, and tell your mentor so the contact gets added (Module 3) | Every order needs a contact who can answer questions |
| An item shows on hand and 0 net available | Check the Open Order tab for who holds it, then Open PO and Transfer for what is coming | Allocated stock belongs to another customer's order |
| The item is out everywhere | Check the Substitute tab, then ask your mentor about a special order | A substitute or a special order can still fill the need |
| A customer needs one continuous length | Have the warehouse check the reels and remnants before you promise it | P21 counts total feet; it can be in several pieces |
| Sales history shows the item at an old price | Check the current price in Sales Pricing Inquiry | Prices change; last year's price is history |
| A pop-up note appears | Read it all before you close it | It holds account rules every order must follow |
| You opened a maintenance window by mistake | Close it without saving, or press Ctrl + Z before you save | A saved change affects every order after it |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| Working in live P21 during practice | Real orders, real shipments, real invoices | Read the title bar every time you sign in |
| Picking the first account that comes up | An order billed and shipped to the wrong plant | Confirm the physical address and ship-to with the caller |
| Searching on the full company name | "It isn't in the system" when it is | Search on the shortest unique piece |
| Clicking past pop-up notes | A missing PO or release number, a refused delivery | Read every note |
| Promising on-hand stock | Stock promised twice; one customer gets shorted | Read net quantity available |
| Reading the quantity before the unit | 100 EA entered when the customer wanted 100 FT | Read the UOM first |
| Saying "we don't have it" after one look | A lost sale that incoming stock could have filled | Check the Inventory, Open PO, Transfer, and Substitute tabs |
| Copying the item from history and skip viewing the whole previous order | Missing fittings or clamps that shipped with it | Open the order and read every line |
| Creating a new quote when one is open | Two prices for one request | Check Open Quotes first |

## 2.7 P21 Terms

| Term | Meaning |
|---|---|
| P21 | Prophet 21, the ERP system every TRG branch uses |
| P21Play System | The training copy of P21; nothing saved there ships or bills |
| Inquiry window | Shows a record with locked fields |
| Maintenance window | Adds or changes a master record: customer, ship-to, contact, item |
| Entry window | Creates a transaction: order, quote, PO |
| Favorites | Your shortcut list of most-used windows |
| Customer ID | The number every order, quote, and invoice for an account is tied to |
| Bill-to | The account that receives the invoice |
| Ship-to | A delivery address under a customer |
| Contact | A person at the customer |
| Credit status | Whether an account can buy on terms; COD and Hold change what you can promise |
| Item ID | The number every transaction for an item is tied to |
| UOM | Unit of measure: EA, FT, SI, SF, RL |
| On hand | Stock physically in the building |
| Allocated | Stock promised to open orders |
| Net available | On hand minus allocated: what you can promise |
| Open PO | A purchase order not yet fully received |
| Transfer | Stock moving between branches |
| Substitute | An approved alternate item |
| Sales history | Invoiced lines for a customer or an item |
| Disposition | The code on an order line that says how it will be filled (Module 6) |

## 2.8 Practice, Knowledge Check, and Module Quiz

### Practice in the P21Play System

Your mentor picks three real accounts and three items for these exercises. Write your answers in your notebook and bring them to your mentor.

1. **Navigation.** Add Customer Master Inquiry, Item Master Inquiry, Order Inquiry, and Order Entry to your favorites. Open Customer Master Inquiry with F8 and Item Master Inquiry with F2. List the tabs in each.
2. **Customer lookup.** For each account, write down the customer ID, physical address city, terms, salesperson, number of ship-tos, and any notes that pop up.
3. **Two accounts, one company.** Your mentor gives you a company with more than one account. Find each account by phone number and by city. Write what makes them different.
4. **Item lookup.** For each item, write the item ID, description, UOM, net available at your location, the location with the most stock, the next open PO date, and any substitutes.
5. **Who holds it.** Find an item with allocated stock. On the Open Order tab, write the orders that hold it.
6. **Units.** Convert: 54 in of hose to FT; a 24 in × 36 in piece of sheet to SI and SF.
7. **Same as last time.** Your mentor plays a customer: "I need the same hose you sent us a few months back." Find the item, quantity, UOM, PO, and order number, then open the order and list every line.
8. **Where's my order.** Find an open order for one of your accounts in Order Inquiry. Write its status and what is still open.

### Knowledge check (practice)

1. You want to check a customer's terms. Which window and which tab do you open?
2. A search for "Southeastern Paper Mill Inc" finds nothing. What do you try next?
3. An item shows 120 on hand and 90 allocated. How many can you promise a new order?
4. A customer orders 288 SI of gasket sheet. How many SF is that?
5. A caller says, "Send me what we got back in March." Where do you look first?
6. List three tabs to check before you tell a customer "we don't have it."
7. How do you confirm you picked the right account when a company has three?
8. Which key opens Item Master Inquiry, and which opens Customer Master Inquiry?

Work these on your own, then check your answers with your mentor.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
