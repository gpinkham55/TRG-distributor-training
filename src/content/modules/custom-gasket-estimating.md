---
number: 12
title: Custom Gasket Fabrication and Estimating
week: 3
minutes: 210
signoff: true
status: published
summary: Waterjet and die cutting, material yield and nesting, scrap, cutting time, the house pricing formula with placeholder values, and selling cut gaskets in P21.
---

Many branches cut custom gaskets from sheet on a waterjet or with a steel rule die. This module explains how custom gaskets are made, how to figure the material and time a job takes, and how to price it with the house formula. All rates, costs, and markups here are placeholder values for teaching; your manager gives you your branch's real figures.

### Learning objectives

After this module you will be able to:

1. Choose between waterjet and die cutting for a custom gasket job.
2. Calculate the square inches of material a job uses, including spacing and scrap.
3. Estimate machine and labor time and round it to the next 15 minutes.
4. Price a gasket job with the house formula and convert it to a price each.
5. Set up and sell a cut gasket in P21 using the right units of measure.

## 12.1 How Custom Gaskets Are Made

A custom gasket starts as sheet or roll material and is cut to a drawing, a sample, or a standard flange size. Distributors use three cutting methods.

| Method | How it works | Best for | Limits |
|---|---|---|---|
| Waterjet | A high-pressure water stream, often with garnet abrasive, follows a CNC path from a DXF or CAD file | Short and medium runs, prototypes, complex shapes, thick or hard materials, metal | Slower per part than a die on long runs |
| Steel rule die | A press drives a steel blade formed to the part shape through the material | Long repeat runs of the same part, thin soft materials | A die costs money and time to make; one die per shape |
| Hand or circle cutter | A circle cutter, knife, or punch | One-off emergency repairs, simple rings | Slow, less accurate, no repeatability |

[IMAGE EXAMPLE: A waterjet cutting head over a sheet of compressed gasket material, with nested full-face gaskets partly cut]

[IMAGE EXAMPLE: A steel rule die on a press bed, showing the blade, ejection rubber, and a finished gasket beside it]

> 📌 INDUSTRY INSIGHT: Most new custom gasket business is cut on the waterjet. It needs no tooling, turns jobs in hours instead of weeks, and handles one piece or a thousand. Die cutting stays in use for high-volume repeat parts where the die is already made.

> ⚠️ SAFETY & COMPLIANCE: Wear safety glasses when cutting. Run the waterjet or die press only after your mentor has trained you on that machine.

## 12.2 Material Yield and Nesting

Yield is how many parts you get from a sheet or roll. Nesting is how the parts are arranged on the material to use as little as possible.

Every part takes up more than its own size. It needs a **footprint**: the part's outer box plus **spacing** between parts for the cutting stream (kerf) and a solid web. Parts also stay an **edge margin** away from the sheet edge.

- **Footprint** = (part width + spacing) × (part length + spacing)
- **Parts across** = (sheet width − 2 × edge margin) ÷ (part width + spacing)
- **Parts per sheet** = parts across × parts down

Round each count **down**: a partial part is scrap.

**Worked example (footprint).** A 4 in Class 150 full-face gasket is 9.00 in OD. With 0.125 in spacing the footprint is 9.125 in × 9.125 in = **83.27 in²**. On a 60 in × 60 in sheet with a 0.5 in edge margin: (60 − 1.0) ÷ 9.125 = 6.47, so 6 across and 6 down = **36 parts per sheet**.

### Nesting tips

- Cut small rings from the center drop of large rings when the order mixes sizes. The drop from a 4 in Class 150 ring (4.50 in ID) yields a 2 in ring (4.12 in OD).
- Stagger round parts in rows (offset like eggs in a carton) to beat the square grid by 5% to 10%.
- Turn long, narrow parts to match the sheet's long side or the roll width.

[IMAGE EXAMPLE: Two nests of the same ring gasket side by side, a square grid and a staggered grid, with parts-per-sheet counts labeled]

> 💡 KEY TAKEAWAY: Price from the footprint, not the part. A 9 in round gasket has a 63.6 in² area but uses 83.3 in² of sheet.

## 12.3 Scrap and Waste

Not all leftover material can be sold again. A **scrap factor** adds a percentage to the material used to cover what is thrown away.

- **Material used** = footprint × quantity × (1 + scrap factor)

| Situation | Typical scrap factor (illustrative) |
|---|---|
| Cut from a remnant that would otherwise be scrapped | 0% |
| Simple rings or rectangles, leftover sheet goes back to stock | 5% |
| Irregular shapes, odd-shaped leftovers | 10% to 20% |
| Roll width doesn't divide evenly into the part width | 15% to 25% |
| Small job that opens a full sheet of an expensive material nobody else buys | Charge the full sheet |

