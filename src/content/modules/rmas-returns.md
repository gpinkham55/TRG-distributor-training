---
number: 15
title: RMAs and Returns
week: 4
minutes: 150
signoff: false
status: published
summary: Return reasons and policy, entering an RMA in P21 from previous sales, credit, replacement, and restocking fees, receiving and inspecting returns, and vendor returns and warranty claims.
---
Customers return parts for many reasons: wrong part, ordered too many, damaged in shipping, or failed in service. A return handled by the steps keeps the customer and gets the branch its money back from the vendor or the carrier. A return handled loosely puts damaged parts back on the shelf and gives away credit. This module covers return reasons and policy, entering an RMA in P21, credit or replacement, receiving and restocking returns, and vendor returns and warranty claims.

### Learning objectives

After this module you will be able to:

1. Sort a return by its reason, and know which items can be returned.
2. Enter an RMA in P21 against the original order or invoice.
3. Propose credit, replacement, advance replacement, or inspect first for your Manager to approve, and know when a restocking fee applies.
4. Receive and inspect a return and know where it goes: back to stock, to vendor return, or to an adjustment.
5. Start a vendor return or a warranty claim with the information the vendor needs.
6. Trace an RMA to the reason it was returned.

> ⚠️ SAFETY & COMPLIANCE: A hose returned from service may still hold fluid, pressure, or chemical residue. Ask what it carried and handle it as dirty until you know otherwise.

## 15.1 Return Reasons and Policy

| Reason | Example | Usual handling |
|---|---|---|
| Our error | We shipped the wrong part or quantity | Full credit or replacement; no restocking fee; often we arrange pickup |
| Customer ordered wrong or too many | Ordered -8 fittings, needed -6 | Return to stock when unused and resalable; restocking fee applies |
| Damaged in shipping | Crushed carton | Freight claim (Module 13) and replacement |
| Failed in service | Hose burst after three months | Inspect for evidence of cause (wear, working pressure above the hose rating); warranty claim with the vendor if it's a defect |
| No longer needed | Project canceled | Returnable within 90 days with a restocking fee; after 90 days, the branch Manager decides |

### Items that usually can't be returned

- Hose assemblies and other kits built to order
- Hose, sheet, or cord cut to length
- Custom cut gaskets
- Special-order items the vendor won't take back
- Used or damaged items, unless the return is for a failure in service (defective)

The return window is 90 days, with the branch Manager's discretion past that. Each branch sets its restocking fees. Your Manager approves exceptions.

### Trace the cause

Almost every valid return should be able to be traced back to the breakdown in the sales/spec/build process.

| Return | Step that caused it | Module |
|---|---|---|
| Wrong hose | Spec taken without all seven STAMPED answers | 4 |
| Wrong fitting | Thread guessed by eye | 7 |
| Wrong quantity | Unit of measure misread | 2, 6 |
| Wrong item shipped | Picking error | 1, 14 |
| Assembly too long | Cut to overall length without cutoffs | 9 |
| Gasket wrong size | Class or face never asked | 11 |

> 💡 KEY TAKEAWAY: A completed spec confirmed by the customer on every order prevents most returns.

## 15.2 Entering an RMA in P21

An RMA (return merchandise authorization) is the record that approves a return and ties it to the original sale.

### Steps

1. Open **RMA Entry** and enter the customer and header info.
2. On the **Order Notes** tab on the header, select **Add Note**. Type the reason for the return and the action you propose. Each note needs the areas where it shows; choose all available areas.
3. Right-click in **Item ID** and select **Previous Sales** to open the **Previously Sold Items Query**.
4. Fill in any known info (Item ID, invoice number, customer PO number) to narrow the selection.
5. **Right-click** anywhere in Previously Sold Items Query and select **Apply Query**.
6. Select the **Add** checkbox for the item(s) being returned. *Policy: tag every returned item to its previous invoice. When a customer bought 1 of an item and returns 2, only 1 traces to an invoice. The untraceable item gets no credit.*
7. Leave the RMA's **Approved** checkbox unchecked. Only a Manager approves an RMA.
8. Save the RMA and print the RMA Acknowledgement, one for the customer and one for your Manager. **Managers evaluate the return, decide the action, charge the customer any restocking fee and return freight, and issue the credit.**

