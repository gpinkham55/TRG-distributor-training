---
number: 6
title: Order Entry and Quoting
week: 2
minutes: 240
signoff: false
status: published
summary: Enter clean orders and kit items in P21, choose line dispositions, check price in Sales Pricing Inquiry, calculate margin, build and convert quotes, and follow an order from pick ticket to invoice.
---

An order tells the warehouse what to pick, the shop what to build, the driver where to go, and accounting what to bill. Every one of those steps starts with the order you entered. A mistake on the order entry becomes a wrong pick, a wrong build, a wrong delivery, or a wrong invoice. This module walks through order entry and quoting in P21, then pick tickets, shipping, invoicing, and order follow-up.

### Learning objectives

After this module you will be able to:

1. Fill in an order header: customer, ship-to, contact, PO, required date, carrier, and freight terms.
2. Enter order lines with the right item, quantity, and unit of measure.
3. Enter a hose assembly as a kit item with the spec in the extended description.
4. Pick the line disposition when stock is short: backorder, hold, special order, direct ship, transfer, or cancel.
5. Check a customer's price in Sales Pricing Inquiry, explain where it came from, and calculate margin and markup.
6. Build a quote, send it, follow it up, and convert it to an order.
7. Print a pick ticket, and explain how a confirmed shipment creates the invoice.
8. Answer "where's my order?" with facts from the order and the PO behind it.

> 📌 INDUSTRY INSIGHT: Do every exercise in the P21Play System. Until your mentor clears you, your mentor reviews every live order or quote you enter before it is saved or released.

## 6.1 The Order Header

The header holds everything that applies to the whole order. Most of it fills in from the customer and ship-to records. Confirm every field.

### Steps

1. Open **Order Entry**.
2. Confirm the **taker** shows your own user ID.
3. Enter the **customer ID**. Read every pop-up note.
4. Pick the **ship-to**. When the address is new, add it first (Module 3).
5. Pick the **contact** placing the order. Add them when they are missing.
6. Enter the **PO number** exactly as the customer gives it.
7. Enter any **release** or **job number** the customer requires.
8. Set the **required date**: when the customer needs it.
9. Confirm the **carrier** and **freight terms** from the ship-to.
10. Add an **order note** for anything picking, shipping, or billing needs to know.

[IMAGE EXAMPLE: Order Entry main screen with the customer, ship-to, contact, PO number, and required date highlighted, and the tabs that hold the carrier and line items highlighted]

### The PO field

| Goes in the PO field | Goes somewhere else |
|---|---|
| The customer's PO number, exactly as given | The caller's name or phone: the contact |
| A blanket PO with its release number, in the fields your branch uses for each | When a PO is required and the customer has none, the order waits for it |

> ⚠️ SAFETY & COMPLIANCE: Many customers refuse to pay an invoice without their PO number on it. A missing or wrong PO delays payment for weeks, if we get paid at all.

### Required date and promise date

The **required date** is when the customer needs the product. Give a promise only after you check stock, the shop, or the vendor. A promise you can't keep costs more than an honest later date.

### Counter sales

- A walk-in customer without an account goes on your branch's **cash account** and pays at the counter.
- A customer with an account goes on their own account, with their PO, at the counter too.

## 6.2 Order Lines

Each line is one item. Get the item, the quantity, and the unit right on every line.

### Steps

1. Enter the **item ID**. When the customer gives their own part number, enter it; if it has been set up the cross-reference finds your item. For another company's part number, use item search (F2).
2. Enter the **quantity** and confirm the **unit of measure** (EA, FT, SI, SF).
3. Check **net available** at your location.
4. When stock is short, set the **disposition** (6.3).
5. Review the **unit price** (6.4).
6. Put anything the shop or warehouse needs in the line's **extended description**: hose length, fitting angle, test or tag requirement.
7. When every line is in, read each line back to the customer: item, quantity, unit, price, ship date. At the counter, show them the screen.
8. Check the **order total**. If it looks wrong, find out why before you save.
9. Save with **Ctrl + S** or click save.

### Units and quantities

| The customer says | Enter |
|---|---|
| "25 feet of 1 inch hose" | 25 FT of the bulk hose item |
| "A 12 by 24 piece of 1/8 red rubber" | 288 SI of the sheet item (12 × 24) |
| "A 3 by 4 sheet" | 12 SF of the sheet item (3 × 4) |
| "Six of the 2 inch cam C's" | 6 EA of the cam-lock coupler item |
| "A full reel" | The reel length in FT; confirm the length on the reel first |

### Hose assemblies as kits

Enter a hose assembly as a **kit item** with its components: hose, both fittings, and any clamps, ferrules, guard, or sleeve. Put the STAMPED answers, overall length, and orientation in the line's extended description. Module 9 covers kits in full. Check the shop's schedule before you promise a same-day assembly.

