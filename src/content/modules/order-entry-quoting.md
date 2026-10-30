---
number: 6
title: Order Entry and Quoting
week: 2
minutes: 240
signoff: true
status: published
summary: Enter clean orders in P21, choose line dispositions, understand pricing and margin, build and convert quotes, and follow up on orders.
---

An order tells the warehouse what to pick, the driver where to go, and accounting what to bill. A clean order ships and bills right the first time. A quote gives the customer a price they can act on. This module walks through both in P21, then covers order follow-up: answering "where's my order?"

### Learning objectives

After this module you will be able to:

1. Fill in an order header: customer, ship-to, contact, PO, dates, carrier.
2. Enter order lines with the right item, quantity, and unit of measure.
3. Choose a line disposition when stock is short.
4. Explain where a price comes from, and calculate margin.
5. Build a quote, send it, follow it up, and convert it to an order.
6. Find the status of an order and the purchase order behind it.

> 📌 INDUSTRY INSIGHT: Do every exercise in the P21Play System. Until your mentor signs you off, every live order or quote you key gets a mentor review before it is saved or released.

## 6.1 The Order Header

The header holds everything that applies to the whole order. Most of it fills in from the customer and ship-to records; your job is to confirm it.

### Steps

1. Open **Order Entry**.
2. Confirm the **taker** shows your own user ID.
3. Enter the **customer ID**. Read every pop-up note.
4. Pick the **ship-to**. If the address is new, stop and add it first (Module 3).
5. Pick the **contact** placing the order. Add them if they are not in P21.
6. Enter the **PO number** exactly as the customer gives it.
7. Enter any **release** or **job number** the customer requires.
8. Confirm the **location** (your branch).
9. Set the **required date**: when the customer needs it.
10. Confirm the **carrier** and **freight terms** from the ship-to.
11. Add an **order note** for anything picking, shipping, or billing needs to know.

[IMAGE EXAMPLE: The Order Entry header with customer, ship-to, contact, PO number, required date, and carrier marked]

### The PO field

| In the PO field | OK? |
|---|---|
| The customer's PO number, exactly as given | Yes |
| A blanket PO plus the release number, if the customer requires both | Yes, in the fields your branch uses for each |
| The caller's name or phone number | No; those belong in the contact |
| "Verbal," "Will send," "Please update PO" | No; if a PO is required and the customer has none, the order waits |

> ⚠️ SAFETY & COMPLIANCE: Many customers will not pay an invoice without their PO number on it. A missing or wrong PO delays payment for weeks.

### Counter sales

- A walk-in customer without an account goes on your branch's **cash account** and pays at the counter.
- A customer with an account still goes on their own account, with their PO, even at the counter.

## 6.2 Order Lines and Dispositions

Each line is one item. Get the item, the quantity, and the unit right, then decide what happens when stock is short.

### Steps

1. Enter the **item ID**. If the customer gives their own part number, enter it; the cross-reference finds your item. If they give another company's part number, use item search.
2. Enter the **quantity** and confirm the **unit of measure** (EA, FT, SI).
3. Check the **available** quantity at your location.
4. If stock is short, set the **disposition** (below).
5. Review the **unit price** (6.3).
6. Add a **line note** for anything the shop or warehouse needs, such as a hose length or fitting angle.
7. When all lines are in, read every line back to the customer: item, quantity, price, ship date. At the counter, show them the screen.
8. Check the **order total**. If it looks wrong, it is.
9. **Save**. P21 gives you the order number. Give it to the customer.

### Line dispositions

The disposition tells P21 what to do with the part of a line you can't ship from stock.

| Code | Disposition | What happens | Use it when |
|---|---|---|---|
| B | Backorder | Ships what you have; the rest waits for stock | The customer takes a partial shipment |
| H | Hold | Holds the whole line | The customer wants it all together, or something must be confirmed first |
| S | Special order | Creates a purchase need; the vendor ships to your branch, then you ship or deliver | The item is not stocked at your branch |
| D | Direct ship | The vendor ships straight to the customer | The item ships from the vendor and the customer can see who sent it |
| T | Transfer | Pulls stock from another location | Another branch has it |
| C | Cancel | Cancels the short quantity | The customer does not want the rest |

Your branch may not use every code. Confirm the active codes with your mentor.

> 💡 KEY TAKEAWAY: Before you backorder, check other locations. A transfer often gets the part to the customer faster than waiting for the vendor.

> ⚠️ SAFETY & COMPLIANCE: Tell the customer about every backorder before they hang up or leave the counter. A surprise backorder costs more trust than the delay itself.

### Hose assemblies on an order

Enter the assembly item with its hose, both fittings, and any guard or sleeve. Put the length and fitting angle in the line note if the item doesn't carry them. Module 9 covers assemblies as kits in detail. Never promise a same-day assembly without checking with the shop.

### Common mistakes

- Wrong unit: FT when the customer meant a full reel, EA when the item sells by the pack.
- Backordering when another location has stock.
- Not telling the customer about a backorder.
- Forgetting to give the customer the order number.

## 6.3 Pricing and Margin

P21 prices each line for you. Your job is to know where the price came from, check it against history, and change it only with a reason.

### Where a price comes from

| Source | What it is |
|---|---|
| Contract or customer-specific price | A price agreed for this customer and item |
| Customer price page or price library | A discount or multiplier set up for the customer, often by product family |
| Quote | The price on an accepted quote, carried onto the order when you convert it |
| List price | The default price when nothing else applies |

Check the unit price against the customer's sales history. A big jump or drop from the last order is worth a second look.

### Price overrides

A price override needs a reason: a quote, a contract, or your manager's approval. Note the reason on the line. After any change, check the line's margin.

### Margin and markup

