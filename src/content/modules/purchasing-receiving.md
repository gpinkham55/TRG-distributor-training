---
number: 13
title: Purchasing and Receiving
week: 4
minutes: 180
signoff: false
status: published
summary: How purchase needs start, purchase orders and purchasing units in P21, lead times and promise dates, special orders and direct ships, receiving and putaway, the three-way match, and problems at the dock.
---

Every item a branch sells has to first be purchased. Purchasing keeps stock on the shelf and gets special orders moving. Receiving checks what arrived, tells P21 it is here, puts it where it belongs, and moves special orders on to the customer. Receive every shipment the day it arrives so the shelves get restocked, customers get their backorders and special orders, and vendors' invoices get paid on time. This module covers purchase orders in P21, lead times and promise dates, special orders and direct ships, receiving, and problems at the dock.

### Learning objectives

After this module you will be able to:

1. Explain the three ways a purchase need starts: stock replenishment, a special order, and a direct ship.
2. Enter a purchase order with the right vendor, ship-to, items, units, and dates.
3. Explain lead time and promise dates, and follow up with a vendor.
4. Explain how S and D order lines link to a PO, and what each does at the dock.
5. Receive a PO in P21, put stock away, and set special orders aside for their customer.
6. Explain the three-way match between the PO, the receipt, and the vendor invoice.
7. Handle shortages, overages, wrong items, and freight damage at the dock.

> 📌 INDUSTRY INSIGHT: The buyer enters stock POs. Once trained, you enter the POs for your own special orders and direct ships. Everyone needs to know how purchasing works to answer "when will it be here?" and to receive what comes in.

## 13.1 Purchase Needs and Purchase Orders

A purchase order (PO) is your branch's order to a vendor. It tells the vendor what to send, how many, at what cost, where, and when.

### How a purchase need starts

| Source | What triggers it | Where it ships |
|---|---|---|
| Stock replenishment | Stock drops to the reorder point (Module 14) | Your branch |
| Special order (S) | An order line for an item your branch doesn't stock | Your branch, then the customer |
| Direct ship (D) | An order line the vendor ships straight to the customer | The customer's address |

### Steps: enter a PO

1. Open **Purchase Order Entry** (Inventory > Purchasing).
2. Enter the **vendor** and confirm the vendor's ship-from location and contact.
3. Confirm the **ship-to**: your branch, or the customer's address for a direct ship.
4. Enter each **item** and **quantity**. Check the purchasing unit (a reel, a box, a sheet) against the selling unit.
5. Check the **cost** on each line against the vendor's price sheet or quote.
6. Enter the **required date** and, when the vendor confirms, the **promise date**.
7. Add notes for the vendor: tagging, test reports, packing, or delivery instructions.
8. Save with **Ctrl + S** and send the PO to the vendor.

[IMAGE EXAMPLE: Purchase Order Entry main screen with the vendor, ship-to, and promise date highlighted, and the tab that holds the item lines highlighted; blur any cost]

### Purchasing units

| The vendor sells | Your branch sells | Watch for |
|---|---|---|
| Hose by the reel (250 FT) | Hose by the FT | A PO for 250 meant as feet buys 250 reels |
| Sheet by the sheet (60 in × 60 in) | Sheet by the SI | One sheet is 3,600 SI |
| Fittings by the box (25) | Fittings by the EA | 4 boxes is 100 EA |

> ⚠️ SAFETY & COMPLIANCE: Costs on a PO are private. Never share vendor cost with a customer, and never send a customer a copy of a vendor PO.

## 13.2 Lead Times, Promise Dates, and Expediting

**Lead time** is how long the vendor takes to ship after it gets the PO. The **promise date** is the date the vendor commits to. The customer's date comes from the promise date plus freight time.

### Steps: follow up on a PO

1. Ask the vendor to confirm every PO with a promise date.
2. Verify the pricing and enter the promise date on each PO line.
3. When the cost on the vendor's confirmation differs from the PO, ask the buyer which is right, then correct the cost on the PO line.
4. Follow up before the promise date on anything a customer is waiting for.
5. When a date slips, update the PO and tell the customer right away, with the new date.

> 💡 KEY TAKEAWAY: Make the cost on every PO line match the vendor's confirmed cost before the receipt. A mismatch puts inventory on the shelf at the wrong cost and creates an accounting discrepancy.