### Customer part numbers

When a customer orders by their own part number every time, set up the customer part number on the item. The next order finds the item from the customer's number, and the customer's number prints on their paperwork.

> 💡 KEY TAKEAWAY: Read the unit before the quantity on every line. 100 EA and 100 FT ship very different orders.

## 6.3 Line Dispositions

The disposition tells P21 what to do with the part of a line you can't ship from stock.

| Code | Disposition | What happens | Use it when |
|---|---|---|---|
| B | Backorder | Ships what you have; the rest waits for stock | The customer takes a partial shipment |
| S | Special order | Creates a purchase need; the vendor ships to your branch, and you ship or deliver | The item is unstocked at your branch, and the customer picks up, you deliver, or the vendor stays out of sight |
| D | Direct ship | The vendor ships straight to the customer | It is fine for the customer to see the vendor |
| T | Transfer | Pulls stock from another location | Another branch has it |
| C | Cancel | Cancels the short quantity | The customer declines the rest |

Your branch may use only some of these codes. Confirm the active codes with your mentor.

### Special order or direct ship?

| Question | S: special order | D: direct ship |
|---|---|---|
| Where does the vendor ship? | To your branch | To the customer's address |
| Who delivers? | Your branch: will call, branch truck, or carrier | The vendor's carrier |
| Does the customer see the vendor? | No; you repack it in your branch's box | Yes; the vendor's packing list goes with it |
| What goes on the PO? | Your branch as the ship-to | Only that item, with the customer's address as the ship-to |

### Steps: stock is short

1. Check other locations on the Inventory tab (F2). A transfer often beats waiting for the vendor.
2. Check the Open PO tab for stock on its way.
3. Ask the customer: ship what you have now, or wait and ship it all together?
4. Set the disposition to match the answer.
5. Give the customer a real date for the rest.

> ⚠️ SAFETY & COMPLIANCE: Tell the customer about every backorder before you hang up or they leave the counter. A surprise backorder costs more trust than the delay.

## 6.4 Pricing and Margin

P21 prices each line. Know where the price came from, check it against history, and change it only with a reason.

### Where a price comes from

| Source | What it is |
|---|---|
| Contract or customer-specific price | A price agreed for this customer and item |
| Customer price page or price library | A discount or multiplier set up for the customer, often by product family |
| Quote | The price on an accepted quote, carried onto the order when you convert it |
| List price | The default price when nothing else applies |

### Steps: check a customer's price

1. Open **Sales Pricing Inquiry**: Orders > Order Processing > Inquiry > Sales Pricing Inquiry.
2. Enter the customer ID and the item ID.
3. Read the price and where it came from.
4. Press **F8** and compare it with the last price in Customer Sales History. A big jump or drop gets a second look before you quote it.

### Price overrides

An override needs a reason: a quote, a contract, or your manager's approval. Note the reason on the line, then check the line's margin.

### Margin and markup

**Margin** is the share of the selling price that is gross profit. **Markup** is the profit added on top of cost. They measure different things, so use the right one.

- **Margin %** = (Sell − Cost) ÷ Sell × 100
- **Markup %** = (Sell − Cost) ÷ Cost × 100

Example with placeholder numbers: a material costs $20.00 and sells at a ×3.00 multiplier.

| Measure | Math | Result |
|---|---|---|
| Sell price | $20.00 × 3.00 | $60.00 |
| Gross profit | $60.00 − $20.00 | $40.00 |
| Margin | $40.00 ÷ $60.00 | 66.7% |
| Markup | $40.00 ÷ $20.00 | 200% |

Shop labor uses the same math. At a placeholder shop rate of $150/hr, a 20-minute build adds $50.00 of labor to the assembly price.

> ⚠️ SAFETY & COMPLIANCE: Never share cost or margin with a customer. Your branch sets a minimum acceptable margin %./; a price below it needs your manager's approval before it goes on an order or a quote.

> 💡 KEY TAKEAWAY: Let P21 price the line, compare it with history, and change it only with a reason you can explain to your manager.

## 6.5 Quoting and Converting

A quote is your written price, quantity, lead time, and expiration date. Every line on it becomes a promise when the customer orders.

### Steps: build a quote

1. Open **Order Entry and set the quote flag**.
2. Enter the customer, ship-to, and contact.
3. Enter the customer's **RFQ** or reference number.
4. Set the **expiration date** 30 days out, unless the customer asks for longer.
5. Enter each item and quantity. Quote exactly what was asked; put any alternate on its own line marked "alternate."
6. For unstocked items, get current vendor cost and lead time before you quote.
7. Enter the **lead time** on each line: "Stock," "3 to 5 days," "2 weeks after receipt of order."
8. Review the price and margin on each line (6.4).
9. Add notes: freight terms, validity, and assumptions ("Quote assumes 150# raised face flanges").
10. **Check the extended total before you save.** A typo in quantity turns a small quote into a huge one.