> ⚠️ SAFETY & COMPLIANCE: Never cut a gasket from a remnant unless you can confirm its material and grade. Mislabeled scrap in a steam or chemical line can fail under pressure. If the remnant isn't labeled, don't use it.

## 12.4 Waterjet Cutting Time

Waterjet time has four parts. Estimate each, then add them.

| Time element | What drives it | Illustrative figure |
|---|---|---|
| Programming and nesting | Customer sends a DXF (fast); drawing from a sketch or a sample part (slow) | 5 to 15 min with a DXF; 15 to 60 min from a sample |
| Cutting | Total cut length ÷ cutting speed; speed falls as material gets thicker or harder | 40 to 120 in/min for 1/8 in soft sheet |
| Pierces | Each hole and each part outline starts with a pierce | 1 to 3 seconds each |
| Handling | Loading the sheet, unloading, cleaning, counting, bagging, labeling | 10 to 20 min per job |

For a round gasket with bolt holes:

- **Cut length per part** = π × (OD + ID + number of holes × hole diameter)
- **Cutting time** = cut length per part × quantity ÷ cutting speed

For other shapes, the CAD program reports the cut length.

> 📌 INDUSTRY INSIGHT: Garnet abrasive, pump wear, and power are real costs of waterjet time. Shops either build them into one hourly shop rate (as this module does) or track abrasive separately.

## 12.5 Die Cutting

Die cutting trades a one-time tooling cost for very fast cutting.

| Cost element | What drives it | Illustrative figure |
|---|---|---|
| Steel rule die | Part size and the length of blade it needs | $200 to $800 per die |
| Press setup | Mounting the die, setting depth, first-piece check | 15 min |
| Press rate | Strokes per hour × parts per stroke | 300 to 900 strokes per hour |
| Die ownership | Customer-owned tooling (billed once) or spread into the part price | Spread over the expected repeat quantity |

**Illustrative comparison: 4 in Class 150 full-face gasket** (labor at the $150 per hour placeholder rate)

| Quantity | Waterjet labor | Die cutting labor + $350 die | Better choice |
|---|---|---|---|
| 50 | 1.75 hr = $262.50 | 0.50 hr = $75 + $350 = $425 | Waterjet |
| 500 | 12.00 hr = $1,800 | 2.00 hr = $300 + $350 = $650 | Die |
| 5,000 | 113.50 hr = $17,025 | 17.00 hr = $2,550 + $350 = $2,900 | Die |

> 💡 KEY TAKEAWAY: Waterjet wins small and urgent jobs with no tooling. A die wins large repeat runs. When a repeat customer's volume grows, quote both.

## 12.6 The House Pricing Formula

Every custom gasket quote uses the same two-part formula: material at cost times a markup multiplier, plus labor at the shop hourly rate in 15-minute increments. This module uses placeholder values, a **3.00 multiplier** and **$150 per hour**, so the math is easy to follow. Your manager gives you your branch's real figures.

- **Material price** = square inches used × cost per square inch × markup multiplier
- **Labor price** = labor hours, rounded up to the next quarter hour × shop rate
- **Job price** = material price + labor price
- **Price each** = job price ÷ quantity

Always round labor **up** to the next quarter hour: 61 minutes is 1.25 hours.

> ⚠️ SAFETY & COMPLIANCE: Never share your branch's real markup, shop rate, or cost with a customer. Quote the price only.

## 12.7 Worked Example

**Request:** 50 pieces, 4 in Class 150 full-face gasket, 1/8 in compressed sheet, 8 bolt holes at 0.75 in. Sheet cost is an illustrative $0.05 per square inch.

| Step | Calculation | Result |
|---|---|---|
| 1. Footprint | 9.125 × 9.125 | 83.27 in² |
| 2. Material used | 83.27 × 50 parts × (1 + 0% scrap; leftover goes back to stock) | 4,163 in² |
| 3. Material price | 4,163 × $0.05 × 3.00 | $624.49 |
| 4. Cut length per part | π × (9.00 + 4.50 + 8 × 0.75) | 61.26 in |
| 5. Cutting time | 61.26 × 50 ÷ 60 in/min | 51.1 min |
| 6. Pierce time | 10 pierces × 50 parts × 2 sec | 16.7 min |
| 7. Programming and handling | 15 min + 15 min | 30.0 min |
| 8. Labor hours | 97.8 min, rounded up to 105 min | 1.75 hr |
| 9. Labor price | 1.75 × $150 | $262.50 |
| 10. Job price | $624.49 + $262.50 | **$886.99** |
| 11. Price each | $886.99 ÷ 50 | **$17.74 EA** |