[VIDEO EXAMPLE: Entering an RMA in the P21Play System: the return note, tying the item to its previous invoice, the restocking fee, and the credit.]

### Questions to ask

| Ask | Reason |
|---|---|
| What was the invoice or PO? | Ties the RMA to the sale and the price paid |
| Why is it coming back? | Sets the reason, the fee, and the action |
| Is it unused and in its package? | Decides whether it can go back to stock |
| What media did it carry? (service returns) | Safety at the counter and the warranty claim |
| Do you need a replacement now? | Decides on an advance replacement |

## 15.3 Credit, Replacement, and Restocking Fees

| Option | When it fits | In P21 |
|---|---|---|
| Credit | The customer doesn't want the part again | The Manager approves the RMA and issues the credit after the return is received and inspected |
| Replacement | The customer still needs the right part | Enter a new order for the replacement, with the RMA number in a note |
| Advance replacement | The customer is down and can't wait for the return | Ship and bill the replacement on a new order. Credit the original after the return is received and inspected. |
| Inspect first | A failure in service, or the cause is unclear | Hold the decision until the part is inspected |

Customers can request to return material even when the vendor and branch did everything right. **Restocking fees** cover the cost of inspecting, handling, and putting the item back on the shelf. They usually don't apply when the branch made the error. Your branch sets the amount; your Manager approves waivers.

> ⚠️ SAFETY & COMPLIANCE: Credit goes on the account only after the return is received and inspected. Make sure the customer understands that the RMA is authorization to return material, not a credit memo.

## 15.4 Receiving, Inspecting, and Restocking Returns

### Steps

1. Match the package to the **RMA number**.
2. Inspect each item: is it the item on the RMA, unused, in its package, and resalable?
3. Receive the return in P21 in **RMA Receipts**.
4. On the **Bin** tab, choose where it goes: back to stock, to vendor return, or to an adjustment.
5. Add a note when anything differs from the RMA.

| Condition | Goes to |
|---|---|
| Unused, clean, in its package, resalable | Back to stock, in its bin |
| Defective, under the vendor's warranty | Tagged and received to Vendor Return |
| Used, damaged, or cut to length | No credit. Back to the customer, or to an adjustment when the customer does not want it back |
| Failed in service, cause unclear | Held for inspection; Vendor if defective |

> 📌 INDUSTRY INSIGHT: A returned fitting that goes back on the shelf with a scratch or a missing O-ring becomes the next customer's problem. When in doubt, hold it out of stock and ask your Manager.

## 15.5 Vendor Returns and Warranty Claims

### Vendor returns

Stock you bought and can't sell can sometimes go back to the vendor, usually with a restocking fee and a time limit. Some vendors allow a once a year stock return with no restocking fees if you place an order of equal amount.

### Warranty claims

When a product fails in service and the cause appears to be a defective product, the vendor may replace it or allow the distributor to be credited. Ask the vendor for a return authorization for the defective item and hold the item until they answer. They may issue a distributor credit without returning the item, and the distributor then issues the customer's credit. Or, they may want the item sent back for evaluation, and credit issued only after the item is confirmed to be defective. During this time, the customer's RMA remains open, waiting on the vendor to decide whether credit will be issued or not. If the vendor refuses to issue credit, usually due to product misuse, then the customer does not receive credit.

> ⚠️ SAFETY & COMPLIANCE: If a defective credit is given to a customer before the vendor evaluates the item, and the vendor then refuses credit due to misuse, the distributor pays. Returns are a drain on a distributor's profitability, as they take time and effort to process. When a credit is issued to a customer and the distributor doesn't receive credit from the vendor, the loss can have an enormous effect on the distributor's profitability and take days, and sometimes weeks, to recover from.