### Steps: send and follow up

1. Send the quote to the contact by the method they prefer.
2. Set a follow-up: a call within 2 business days on large quotes, within 5 on the rest.
3. Review your open quotes every week. Follow up, revise, or close them.
4. Close lost quotes with a reason: price, lead time, or project canceled.

### Steps: convert a quote to an order

1. When the customer accepts, open the quote and right click anywhere on the order header to **convert** it to an order. Retyping it leaves the quote open and loses the link.
2. Enter the customer's PO.
3. Recheck quantity, price, and the expiration date. On an expired quote, confirm cost before you honor it.
4. Confirm the quote shows as converted.

[IMAGE EXAMPLE: Order Entry main screen for a quote with the quote flag, expiration date, and lead time highlighted, and the tabs or buttons that hold the line items and convert-to-order option highlighted]

> 📌 INDUSTRY INSIGHT: Mill outage quotes can run to hundreds of lines. Buyers compare price, and they also remember who quoted accurately and on time.

> ⚠️ SAFETY & COMPLIANCE: Quote a hose assembly only with all seven STAMPED answers. A quote on a guess becomes an order for the wrong hose.

## 6.6 Pick Tickets, Shipping, Invoicing, and Follow-Up

### From order to invoice

1. Print the **pick ticket** from the **Front Counter** tab of the order.
2. The warehouse picks from the pick ticket: item ID, bin, quantity, and unit. The shop builds any kit items.
3. Reprint a pick ticket from the **Shipping** module when you need another copy.
4. Stage the order by route, carrier, or will call.
5. Confirm the shipment in the **Shipping** module. Confirm only what actually shipped.
6. The confirmed shipment creates the invoice for the shipped quantity.

> ⚠️ SAFETY & COMPLIANCE: Confirm a shipment only after it is picked, checked, and on its way. A shipment confirmed early bills the customer for product still on the shelf.

### Steps: "where's my order?"

1. Get the customer's **PO number** or your **order number**. With neither, search the customer's open orders by date and item.
2. Open **Order Inquiry** (by order or by item), drill into the order, and read each line on the main screen: shipped, open, and its disposition.
3. Read the **Shipments** tab for ship date and carrier, and the **Invoices** tab for what billed.
4. For backordered or special-order lines, open the **purchase order** behind it: vendor, promise date, and quantity received.
5. A PO that shows **received** on a line that hasn't shipped means the product is likely in your building. Ask the warehouse to find it and get it moving.
6. Check **other locations** for stock you could transfer.
7. Tell the customer what you found and when they will hear from you next. Call back when you said you would.
8. Add a dated note to the order.

> 💡 KEY TAKEAWAY: "I'll find out and call you back within the hour" is a good answer. Never guess when you don't know. You'll often be wrong and lose the customers trust by guessing and calling it a fact.

### Changing an order

| The customer wants | Before picking | After picking |
|---|---|---|
| More of an item | Add to the line or add a line; check stock again | Add a line; check stock again |
| Less of an item | Change the quantity | Get your manager's approval, then tell the warehouse |
| A different item | Change the line; tell the shop if they started a build | Get your manager's approval, then tell the warehouse and shop |
| The whole order canceled | Get your manager's approval; special-order and direct-ship lines may already be on a vendor PO | Get your manager's approval |

Keep the original order. Cancel-and-reenter breaks the link to the PO and the history.

## 6.7 Case Study, What If, and Rookie Mistakes

### Case study: the outage quote

The buyer at Southeastern Paper Mill emails an RFQ for the spring outage: 40 lines of gaskets, hose, and fittings, with pricing held 60 days.

1. **Order Entry as a quote****.** The rep enters the account, the No. 2 machine ship-to, the buyer as contact, and the RFQ number. Expiration: 60 days.
2. **Lines.** 32 lines are stocked items. 8 are unstocked. The rep gets current vendor cost and lead time on the 8 before pricing them.
3. **Price check.** Sales Pricing Inquiry gives the customer's price on each stocked item. Two lines come in far above last year's history. The rep finds a price library change and asks the manager before quoting.
4. **Hose assemblies.** Six steam assemblies are on the RFQ with only a length. The rep calls the planner, gets all seven STAMPED answers, and quotes them as kit items with the spec in the extended description.
5. **Lead times.** Each line carries "Stock" or a real lead time. The rep adds a note: "Unstocked lead times start at receipt of order."
6. **Follow-up.** The rep sends the quote and sets a call for two business days later.
7. **Convert.** The buyer accepts 36 lines. The rep converts the quote, enters the PO, and closes the other 4 lines as lost on lead time.