**If the leftover can't go back to stock**, charge the 2 full sheets the job opens instead: 7,200 in² × $0.05 × 3.00 = $1,080.00 material, $1,342.50 job price, $26.85 each.

> ⚠️ SAFETY & COMPLIANCE: Confirm the material is rated for the service (pressure, temperature, and media) before you price it. A cheap quote on the wrong material is a leak waiting to happen.

## 12.8 Units of Measure and Kits in P21

Sheet and roll goods are bought in one unit and sold in another. P21 converts between them with the unit conversions set on the item.

| From | To square inches | Example |
|---|---|---|
| 1 square foot | 144 in² | A 2 ft × 3 ft piece = 864 in² |
| 1 square yard | 1,296 in² | |
| 1 sheet, 60 in × 60 in | 3,600 in² | |
| 1 sheet, 60 in × 63 in | 3,780 in² | |
| 1 roll, 36 in wide × 25 ft | 36 × 300 = 10,800 in² | |
| 1 linear foot of 36 in roll | 432 in² | |

**Selling a cut gasket as a kit.** Set up the gasket as its own item sold by the each (EA). Its components are the sheet (in square inches per piece) and the labor item (in hours per piece). P21 then costs and prices the gasket per EA and takes the right amount of sheet out of stock when the order ships. Module 9 covers kits for hose assemblies the same way.

| Kit component | Quantity per EA (worked example) |
|---|---|
| Compressed sheet, sold by in² | 83.27 in² |
| Waterjet labor, sold by hour | 1.75 ÷ 50 = 0.035 hr |

**Cut-to-length sheet and cord.** Sheet rubber sold off the roll and O-ring cord sold by the foot follow the same rules as cut-to-length hose (Module 9): check the units, check the available quantity, and ask whether the customer needs one piece or several.

> 📌 INDUSTRY INSIGHT: Check both units on a sheet item before you quote. Buying by the sheet and selling by the square inch is common; mixing them up turns a $20 gasket into a five-figure order line.

## 12.9 Field Applications

| Industry | Typical custom gaskets | Usual materials |
|---|---|---|
| Pulp and paper | Steam header and digester flange gaskets, PTFE envelope gaskets on bleach plant piping, paper machine headbox and vacuum box seals | Compressed sheet, ePTFE, flexible graphite, EPDM |
| Agriculture | Sprayer pump and tank lid gaskets, irrigation pipe flange gaskets, tractor and implement cover gaskets | EPDM, nitrile, neoprene, fiber sheet |
| Chemical | Acid and caustic line flange gaskets, glass-lined and FRP vessel gaskets, tank manways | PTFE, ePTFE, FKM, EPDM |
| Heavy equipment | Hydraulic tank and manifold gaskets, engine and housing covers, cab and door seals, vibration pads | Nitrile, neoprene, fiber sheet, closed-cell sponge |

[IMAGE EXAMPLE: A full-face PTFE gasket installed on an FRP flange in a chemical plant, bolts in a star pattern]

[IMAGE EXAMPLE: An irrigation pump discharge flange on a farm, with an EPDM gasket visible between the flanges]

## 12.10 Practice, Knowledge Check, and Module Quiz

### Practice

Use the placeholder values in this module (3.00 multiplier, $150 per hour, $0.05 per square inch) unless your mentor gives you others.

1. **Footprint.** A rectangular gasket is 8 in × 12 in with 0.125 in spacing. Find its footprint and how many fit on a 60 in × 60 in sheet with a 0.5 in edge margin.
2. **Price a job.** Price 25 pieces of a 3 in Class 150 full-face gasket (7.50 in OD, 3.50 in ID, 4 holes at 0.75 in) using the steps in 12.7.
3. **Waterjet or die.** For 20 pieces and for 2,000 pieces of the same part, say which method you would quote and why.
4. **Units.** A 60 in × 60 in sheet item is bought by the sheet and sold by the square inch. How many square inches are in 4 sheets?
5. **P21 kit.** Look up a cut gasket item in the P21Play System and list its components and quantities per EA.

### Knowledge check (practice, not graded)

1. A part's bounding box is 6 in × 10 in with 0.125 in spacing. What is its footprint?
2. A job takes 47 minutes of labor. How many hours do you bill?
3. Material used is 2,000 in² at $0.08 per in² with a 3.00 markup multiplier. What is the material price?
4. A customer needs 20 odd-shaped gaskets by tomorrow. Waterjet or die?
5. How many square inches are in 3 sheets of 60 in × 60 in?

Work these on your own, then check your answers with your mentor.

### Module quiz

- **Module quiz:** 10 questions drawn from a pool of 25; 80% to pass.
- **Mentor sign-off:** price a custom gasket job your mentor gives you, using your branch's real figures, within 10% of your mentor's quote.