## 13.3 Special Orders and Direct Ships

When an order line uses the **S (special order)** or **D (direct ship)** disposition (Module 6), P21 creates a purchase need for that line. The rep who entered the order turns it into a PO, and the PO line stays linked to the order line.

|  | S: special order | D: direct ship |
|---|---|---|
| PO ship-to | Your branch | The customer's address |
| What goes on the PO | The item, often with stock items for the branch | Only that item |
| Received at your branch? | Yes; the receipt sets the stock aside for the order | No; shipment is received at the drop ship address |
| Who delivers | Your branch: will call, branch truck, or carrier | The vendor's carrier |
| Does the customer see the vendor? | No; you repack it in your branch's box | Yes; the vendor's packing list goes with it |

### When to use each

- **S** when the customer picks up, your branch delivers, or the vendor should stay out of sight.
- **D** when it is fine for the customer to see the vendor and the vendor can ship straight to the site.

## 13.4 Receiving, Putaway, and the Three-Way Match

Receiving is where P21 learns that stock arrived. Until a PO is received, P21 shows the product as still on its way, and the customer's order can't ship.

### Steps: receive a PO

1. Find the **PO number** on the packing list and pull up that PO.
2. Count every line. Check the item, quantity, and unit against the PO, and against the packing list.
3. Check for damage. Open boxes that look crushed or wet.
4. Open the **PO Receipts** window in P21 and pull up the PO.
5. Enter the quantity received on each line. Receive what is physically there, up to the PO quantity. Set any extra aside for the buyer.
6. Save the receipt. P21 adds the stock to inventory and allocates special-order stock to its order.
7. **Put away** stock items in their bin locations. Set special-order items aside, tagged with the customer and order number, for shipping or will call.
8. Give the packing list to whoever reconciles vendor invoices.

[IMAGE EXAMPLE: A receiving bench with a packing list, the PO on screen, and a special-order item tagged with a customer order number]

### Putaway rules

- Put stock in the bin P21 shows for the item. A part in the wrong bin creates inventory errors several different ways and can result in a customer not getting what they ordered.
- Label every reel and partial roll with the item ID.
- Rotate stock with a shelf life (some rubber, adhesives) so the oldest goes out first.

> 💡 KEY TAKEAWAY: Receive the same day the product arrives. A box left unreceived can result in a late order to the customer and/or a missing order to you.

### The three-way match

Accounting pays the vendor when three things agree:

| Document | Shows |
|---|---|
| PO | What you ordered, at what cost |
| Receipt | What arrived |
| Vendor invoice | What you were billed |

A wrong receipt creates a discrepancy that holds up payment. Do the receipt right the first time.

## 13.5 Problems at the Dock and Freight Claims

| Problem | What to do |
|---|---|
| Short shipment | Receive what arrived. Leave the rest open on the PO and tell the buyer, or the rep on a special order. |
| Over shipment | Receive what is physically there, up to the PO quantity. Set any extra aside for the buyer. |
| Wrong item | Set it aside unreceived and tell the buyer, or the rep on a special order, who arranges a return with the vendor (Module 15). |
| Visible freight damage | Note the damage on the carrier's delivery receipt (bill of lading) **before** you sign. Take photos. Tell the buyer, or the rep on a special order. |
| Hidden damage found later | Take photos, keep all packing, and tell the buyer, or the rep on a special order, right away; carriers set short deadlines for claims. |
| No PO number on the shipment | Search open POs by vendor and item before you set it aside. |

### Steps: freight damage

1. Count the pieces against the bill of lading before the driver leaves.
2. Inspect every carton, reel, and pallet.
3. Write the damage on the delivery receipt: "2 cartons crushed," "reel spool broken."
4. Sign with the note and keep a copy.
5. Take photos of the damage and the packaging.
6. Tell the buyer the same day.

> ⚠️ SAFETY & COMPLIANCE: Never sign a delivery receipt as received in good condition without looking. A receipt signed clean makes a freight damage claim very hard to win.

> 📌 INDUSTRY INSIGHT: Reels of hose and pallets of sheet are heavy. Use the forklift or reel stand you are trained on, and never lift a reel by hand. Follow your branch's lifting and equipment rules.

