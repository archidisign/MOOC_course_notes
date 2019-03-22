# Concepts for DataViz for React Developers

## Type of data
- Ordinal (t-shirt sizes)
- Categorical (movie generes)
- Quantitative (ratings/scores)
- Temporal (dates)
- Spatial (cities)

## SVG
- SVG is an XML type language, just like HTML.
- Instead of drawing containers with text, SVG is really great at drawing shapes onto the screen
	- Elements
	- Coordinate System
	- Scales
	- Shapes, Lines, Arcs
- Example: with weather data
	- Line Chart
	- Radial Chart
	- Bar Chart

## React with D3 (Live demo)
- Axes, Legends, & Annotations
- Transitions
- Brush
- D3 Renders

## React Readners: Architecture
- Chart component
	1. Gets passed in raw data as prop
	2. Translates raw data to screen space
	3. Renders the calculated data
	- Manages state for interactions that don't require redrawing of the chart (hover, click)
- Root Component
	- Manages updates to raw data
	- Manages state for interactions that require redrawing of charts (filter, aggregate, sort, etc.)

_Note_: If you have a large dataset, consider using Canvas