The quote was good for the whole outage: every price checked, every assembly fully spec'd, every quantity confirmed.

### What if...

| Situation | What to do | Reason |
|---|---|---|
| The account requires a PO and the caller has none | Get the PO before you enter the order | An order without a required PO gets rejected at invoice |
| A new ship-to address | Add the ship-to first (Module 3) | Orders pull carrier, tax, and instructions from the ship-to |
| Stock is short | Check other locations and open POs, then ask the customer: partial now or all together | The disposition depends on the customer's answer |
| The item is unstocked and the customer picks up | Disposition S | The vendor ships to your branch |
| The vendor ships straight to the customer and that is fine with them | Disposition D | The PO carries only that item, with the customer's ship-to |
| A price looks far off history | Check Sales Pricing Inquiry and ask your mentor | Price libraries and costs change |
| The customer accepts an expired quote | Confirm cost before you honor it | Vendor costs move |
| A received PO line hasn't shipped | Ask the warehouse to find it | The product is likely in the building |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| A name or "verbal" in the PO field | A rejected invoice and late payment | Enter the customer's PO exactly as given |
| Wrong unit of measure | The wrong amount picked and billed | Read the unit before the quantity |
| Backordering when another branch has stock | A late order that could have shipped | Check the Inventory tab first |
| Retyping a quote as an order | An open quote and a lost link | Convert the quote |
| Quoting non-stocked items from an old cost | A loss on the order | Get current vendor cost and lead time |
| Confirming a shipment before it ships | An invoice for product still on the shelf | Confirm only what actually shipped |
| Canceling and reentering an order | A broken link to the PO and history | Change the original order |

## 6.8 Order Entry Terms

| Term | Meaning |
|---|---|
| Taker | The user who entered the order |
| Header | The part of an order that applies to every line |
| Required date | When the customer needs the product |
| Release number | The number for one shipment against a blanket PO |
| Extended description | The order line field that carries the spec to the shop and warehouse |
| Kit item | A hose assembly or set entered as one item with its components |
| Customer part number | The customer's own number for one of your items |
| Disposition | The code that says how a short line is filled: B, H, S, D, T, C |
| Backorder (B) | Ship what you have; the rest waits for stock |
| Special order (S) | Bought for one order and shipped to your branch |
| Direct ship (D) | Bought for one order and shipped by the vendor to the customer |
| Transfer (T) | Stock moved from another branch |
| Sales Pricing Inquiry | The window that shows a customer's price for an item |
| Price override | A price changed by hand on a line |
| Margin | Gross profit as a share of the selling price |
| Markup | Gross profit as a share of cost |
| RFQ | Request for quote |
| Expiration date | The last day a quote's price holds |
| Convert | Turn an accepted quote into an order |
| Pick ticket | The warehouse's list of what to pick, printed from the Front Counter tab |
| Confirm shipment | The Shipping module step that creates the invoice |

## 6.9 Practice, Knowledge Check, and Module Quiz

### Practice in the P21Play System

1. **Stock order.** A practice caller from Southeastern Paper Mill, Mill No. 2 orders 25 FT of a stocked hose and 4 fittings on their PO. Enter the order, read it back, save it.
2. **Units.** Enter a line for a 12 in × 24 in piece of a sheet item sold in SI. Show your mentor the quantity you entered.
3. **Short stock.** Enter an order for more than you have available. Check other locations, pick the disposition, and explain why.
4. **Special order and direct ship.** Enter one unstocked item as S and one as D. Tell your mentor what is different about each PO.
5. **Kit item.** Enter a hose assembly as a kit item with the STAMPED answers in the extended description.
6. **Price.** Check one item's price for two customers in Sales Pricing Inquiry and compare each with history.
7. **Margin.** Calculate margin and markup for an item that costs $12.50 and sells for $20.00.
8. **Quote.** Build a quote for three items, one of them unstocked, with an expiration date, lead times, and a note. Convert it to an order with a PO.
9. **Pick ticket.** Print the pick ticket for your order from the Front Counter tab.
10. **Follow-up.** Your mentor gives you an order with a backordered line. Find the PO behind it and tell your mentor what you would say to the customer.

### Knowledge check (practice)

1. Which disposition has the vendor ship straight to the customer?
2. What do you check before you backorder?
3. An item costs $30.00 and sells for $50.00. What is the margin?
4. Is a 30% markup the same as a 30% margin?
5. The customer accepts a quote. How do you turn it into an order?
6. Where do you print a pick ticket, and what creates the invoice?
7. A PO shows received and the order line hasn't shipped. What does that usually mean?

Work these on your own, then check your answers with your mentor.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