## 13.6 Case Study, What If, and Rookie Mistakes

### Case study: the special order that sat

A planner calls: "You told me our PTFE expansion joint would be here last week. Where is it?"

1. **Order Inquiry.** The rep finds the order. The expansion joint line is disposition S and still open.
2. **The PO.** The rep opens the linked PO. The vendor's promise date was eight days ago. The PO line shows nothing received.
3. **Receiving.** The rep asks receiving to check. A crate with the PO number on the packing list arrived five days ago and is on the dock, unreceived.
4. **Receive.** Receiving counts it, inspects it, and receives it against the PO. P21 allocates it to the mill's order.
5. **Ship.** The rep prints the pick ticket from the Front Counter tab and schedules the branch truck for the next run.
6. **Call back.** The rep tells the planner the delivery date and adds a dated note to the order.

**This should never happen.** The joint was in the building for five days. Receiving it the day it arrived would have shipped it on time.

### What if...

| Situation | What to do | Reason |
|---|---|---|
| A vendor misses the promise date | Get a new date, update the PO, tell the customer | The customer plans around your date |
| A shipment arrives with no PO number | Search open POs by vendor and item | It likely belongs to an open PO |
| The packing list and the PO disagree | Count the product. Receive what is physically there, up to the PO quantity. Set any extra aside for the buyer. | The receipt drives inventory and payment |
| The vendor ships 10 extra | Receive what is physically there, up to the PO quantity. Set the 10 extra aside for the buyer. | Unapproved overages get billed |
| A reel arrives with a broken flange | Note it on the delivery receipt before signing, take photos | A clean signature loses the claim |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| PO in the wrong unit | An order meant for 250 feet buys 250 reels | Check purchasing and selling units |
| Giving the customer the lead time as a date | A missed date | Use the promise date plus freight |
| Receiving from the packing list without counting | Inventory and invoice errors | Count every line |
| Leaving a shipment unreceived | A late order and a held vendor payment | Receive the day it arrives |
| Signing a delivery receipt clean | A lost freight claim | Inspect, then note damage before signing |
| Putting stock in any open bin | Lost stock | Use the bin P21 shows |

## 13.7 Purchasing and Receiving Terms

| Term | Meaning |
|---|---|
| Purchase order (PO) | Your branch's order to a vendor |
| Purchase need | Something to buy: a replenishment suggestion or an S or D order line |
| Lead time | How long the vendor takes to ship |
| Promise date | The ship date the vendor commits to |
| Expediting | Following up with a vendor to hold or move up a date |
| Purchasing unit | The unit the vendor sells in: reel, box, sheet |
| Receipt | The P21 record of what arrived |
| Putaway | Moving received stock to its bin |
| Bin location | The shelf or rack spot P21 shows for an item |
| Three-way match | PO, receipt, and vendor invoice agree before payment |
| Bill of lading | The carrier's shipping document and delivery receipt |
| Freight claim | A claim against the carrier for damage or loss |
| Short / over shipment | Less / more than the PO ordered |

## 13.8 Practice, Knowledge Check, and Module Quiz

### Practice in the P21Play System

1. **Read a PO.** Open three open POs and write the vendor, items, quantities, units, and promise dates.
2. **Enter a PO.** Enter a stock PO for two items your Manager gives you. Check the purchasing unit on each.
3. **Special order.** Enter a customer order with an S line, find the purchase need or PO it creates, and note how they link.
4. **Direct ship.** Enter a D line and check that the PO ship-to is the customer's address.
5. **Receive.** Receive the PO from exercise 2 with one line short. Note what P21 shows for the open quantity.
6. **Dock problems.** Your Manager describes three deliveries: one short, one with a crushed carton, and one with the wrong item. Say what you would do with each.

### Knowledge check (practice)

1. What is the difference between lead time and a promise date?
2. A special order line is on an order. What does P21 create?
3. Who ships a direct ship (D) line to the customer, and what is the PO ship-to?
4. Why receive product the day it arrives?
5. A shipment arrives 2 short. What do you receive?
6. A carton arrives crushed. What do you do before you sign the delivery receipt?
7. What three documents must agree before accounting pays a vendor?
8. A vendor sells hose by the 250 FT reel. What do you check on the PO?

Work these on your own, then check your answers with your Manager.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