| Information a warranty claim needs | Reason |
|---|---|
| The failed part, uncut | The vendor inspects it |
| Layline or part number and the vendor's date code | Identifies the product for the vendor. Branches do not trace lots |
| Service details: media, pressure, temperature, hours | Shows whether it ran within its rating |
| How and where it failed | Points to the cause |
| Who built the assembly and when | Shop records for a crimped assembly |

> ⚠️ SAFETY & COMPLIANCE: Never promise a customer a warranty credit before the vendor decides. Say you will send it in and call them with the result.

## 15.6 Case Study, What If, and Rookie Mistakes

### Case study: a failed steam hose

A maintenance planner calls. A steam hose assembly the branch built six weeks ago burst at the fitting. The line is down and they need a replacement today.

1. The rep asks what the line carried, the pressure and temperature, and how it failed. The planner says saturated steam at 150 psi, and the hose split right behind the fitting.
2. The rep checks the hose rating against the service. It is rated for the service.
3. The rep enters an **RMA**, tags the previously sold item and invoice, sets the reason "failed in service" and the action "inspect first," and notes the service details.
4. The rep enters a **new order** for an advance replacement, notes the RMA number on it, and the shop builds it.
5. The planner sends the failed assembly back, uncut, tagged with the RMA number.
6. The Manager inspects the crimp: it measures in spec. The buyer sends the hose to the vendor on a warranty claim.
7. The vendor finds a hose defect and credits the branch. The Manager issues the customer's credit, and the rep calls the planner with the result.

If the crimp had measured out of spec, the branch would cover the replacement and the shop would review its crimp check procedure.

### What if...

| What if... | Do this |
|---|---|
| The customer has no invoice or PO | Search Customer Sales History by item and date; returns are not allowed when there is no record of sale. |
| The part came back used | No credit. It goes back to the customer, or to an adjustment when the customer does not want it back |
| The part came back without an RMA | Refuse it, or while the customer waits, enter the RMA and confirm it can be tagged to a previous sale |
| The customer wants a credit for a special-order item | Return authorized only if the vendor will allow the item to be returned. The vendor's restocking fee is passed on unless the branch made the error. |
| A returned assembly is cut apart | Reason for failure cannot be determined on a product that has been destroyed. Return and credit is refused. |

### Rookie mistakes

| Mistake | What it causes |
|---|---|
| Giving credit before the part is received | Credit on the account for a part that never comes back |
| No RMA number on the package | Product sits in warehouse and no one knows why it's here or where it came from |
| Restocking an opened or damaged part | The next customer gets a bad part and the distributor often gets stuck with the loss |
| Promising a warranty credit | Unhappy customer when the vendor finds the fault was with the end user |
| Throwing away a failed part before the vendor's response | No credit given to the distributor when product can't be returned for evaluation |

## 15.7 Terms

| Term | Meaning |
|---|---|
| RMA | Return merchandise authorization: the P21 record that approves a return |
| Credit memo | The document that reduces what the customer owes |
| Advance replacement | A replacement shipped before the return arrives |
| Restocking fee | A charge for handling a return the customer caused |
| Return disposition | Where a returned part goes: stock, vendor return, or an adjustment |
| Warranty claim | A request to the vendor to cover a failed product |
| Vendor return | Stock the branch sends back to the vendor |

## 15.8 Practice, Knowledge Check, and Module Quiz

### Practice in the P21Play System

1. Find a past invoice for a stock item in Customer Sales History.
2. Enter an RMA for one piece with the reason "ordered wrong" and the action "credit."
3. Enter a second RMA for an assembly with the reason "failed in service" and the action "inspect first."
4. Receive the first RMA and send the item back to stock.
5. Receive the second RMA to vendor return and save as unapproved.
6. Your Manager reviews the RMAs for process and procedure accuracy.

### Knowledge check

1. When does a customer get credit on a return?
2. Name three things a warranty claim needs.
3. What happens to a returned part that has been used?
4. When does a restocking fee usually not apply?
5. Why should a failed assembly come back uncut?

### Module quiz

The module quiz has 10 questions. You need 80% to pass, and you have 3 tries. The scenario questions appear on every try.
