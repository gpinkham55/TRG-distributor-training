---
number: 14
title: Inventory Counts and Replenishment
week: 4
minutes: 210
signoff: false
status: published
summary: Why P21 and the shelf drift apart, cycle, annual, and spot counts, counting hose, sheet, and remnants, variances and adjustments, min and max, replenishment, and transfers between locations.
---

Every answer you give a customer about stock depends on P21 matching the shelf. Counts keep them accurate. Replenishment keeps the right items on the shelf and dead stock to a minimum. Inventory inaccuracy means promising stock that isn't there or buying stock you already have. This module covers cycle, annual, and spot counts, variances and adjustments, min and max, replenishment, and transfers between locations.

### Learning objectives

After this module you will be able to:

1. Explain why P21 and the shelf quantity often differ, and what each cause costs.
2. Complete a blind cycle count, including hose reels, remnants, cut sheet, and kits.
3. Explain how an annual count runs and how to prepare for it.
4. Recount a variance and route an adjustment for approval.
5. Explain min and max and how replenishment suggestions work.
6. Request, ship, and receive a transfer between locations.

> ⚠️ SAFETY & COMPLIANCE: Never change on-hand quantities to make an order ship or a count match. Your supervisor or Manager approves every adjustment.

## 14.1 Why P21 and the Shelf Drift Apart

P21 changes the on-hand quantity every time stock is received, shipped, transferred, or adjusted. When any of those is wrong, P21 and the shelf drift apart.

| Cause | Example | What it costs |
|---|---|---|
| Receiving error | Received 10 boxes when 8 arrived | Stock promised that isn't there |
| Picking error | Picked the -8 fitting, shipped it as the -10 | The order shipped wrong and the shelf stock is off |
| Wrong unit | Shipped one 250 FT reel but entered 1 FT | A 249 FT gap on the shelf and we paid for a reel and sold it for a foot |
| Wrong bin | Stock put away in an open bin | Lost stock; a reorder for stock already on hand |
| Damaged or scrapped items | Stock thrown out or missing with no adjustment | Phantom stock in P21 |
| Unreceived transfer or PO | Product in the building, still in transit in P21 | Orders that can't ship |

> 💡 KEY TAKEAWAY: Most variances start with a step done wrong upstream: receiving, picking, building, or putaway. Do it right the first time, and the counts stay right.

## 14.2 Cycle, Annual, and Spot Counts

| Count | What it is | How often |
|---|---|---|
| Cycle count | A count of a few items or bins, scheduled so every item is counted through the year | Ongoing, often a set number of items each workday |
| Annual (physical) count | A count of everything in the building at once, often for year-end books | Once a year |
| Spot count | A one-off count when something looks wrong | When needed |

The warehouse runs cycle counts. Everyone helps at the annual count.

### Steps: complete a cycle count

1. Print or open the count list from P21. The list hides the quantity P21 expects; this is a **blind count**.
2. Go to each bin. Count every unit of the item in that bin, in the item's unit of measure.
3. Check nearby bins and overstock for the same item.
4. Write the count, the bin, and your initials.
5. Enter the counts in P21.
6. Recount any item where the count and P21 differ by more than your branch's limit. A second person counts when possible.
7. Your supervisor or Manager approves the adjustments.

[IMAGE EXAMPLE: A count sheet on a clipboard next to a bin of fittings, with the counted quantity written and no expected quantity shown]

### Counting the hard items

| Item | How to count it |
|---|---|
| Hose on reels | Measure what is left on the reel unless the tag was updated after the last cut; enter in FT |
| Hose remnants | Measure each remnant; add them to the reel total in FT |
| Sheet and roll goods | Measure each piece and convert to the item's unit (SI, SF, or roll) |
| Boxed fittings | Count open boxes by the piece; for sealed boxes, multiply the boxes by the quantity on the label |
| Kits and assemblies on the shelf | Count each built assembly as one kit under the kit part number, in EA |
| Special-order stock set aside for a customer | Count it under its own item; tell your Manager it is allocated |

> 💡 KEY TAKEAWAY: Count what is there, in the unit P21 uses. A count of "1 reel" on an item kept in feet is a 499-foot error on a 500 FT reel.

