---
number: 12
title: Custom Gasket Fabrication and Estimating
week: 3
minutes: 240
signoff: false
status: published
summary: Waterjet, die, and hand cutting, job intake, material yield and nesting, scrap and remnants, cutting time, the house pricing formula with placeholder values, and quoting and selling cut gaskets as kits in P21.
---

Many branches cut custom gaskets from sheet on a waterjet or with a steel rule die. This module covers how custom gaskets are made, how to take in a job, how to figure the material and time it takes, and how to price it with the house formula. A pricing mistake on a cut gasket shows up on every piece in the order. All rates, costs, and markups here are placeholder values for teaching; your Manager gives you your branch's figures.

### Learning objectives

After this module you will be able to:

1. Choose between waterjet, die, and hand cutting for a custom gasket job.
2. Take in a job: drawing or DXF, dimensions, material, and quantity.
3. Calculate the square inches a job uses, including spacing, edge margin, and scrap.
4. Estimate waterjet and die cutting time and round labor up to the next 15 minutes.
5. Price a job with the house formula and convert it to a price each.
6. Set up and sell a cut gasket as a kit in P21 with the right units of measure.

> ⚠️ SAFETY & COMPLIANCE: Wear safety glasses when cutting. Run the waterjet or die press only after your Manager trains you on that machine.

## 12.1 Cutting Methods and Job Intake

A custom gasket starts as sheet or roll material and is cut to a drawing, a sample, or a standard flange size.

| Method | How it works | Best for | Limits |
|---|---|---|---|
| Waterjet | A high-pressure water stream, often with garnet abrasive, follows a CNC path from a DXF or CAD file | Short and medium runs, prototypes, complex shapes, thick or hard materials, metal | Slower per part than a die on long runs |
| Steel rule die | A press drives a steel blade formed to the part shape through the material | Long repeat runs of one part, thin soft materials | A die costs money and time to make; one die per shape |
| Hand or circle cutter | A circle cutter, knife, or punch | One-off emergency repairs, simple rings | Slow, less accurate, no repeatability |

[IMAGE EXAMPLE: A waterjet cutting head over a sheet of compressed gasket material, with nested full-face gaskets partly cut]

[IMAGE EXAMPLE: A steel rule die on a press bed, showing the blade, ejection rubber, and a finished gasket beside it]

> 📌 INDUSTRY INSIGHT: Most new custom gasket business is cut on the waterjet. It needs no tooling, turns jobs in hours, and handles one piece or a thousand. Die cutting stays in use for high-volume repeat parts with a die already made.

### Job intake

| What you need | Best source | Fallback |
|---|---|---|
| Shape and dimensions | A DXF or CAD file | A dimensioned drawing, a standard flange size, a tracing, or a sample part |
| Material and thickness | The drawing or spec callout (Module 10) | The service: media, temperature, pressure |
| Quantity and repeat volume | The customer | Ask: "How many a year?" |
| Delivery | The customer | Check the waterjet schedule before you promise |

### Steps: take in a custom gasket job

1. Ask for a DXF first. It saves programming time and removes measuring errors.
2. Without a file, get a dimensioned drawing or a tracing on paper with the bolt holes marked.
3. With only a sample part, measure it and have your Manager confirm before you quote.
4. Confirm the material for the service (Module 10).
5. Ask the quantity now and the expected yearly volume. Volume decides waterjet or die.
6. Write every detail in the quote line's extended description.

> ⚠️ SAFETY & COMPLIANCE: Old gasket samples from steam lines may contain asbestos. Handle them as little as possible and ask your Manager.

## 12.2 Material Yield and Nesting

Yield is how many parts you get from a sheet or roll. Nesting is how the parts are arranged on the material to use as little as possible.

Every part takes up more than its own size. It needs a **footprint**: the part's outer box plus **spacing** between parts for the cutting stream (kerf) and a solid web. Parts also stay an **edge margin** away from the sheet edge.

- **Footprint** = (part width + spacing) × (part length + spacing)
- **Parts across** = (sheet width − 2 × edge margin) ÷ (part width + spacing)
- **Parts per sheet** = parts across × parts down

Round each count **down**: a partial part is scrap.

**Worked example.** A 4 in Class 150 full-face gasket is 9.00 in OD. With 0.125 in spacing the footprint is 9.125 in × 9.125 in = **83.27 in²**. On a 60 in × 60 in sheet with a 0.5 in edge margin: (60 − 1.0) ÷ 9.125 = 6.47, so 6 across and 6 down = **36 parts per sheet**.

### Nesting tips

