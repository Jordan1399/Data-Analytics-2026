# Tableau Practice — Superstore Dataset

**Date:** 8 July 2026
**Tool:** Tableau Public / Desktop
**Dataset:** Sample - Superstore (built-in sample dataset)

## What I practiced

- **Geographic mapping**: plotted `SUM(Sales)` on a symbol map using `Longitude`/`Latitude` (generated), broken down by `Country/Region` and `State/Province`, both with a colour gradient and as a flat single-colour map.
- **Time series analysis**: built line charts of `SUM(Sales)` over `Order Date`, drilling from year → quarter → month, to see trend granularity at different levels.
- **Categorical comparison**: a bar chart comparing `SUM(Sales)` across `Region` (Central, East, West).

## Screenshots

| File | Description |
|---|---|
| `01-sales-map-usa-focus.png` | Sales map, colour-graduated by state, zoomed to continental US |
| `02-sales-map-full-extent.png` | Same map, zoomed out to show full North America extent |
| `03-sales-map-single-color.png` | Sales map with colour encoding removed, size-only |
| `04-monthly-sales-trend-2023-2026.png` | Sales trend by year/quarter/month, full drill-down |
| `05-quarterly-sales-trend.png` | Sales trend by year/quarter |
| `06-yearly-sales-trend.png` | Sales trend by year only |
| `07-sales-by-region-bar-chart.png` | Bar chart of total sales by region |

## Notes to self

- Practiced controlling the level of date granularity on the Columns shelf (Year → Quarter → Month) and seeing how it changes trend readability — monthly is noisy, yearly smooths it out too much, quarterly was the best balance for this dataset.
- Removing a field from Colour is a quick way to check if it's actually adding insight or just visual noise.