**Margin** is the share of the selling price that is gross profit. **Markup** is the profit added on top of cost. They are not the same.

- **Margin %** = (Sell − Cost) ÷ Sell × 100
- **Markup %** = (Sell − Cost) ÷ Cost × 100

Example with made-up numbers: an item costs $40.00 and sells for $60.00.

| Measure | Math | Result |
|---|---|---|
| Gross profit | $60.00 − $40.00 | $20.00 |
| Margin | $20.00 ÷ $60.00 | 33.3% |
| Markup | $20.00 ÷ $40.00 | 50.0% |

A 50% markup is only a 33.3% margin. A 30% markup is only a 23.1% margin.

> ⚠️ SAFETY & COMPLIANCE: Never share cost or margin with a customer. Your branch sets a margin floor; a price below it needs your manager's approval before it goes on an order or a quote.

> 💡 KEY TAKEAWAY: Let P21 price the line, compare it to history, and change it only with a reason you could explain to your manager.

## 6.4 Quoting and Converting

A quote is your written price, quantity, lead time, and expiration date. A clear quote wins the order; a sloppy one loses it or costs money later.

### Steps: build a quote

1. Open **Order Entry** and mark it as a **quote**, or open **Quote Entry**, depending on your branch's menu.
2. Enter the customer, ship-to, and contact.
3. Enter the customer's **RFQ** or reference number.
4. Set the **expiration date**. Ask your manager for your branch's standard.
5. Enter each item and quantity. Quote exactly what was asked; add any alternate as a separate line marked "alternate."
6. For non-stock items, get current vendor cost and lead time before you quote.
7. Enter the **lead time** on each line ("Stock," "3 to 5 days," "2 weeks after receipt of order").
8. Review the price and margin on each line (6.3).
9. Add notes: freight terms, validity, and any assumptions ("Quote assumes 150# raised face flanges").
10. **Check the extended total before you save.** A typo in quantity can turn a small quote into a huge one.

### Steps: send and follow up

1. Send the quote to the contact by the method they prefer.
2. Set a follow-up. Large quotes get a call within 2 business days; others within 5.
3. Review your open quotes every week. Follow up, revise, or close them.
4. Close lost quotes with a reason: lost on price, lead time, or project canceled.

### Steps: convert a quote to an order

1. When the customer accepts, open the quote and **convert** it to an order. Never retype it.
2. Enter the customer's PO.
3. Recheck quantity, price, and the expiration date. If the quote expired, confirm cost before you honor it.
4. Confirm the quote now shows as converted.

[IMAGE EXAMPLE: A quote in P21 with the expiration date, lead time column, and the convert option marked]

> 📌 INDUSTRY INSIGHT: Mill outage quotes can run to hundreds of lines. Buyers compare price, but they also remember who quoted accurately and on time. Every line you get right on a big quote builds the next one.

### Common mistakes

- No expiration date.
- Retyping a quote as an order, which leaves the quote open and loses the link.
- Quoting non-stock items from an old cost.
- Quoting a hose assembly without all seven STAMPED answers.

## 6.5 Order Follow-Up

"Where's my order?" deserves an answer with facts, not a guess.

### Steps

1. Get the customer's **PO number** or your **order number**. If they have neither, search the customer's open orders by date and item.
2. Open **Order Inquiry** and read each line: shipped, open, and its disposition.
3. For backordered or special-order lines, open the **purchase order** behind it: vendor, promise date, and quantity received.
4. If the PO shows **received** but the line has not shipped, the product is probably in your building. Ask the warehouse to find it and get it moving.
5. Check **other locations** for stock you could transfer.
6. Tell the customer what you found and when they will hear from you next. Then call back when you said you would.
7. Add a dated note to the order.

> 💡 KEY TAKEAWAY: "I don't know yet. I'll find out and call you back within the hour" is a good answer. "It's probably on a truck" is not.

### Common mistakes

- Guessing instead of checking the order and the PO.
- Sending the customer to the vendor. They bought from you; you follow up.
- Canceling and reentering an order, which breaks the link to the PO and the history.

## 6.6 Practice, Knowledge Check, and Test-Out

### Practice in the P21Play System

1. **Stock order.** A practice caller from Riverbend Paper, Mill No. 2 orders 25 ft of a stocked hose and 4 fittings on their PO. Enter the order, read it back, save it, and give the order number.
2. **Short stock.** Enter an order for more than you have available. Check other locations, then choose the right disposition and explain why.
3. **Special order.** Enter an order for an item your branch does not stock. Use disposition S.
4. **Margin.** Calculate margin and markup for an item that costs $12.50 and sells for $20.00.
5. **Quote.** Build a quote for three items, one of them non-stock, with an expiration date, lead times, and a note. Then convert it to an order with a PO.
6. **Follow-up.** Your mentor gives you an order with a backordered line. Find the PO behind it and tell your mentor what you would say to the customer.

### Knowledge check (practice, not graded)

1. The caller's name is typed in the PO field. Is that OK?
2. Which disposition ships what you have and holds the rest for stock?
3. Which disposition has the vendor ship straight to the customer?
4. What do you check before you backorder?
5. An item costs $30.00 and sells for $50.00. What is the margin?
6. Is a 30% markup the same as a 30% margin?
7. The customer accepts a quote. Do you retype it as an order?
8. A PO shows received but the order line has not shipped. What does that usually mean?

Work these on your own, then check your answers with your mentor.

### Module quiz and test-out

- **Module quiz:** 10 questions drawn from a pool of 25; 80% to pass.
- **Test-out:** 10 questions; 90% to pass. Passing marks Module 6 complete. The mentor sign-off still applies.
- **Mentor sign-off:** with your mentor watching, enter one order and one quote in the P21Play System from practice calls, with no errors that would ship the wrong product or bill the wrong price.