- Cut small rings from the center drop of large rings when the order mixes sizes. The drop from a 4 in Class 150 ring (4.50 in ID) yields a 2 in ring (4.12 in OD).
- Stagger round parts in rows, offset like eggs in a carton, to beat the square grid by 5% to 10%.
- Turn long, narrow parts to match the sheet's long side or the roll width.

[IMAGE EXAMPLE: Two nests of the same ring gasket side by side, a square grid and a staggered grid, with parts-per-sheet counts labeled]

> 💡 KEY TAKEAWAY: Price from the square-grid footprint, on staggered nests too. A 9 in round gasket has a 63.6 in² area and uses 83.3 in² of sheet.

## 12.3 Scrap and Remnants

Some leftover material goes back to stock; the rest is scrap. A **scrap factor** adds a percentage to the material used to cover what is thrown away.

- **Material used** = footprint × quantity × (1 + scrap factor)
- Always factor in at least 5% scrap.

| Situation | Typical scrap factor (illustrative) |
|---|---|
| Simple rings or rectangles, or a job cut from a remnant | 5% |
| Irregular shapes, odd-shaped leftovers | 10% to 20% |
| Roll width divides unevenly into the part width | 15% to 25% |
| Small job that opens a full sheet of an expensive material nobody else buys | Charge the full sheet |

### Remnant rules

1. Check the remnant rack before you open a new sheet.
2. Confirm the remnant's material, thickness, and grade from its label.
3. Label every leftover piece with the material, thickness, and size before it goes back on the rack.

> ⚠️ SAFETY & COMPLIANCE: Cut gaskets only from labeled remnants. Mislabeled scrap in a steam or chemical line can fail under pressure.

## 12.4 Waterjet Cutting Time

Waterjet time has four parts. Estimate each, then add them.

| Time element | What drives it | Illustrative figure |
|---|---|---|
| Programming and nesting | DXF from the customer (fast); drawing from a sketch or sample (slow) | 5 to 15 min with a DXF; 15 to 60 min from a sample |
| Cutting | Total cut length ÷ cutting speed; speed falls as material gets thicker or harder | 40 to 120 in/min for 1/8 in soft sheet |
| Pierces | Each hole and each part outline starts with a pierce | 1 to 3 seconds each |
| Handling | Loading, unloading, cleaning, counting, bagging, labeling | 10 to 20 min per job |

For a round gasket with bolt holes:

- **Cut length per part** = π × (OD + ID + number of holes × hole diameter)
- **Cutting time** = cut length per part × quantity ÷ cutting speed

For other shapes, the CAD program reports the cut length.

> 📌 INDUSTRY INSIGHT: Garnet abrasive, pump wear, and power are real costs of waterjet time. Shops either build them into one hourly shop rate, as this module does, or track abrasive separately.

## 12.5 Die Cutting

Die cutting trades a one-time tooling cost for very fast cutting.

| Cost element | What drives it | Illustrative figure |
|---|---|---|
| Steel rule die | Part size and the length of blade it needs | $200 to $800 per die |
| Press setup | Mounting the die, setting depth, first-piece check | 15 min |
| Press rate | Strokes per hour × parts per stroke | 300 to 900 strokes per hour |
| Die ownership | Customer-owned tooling billed once, or spread into the part price | Spread over the expected repeat quantity |

**Illustrative comparison: 4 in Class 150 full-face gasket** (labor at the $150 per hour placeholder rate)

| Quantity | Waterjet labor | Die cutting labor + $350 die | Better choice |
|---|---|---|---|
| 50 | 1.75 hr = $262.50 | 0.50 hr = $75 + $350 = $425 | Waterjet |
| 500 | 12.00 hr = $1,800 | 2.00 hr = $300 + $350 = $650 | Die |
| 5,000 | 113.50 hr = $17,025 | 17.00 hr = $2,550 + $350 = $2,900 | Die |

> 💡 KEY TAKEAWAY: Waterjet wins small and urgent jobs with no tooling. A die wins large repeat runs. When a repeat customer's volume grows, quote both.

## 12.6 The House Pricing Formula

Custom gasket quotes start from a two-part formula: material at cost times a markup multiplier, plus labor at the shop hourly rate in 15-minute increments. Die cost and full-sheet charges are added when they apply. This module uses placeholder values, a **3.00 multiplier** and **$150 per hour**, so the math is easy to follow. Your Manager gives you your branch's figures.

- **Material price** = square inches used × cost per square inch × markup multiplier
- **Labor price** = labor hours, rounded up to the next quarter hour × shop rate
- **Job price** = material price + labor price
- **Price each** = job price ÷ quantity

Always round labor **up** to the next quarter hour: 61 minutes is 1.25 hours.

> ⚠️ SAFETY & COMPLIANCE: Never share your branch's markup, shop rate, or cost with a customer. Quote the price only.

### Worked example