### Preparing for the annual count

1. Receive every PO and transfer in the building.
2. Confirm every shipment that left.
3. Put away everything on the dock and in staging.
4. Label every bin, reel, and remnant with the item ID.
5. Separate customer-owned and special-order stock and mark it.
6. Assign count teams by area: one counts, one writes.

## 14.3 Variances and Adjustments

A **variance** is the difference between your count and P21's on-hand quantity. An **adjustment** changes P21 to match the shelf once the variance is confirmed.

### Steps: work a variance

1. Recount the bin, and check nearby bins, overstock, staging, and the dock.
2. Check open orders that were picked but not yet shipped.
3. Check receipts and transfers waiting to be received.
4. Check recent shipments for the item and its look-alikes (a -8 for a -10).
5. When the recount still differs, write the count, the likely cause, and your initials.
6. Hand it to your supervisor or Manager to approve the adjustment.

| Variance found | Likely cause | Check |
|---|---|---|
| Short on the shelf | Unshipped pick, wrong item shipped, unrecorded use | Picked orders, recent shipments, shop kits |
| Over on the shelf | Received short in P21, returned item never entered | Recent receipts, returns |
| One item over, a look-alike short | Picking or putaway mix-up | Both items' bins |
| Feet way off on hose | A reel entered as 1 FT, or remnants missed | Unit of measure, remnant rack |

> ⚠️ SAFETY & COMPLIANCE: Only a supervisor or Manager approves an inventory adjustment. Write down the cause you find; it shows which step to fix.

## 14.4 Min, Max, and Replenishment

Each stocked item at a location can carry a **min** (reorder point) and a **max** (order-up-to level).

- When **net available** stock falls to or below the min, the item needs reordering. The trigger also counts customer backordered quantities and unreceived quantities on POs.
- The reorder quantity brings stock back up to the max, rounded up to the vendor's next full pack or reel.

**Example:** a fitting has a min of 10 and a max of 40. Net available is 8, with nothing backordered and nothing on a PO. The suggested order is 40 − 8 = 32. The vendor sells in boxes of 10, so the buyer rounds up and orders 40.

### Setting min and max

| Factor | Effect |
|---|---|
| Sales history | Fast sellers carry a higher min and max |
| Vendor lead time | A long lead time plus freight time needs a higher min to cover sales until the PO arrives |
| Pack or reel size | The max should land on a full pack or reel |
| Slow or dead stock | Lower the min and max so cash stays free |
| One-time large sales | Leave them out of the min and max |

### Replenishment

P21 compares each item's net available, customer backorders, and unreceived PO quantities to its min and max, and lists what to buy. The buyer reviews the list, adjusts it, and turns it into POs (Module 13).

| Check before buying | Reason |
|---|---|
| Is it at another location? | A transfer may be faster and frees that location's extra stock |
| Did one large order cause the drop? | A one-time sale may need no restock |
| Is the vendor's pack size or minimum order met? | Buying below a minimum can add charges |
| Is the item still a good seller? | Slow movers stay below the old max |

> 💡 KEY TAKEAWAY: Min and max follow what sells. Review them when sales change, and lower them on items that stopped moving.

## 14.5 Transfers Between Locations

A transfer moves stock from one location to another. The buyer uses it to rebalance stock between branches.

### Steps: request and receive a transfer

1. Press **F2** and find the item at the other location on the Inventory tab.
2. Ask the buyer to enter the transfer.
3. Tell the other location what is coming and why.
4. The sending location picks, ships, and confirms the transfer.
5. When it arrives, receive the transfer in P21 in the **Transfer Receipts** window.
6. Put the stock away.

### Sending a transfer

1. Pick the stock from the transfer's pick list, in its unit of measure.
2. Tag it with the receiving branch and the transfer number.
3. Confirm the transfer shipped in P21.
4. Send it on the branch truck or carrier the receiving branch expects.

> 📌 INDUSTRY INSIGHT: A transfer that ships and never gets received leaves stock in transit in P21. Neither branch can sell it. Receive transfers the day they arrive.

