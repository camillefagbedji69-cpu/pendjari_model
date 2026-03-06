# Systems Modeling of Water-Vegetation-Wildlife Interactions in Pendjari National Park

## 🎯 Project Overview

This project models the complex dynamics between water availability, forage biomass production, and African buffalo (*Syncerus caffer*) population in Pendjari National Park, Benin. The model explores how different management scenarios (fire control, anti-poaching enforcement) 
affect long-term ecosystem stability.

### My Contribution
As part of a collaborative course project, I was responsible for:
- Designing and implementing the **sensitivity analysis framework**
- Applying **Random Forest as a meta-model** to identify key drivers of system behavior
- Conducting **post-scenario statistical analysis** to quantify the 
  relative importance of management interventions

## 🌍 Context

Pendjari National Park faces multiple pressures: climate variability, poaching, and fire regimes. Understanding the feedback loops between water, vegetation, and wildlife is critical for sustainable management. 
This model simulates 50-year dynamics under three policy scenarios to inform conservation strategies.


## 🔄 Model Structure

### Conceptual Framework: Stock-and-Flow System

The model consists of three interacting compartments:
```
┌─────────────┐
│   WATER     │ ←──── Precipitation
│  RESOURCE   │ ───→  Evapotranspiration (driven by vegetation)
└──────┬──────┘
       │
       ├──→ Supports vegetation growth
       │
┌──────▼──────┐
│  FORAGE     │ ←──── Regeneration (water-dependent)
│  BIOMASS    │ ───→  Consumption by buffalo
└──────┬──────┘      ───→  Fire loss
       │
       ├──→ Sustains herbivore population
       │
┌──────▼──────┐
│  BUFFALO    │ ←──── Births (food-dependent)
│ POPULATION  │ ───→  Deaths (food limitation, poaching)
└─────────────┘
```

### Key Feedback Loops
1. **Water-Vegetation**: More water → more biomass → more evapotranspiration
2. **Vegetation-Wildlife**: More forage → higher buffalo survival/reproduction
3. **Fire-Vegetation**: Fire reduces biomass but can stimulate regrowth
4. **Poaching-Wildlife**: Direct mortality reduces population

## 📊 Scenarios

### Scenario 1: Pessimistic (High Pressure)
- **Fire frequency**: High
- **Poaching rate**: High
- **Result**: Severe population decline

### Scenario 2: Business-as-Usual (Current)
- **Fire frequency**: Moderate
- **Poaching rate**: Moderate
- **Result**: Gradual population decline (80% loss over 50 years)

### Scenario 3: Optimistic (Enhanced Protection)
- **Fire frequency**: Low (controlled burning)
- **Poaching rate**: Very low (enforcement)
- **Result**: **Critical finding** – Population increases BUT water 
  resources completely depleted due to unchecked vegetation growth


## 🔬 Methodology

### Phase 1: Model Development (NetLogo)
- **Software**: NetLogo
- **Parameters**: Derived from scientific literature on Pendjari ecology
- **Time horizon**: 50 years (annual time steps)
- **Stochasticity**: Environmental variability in precipitation

### Phase 2: Sensitivity Analysis (My Contribution)
**Objective**: Identify which management levers have the greatest impact 
on system outcomes.

**Approach**: Random Forest meta-modeling
1. **Design of Experiments**: Latin Hypercube Sampling to generate 1000+ 
   parameter combinations
2. **Simulation runs**: Each combination run through NetLogo model
3. **Output variables**: Final water stock, final biomass, final buffalo 
   population
4. **Meta-model training**: Random Forest regressor predicting outputs 
   from input parameters
5. **Variable importance**: %IncMSE (% Increase in Mean Squared Error 
   when variable is permuted)


## 📈 Key Results

### Sensitivity Analysis Findings

| Factor | Impact on Water | Impact on Biomass | Impact on Buffalo |
|--------|-----------------|-------------------|-------------------|
| **Fire frequency** | **+41.89%** | **+39.74%** | +15.32% |
| **Poaching rate** | +8.21% | +12.47% | **+44.63%** |
| **Precipitation** | +23.15% | +18.92% | +21.05% |

**Interpretation**:
- **Fire** is the dominant driver of water and biomass dynamics
- **Poaching** directly controls buffalo population (as expected)
- **Water availability** emerges as a critical bottleneck even under 
  optimal scenarios

### Critical Insight: The Water Paradox
The "Optimistic" scenario revealed an unexpected risk:
- Eliminating fire → Biomass accumulation → Excessive water consumption 
  → **Complete water depletion**
- Lesson: **Controlled fire is ecologically necessary** to prevent 
  vegetation from monopolizing water resources


## 🛠️ Technologies

### Model Implementation
- **NetLogo 6.4.0**: Agent-based modeling platform
- **Model type**: System dynamics (stock-and-flow)

### Data Analysis
- **R 4.5.0+**
- **Packages**:
  - `randomForest`: Sensitivity analysis meta-model
  - `ggplot2`: Visualization

## 🔍 Ecological Insights

### Lesson 1: Non-linear Thresholds
Small changes in fire frequency can trigger regime shifts in water availability, demonstrating threshold behavior in savanna ecosystems.

### Lesson 2: Trade-offs in Management
- **No fire** → More biomass BUT water crisis
- **Controlled fire** → Reduced biomass BUT stable water-vegetation balance
- **Conclusion**: Intermediate disturbance optimal

### Lesson 3: Poaching as Primary Threat
Despite complex ecological interactions, direct anthropogenic pressure (poaching) remains the most controllable and impactful factor for wildlife conservation.

## 🔮 Future Directions

### Model Extensions
- Add **soil water storage compartment** for hydrological realism
- Include **seasonal dynamics** (wet/dry season oscillations)
- Model **spatial heterogeneity** (different habitat patches)
- Integrate **other herbivore species** for guild interactions

### Improved Parameterization
- Field data from Pendjari (camera traps, water monitoring)
- Remote sensing for biomass estimates (NDVI time series)
- Empirical water use efficiency measurements

### Policy Simulation
- Cost-benefit analysis of anti-poaching patrols
- Optimal fire rotation schedules
- Climate change scenarios (reduced precipitation)

## 📧 Contact

Boris Camille FAGBEDJI  
Email: camillefagbedji69@gmail.com  

---

## 🤝 Acknowledgments

This project was completed as part of a group assignment for the Systemic Modeling course. I specifically contributed the sensitivity analysis framework and statistical evaluation of scenario outcomes.

---

## 📝 Note on Collaboration

This work represents a **collective effort** by our class team. The NetLogo model structure was designed collaboratively, while I took ownership of the post-simulation analysis using Random Forest meta modeling to quantify parameter sensitivities. This README focuses on the analytical components I developed independently.