**Request:** 50 pieces, 4 in Class 150 full-face gasket, 1/8 in compressed sheet, 8 bolt holes at 0.75 in. Placeholder sheet cost: $0.05 per square inch.

| Step | Calculation | Result |
|---|---|---|
| 1. Footprint | 9.125 × 9.125 | 83.27 in² |
| 2. Material used | 83.27 × 50 parts × (1 + 5% scrap; leftover goes back to stock) | 4,372 in² |
| 3. Material price | 4,372 × $0.05 × 3.00 | $655.80 |
| 4. Cut length per part | π × (9.00 + 4.50 + 8 × 0.75) | 61.26 in |
| 5. Cutting time | 61.26 × 50 ÷ 60 in/min | 51.1 min |
| 6. Pierce time | 10 pierces × 50 parts × 2 sec | 16.7 min |
| 7. Programming and handling | 15 min + 15 min | 30.0 min |
| 8. Labor hours | 97.8 min, rounded up to 105 min | 1.75 hr |
| 9. Labor price | 1.75 × $150 | $262.50 |
| 10. Job price | $655.80 + $262.50 | **$918.30** |
| 11. Price each | $918.30 ÷ 50 | **$18.37 EA** |

**When the leftover can't go back to stock**, charge the 2 full sheets the job uses: 7,200 in² × $0.05 × 3.00 = $1,080.00 material, $1,342.50 job price, $26.85 each.

> ⚠️ SAFETY & COMPLIANCE: Confirm the material is rated for the service (pressure, temperature, and media) before you price it. A cheap quote on the wrong material costs the customer more and costs you a customer.

## 12.7 Units of Measure, Kits, and Quoting in P21

Sheet and roll goods are bought in one unit and sold in another. P21 converts between them with the unit conversions set on the item.

### Selling a cut gasket as a kit

Set up the gasket as its own item sold by the each (EA). Its components are the sheet (in SI per piece) and the labor item (in hours per piece). P21 then prices the gasket per EA and takes the right amount of sheet out of stock when the order ships. Module 9 covers kits the same way for hose assemblies.

| Kit component | Quantity per EA (worked example) |
|---|---|
| Compressed sheet, sold in SI | 4,372 ÷ 50 = 87.44 SI |
| Waterjet labor, in hours | 1.75 ÷ 50 = 0.035 hr |

Labor per EA is for the quoted quantity. Re-figure it when the quantity changes.

### Steps: quote and order a cut gasket

1. Work the price with the house formula (12.6).
2. In Order Entry set as a quote, enter the gasket kit item when one is on file. When no kit item is on file, ask your Manager to set one up.
3. Put the drawing number, material, and thickness in the line's extended description.
4. Give the lead time from the waterjet schedule.
5. When the customer accepts, convert the quote to an order (Module 6).

### Cut-to-length sheet and cord

Sheet rubber sold off the roll and O-ring cord sold by the foot follow the cut-to-length rules from Module 9: check the unit, check net available, and ask whether the customer needs one piece or several.

> 📌 INDUSTRY INSIGHT: Check both units on a sheet item before you quote. Buying by the sheet and selling by the square inch is common.

## 12.8 Field Applications, Case Study, What If, and Rookie Mistakes

### Field applications

| Industry | Typical custom gaskets | Usual materials |
|---|---|---|
| Pulp and paper | Steam header and digester flange gaskets, PTFE envelope gaskets on bleach plant piping, paper machine headbox and vacuum box seals | Compressed sheet, ePTFE, flexible graphite, EPDM |
| Agriculture | Sprayer pump and tank lid gaskets, irrigation pipe flange gaskets, tractor and implement cover gaskets | EPDM, nitrile, neoprene, fiber sheet |
| Chemical | Acid and caustic line flange gaskets, glass-lined and FRP vessel gaskets, tank manways | PTFE, ePTFE, FKM, EPDM |
| Heavy equipment | Hydraulic tank and manifold gaskets, engine and housing covers, cab and door seals, vibration pads | Nitrile, neoprene, fiber sheet, closed-cell sponge |

[IMAGE EXAMPLE: A full-face PTFE gasket installed on an FRP flange in a chemical plant, bolts in a star pattern]

[IMAGE EXAMPLE: An irrigation pump discharge flange on a farm, with an EPDM gasket visible between the flanges]

### Case study: the manway gasket

The planner emails a sketch of a tank manway cover: an 18 in × 24 in oval, 2 in wide, with 16 bolt holes. "Need 6, for the white water tank. We buy these every outage."