## 14.6 Case Study, What If, and Rookie Mistakes

### Case study: the missing feet

A cycle count lists 1 in steam hose. P21 shows 375 FT on hand.

1. **Count.** The counter finds one reel tagged 250 FT, now measured at 140 FT, and two remnants of 22 FT and 9 FT. Total: 171 FT.
2. **Variance.** 375 − 171 = 204 FT short.
3. **Recount.** A second person measures the reel and remnants: 171 FT. Overstock and staging hold no more.
4. **Look for the cause.** Customer Sales History shows four steam assemblies shipped last month as loose lines: hose, fittings, and clamps entered separately, with the hose line entered as quantity 4 (4 FT) when each assembly used 52 FT. The shop used 4 × 52 FT = 208 FT of hose. P21 took out 4 FT. 208 − 4 = 204 FT.
5. **Adjust.** The supervisor approves the 204 FT adjustment with the cause written on it.
6. **Fix the step.** The Manager sets up the steam assembly as a kit item, so the next order takes the right feet out of stock.

### What if...

| Situation | What to do | Reason |
|---|---|---|
| The count differs from P21 | Recount, check nearby bins, staging, and open picks | Many variances are stock in another spot |
| An item is in the wrong bin | Move it to the bin P21 shows and note it | Wrong bins cause short counts and extra buys |
| A reel has no footage tag | Measure it and tag it | Hose counts in FT |
| A transfer shows in transit for a week | Ask the receiving branch whether it arrived and was received | Neither branch can sell it |
| An item hits its min after one big order | Ask the buyer whether to restock | A one-time sale may need no restock |
| Someone asks you to adjust stock to ship an order | Decline and bring in your supervisor | Adjustments need approval |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| Counting a reel as 1 | A huge variance on a feet item | Count in the item's unit |
| Skipping remnants and overstock | A false short count | Check every spot the item can be |
| Peeking at the expected quantity | Counts copied from P21, and the shelf stays wrong | Count blind |
| Adjusting without a recount | A wrong adjustment | Recount every variance over the limit |
| Entering an assembly as loose lines | Hose and fittings missing from stock | Enter assemblies as kits |
| Leaving a transfer unreceived | Stock stuck in transit | Receive the day it arrives |

## 14.7 Inventory Terms

| Term | Meaning |
|---|---|
| On hand | Stock P21 shows in the building |
| Net available | On hand minus allocated |
| Cycle count | A scheduled count of a few items or bins |
| Annual (physical) count | A count of everything at once |
| Spot count | A one-off count when something looks wrong |
| Blind count | A count list that hides the expected quantity |
| Variance | The difference between the count and P21 |
| Adjustment | A change to P21's on-hand quantity, approved by a supervisor or Manager |
| Min | The reorder point |
| Max | The order-up-to level |
| Replenishment | P21's list of what to buy to restore stock to max |
| Pack size | The vendor's selling quantity: a box, a reel |
| Dead stock | Stock that has stopped selling |
| Transfer | Stock moved between locations |
| In transit | Transfer stock shipped and still unreceived |

## 14.8 Practice, Knowledge Check, and Module Quiz

### Practice

1. **Cycle count.** Count 10 bins your Manager assigns, using a blind count list. Include one hose reel with remnants and one sheet item.
2. **Variance.** Compare your counts to P21 with your Manager. For each difference, work the steps in 14.3 and suggest a likely cause.
3. **Min and max.** For three items, look up the min, max, and net available in the P21Play System. Work out what replenishment would suggest, rounded up to the next full pack.
4. **Annual count prep.** Walk one aisle with your Manager and list what must happen before an annual count there.

### Knowledge check (practice)

1. Why is a cycle count list blind?
2. An item is kept in feet. You count one full 500 FT reel. What do you enter?
3. Who approves inventory adjustments?
4. An item has a min of 20, a max of 60, and 15 net available. What is the suggested order before pack size?
5. Name two things the buyer checks before buying an item on the replenishment list.
6. What happens when a transfer ships and is never received?
7. A count is short. List three places to check before you hand it in for an adjustment.

Work these on your own, then check your answers with your Manager.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