1. **Intake.** The rep asks for a DXF; the mill has none. The planner traces the old gasket on paper with the bolt holes marked and emails a photo with a tape measure beside it.
2. **Material.** White water is mill process water at about 120°F. 1/8 in EPDM fits the service.
3. **Programming.** Drawing the shape from a tracing takes 45 min. The rep saves the DXF for the next outage.
4. **Yield.** The footprint is 18.125 × 24.125 = 437.27 in². Six parts with 5% scrap use 437.27 × 6 × 1.05 = 2,755 in²; the leftover goes back to stock.
5. **Price.** The rep works the house formula with the branch's figures and quotes a price each.
6. **P21.** The Manager sets up a kit item for the gasket with the DXF file reference in the description. The next outage reorder is one line.

The first order paid for the setup. Reorders skip the programming time.

### What if...

| Situation | What to do | Reason |
|---|---|---|
| The customer has only a sample part | Measure it and have your Manager confirm before you quote | A measuring error repeats on every piece |
| The order is 20 pieces needed tomorrow | Quote waterjet | No tooling, fast turnaround |
| A repeat customer's volume grows to thousands | Quote both waterjet and die | A die wins large repeat runs |
| The job opens a full sheet of a rare material | Charge the full sheet | Nobody else buys the leftover |
| A remnant has no label | Leave it out of the job | Unknown material can fail in service |
| The customer asks for your shop rate | Quote the price only | Rates and margins stay inside the branch |

### Rookie mistakes

| Mistake | What it causes | The habit that prevents it |
|---|---|---|
| Pricing from the part area | Material priced short on every job | Price from the footprint |
| Rounding labor down | Labor given away | Round up to the next quarter hour |
| Rounding parts per sheet up | Promising parts that don't fit | Round down; a partial part is scrap |
| Skipping programming time | A loss on one-off jobs | Add programming and handling every time |
| Mixing up sheet and SI units | A wildly wrong order line | Check both units on the item |
| Quoting a die on a 20-piece job | A lost order on price and lead time | Compare waterjet and die by quantity |

## 12.9 Fabrication and Estimating Terms

| Term | Meaning |
|---|---|
| Waterjet | A CNC machine that cuts with a high-pressure water stream |
| Garnet abrasive | The sand added to the waterjet stream for hard materials |
| Steel rule die | A steel blade formed to a part shape and pressed through sheet |
| DXF | A CAD file format the waterjet program reads |
| Kerf | The width the cutting stream removes |
| Footprint | A part's outer box plus spacing |
| Spacing | The gap between parts on the sheet |
| Edge margin | The gap between parts and the sheet edge |
| Nesting | Arranging parts on a sheet to use the least material |
| Yield | Parts per sheet or roll |
| Scrap factor | The percent added to material used to cover waste |
| Pierce | The start point where the stream breaks through the sheet |
| Cut length | The total length of all cuts on one part |
| Markup multiplier | The factor applied to material cost (placeholder ×3.00) |
| Shop rate | The hourly labor rate (placeholder $150/hr) |
| Quarter hour | Labor is billed in 15-minute increments, rounded up |

## 12.10 Practice, Knowledge Check, and Module Quiz

### Practice

Use the placeholder values in this module (3.00 multiplier, $150 per hour, $0.05 per square inch) unless your Manager gives you others.

1. **Footprint.** A rectangular gasket is 8 in × 12 in with 0.125 in spacing. Find its footprint and how many fit on a 60 in × 60 in sheet with a 0.5 in edge margin, all parts turned the same way.
2. **Price a job.** Price 25 pieces of a 3 in Class 150 full-face gasket (7.50 in OD, 3.50 in ID, 4 holes at 0.75 in) using the steps in 12.6.
3. **Waterjet or die.** For 20 pieces and for 2,000 pieces of the same part, say which method you would quote and why.
4. **Units.** A 60 in × 60 in sheet item is bought by the sheet and sold by the square inch. How many square inches are in 4 sheets?
5. **Intake.** Your Manager hands you a sample gasket with no drawing. Measure it and list what you would confirm before quoting.
6. **P21 kit.** Look up a cut gasket kit item in the P21Play System and list its components and quantities per EA.

### Knowledge check (practice)

1. A part's outer box is 6 in × 10 in with 0.125 in spacing. What is its footprint?
2. A job takes 47 minutes of labor. How many hours do you bill?
3. Material used is 2,000 in² at $0.08 per in² with a 3.00 markup multiplier. What is the material price?
4. A customer needs 20 odd-shaped gaskets by tomorrow. Waterjet or die?
5. How many square inches are in 3 sheets of 60 in × 60 in?
6. What file do you ask the customer for first?

Work these on your own, then check your answers with your Manager.

### Module quiz

Pass the module quiz to complete this module. The quiz has 10 questions: the module's scenario questions plus questions drawn from the module pool. You need 80% to pass and have 3 tries.
