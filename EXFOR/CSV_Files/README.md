# Dataset Description (Building)


For both the target and product metastable state there where some transformations to make the table more verbose: The same transformation was applied to both. The transform dictionary is as follow:

```python
{
    " ": "All_or_Total", # MISSING VALUE TAG
    "G": "Ground", 
    "1": "M1", 
    "2": "M2", 
    "3": "M3", 
    "4": "M4", 
    "5": "M5", 
    "?": "Unknown", 
    "+": "More_than_1", 
    "T": "All_or_Total"
}
```

Similary, the exfor status feature was subject to a transformation.

```python
{
    "U":"Un_normalized", 
    "A":"Approved_by_Author", 
    "C":"Correlated", 
    "D":"Dependent", 
    "O":"Outdated", 
    "P":"Preliminary", 
    "R":"Re_normalized", 
    "S":"Superseded", 
    " ":"Other" # MISSING VALUE TAG
}
```

for the center of mass flag:

```python
{
    "C":"Center_of_Mass", 
    " ":"Lab"} # MISSING VALUE 
```

for the I78 field:

```python
{
    "E2":"Secondary_Energy", 
    "LVL":"Level", 
    "HL":"Half_Life", 
    "DLV":"Level_Range", 
    "EXC":"Excitation", 
    "DE2":"Secondary_Energy_Range", 
    "MIN":"Minimum_Energy", 
    "MAX":"Maximum_Energy", 
    "":"Other" # MISSING VALUE TAG
}
```

There where a couple of experiment/rows where some basic information was not extracted either because it was missing or it was not avaliable for extraction.


- Title N/A Tag: "No Title Found. Check EXFOR."
- Reference N/A Tag: "No Reference Found. Check EXFOR."
- Short_Reference N/A Tag: "No Reference Found. Check EXFOR."
- Reference_Code N/A Tag: "No Reference Code Found. Check EXFOR."
- Author N/A Tag: "No Author Found. Check EXFOR."
- EXFOR_Pointer N/A Tag: "No Pointer"

In the AME appended version of the EXFOR database one more feature was created named `Element_Flag` which identifies rows where experiments are taken in isotopic samples or natural samples. 

(6007126, 38)

The imputed EXFOR data version was made with a special purpose: My personal PhD dataset template. It uses a custom AME2016 version of the dataset that was engineered to fill missing values and created natural ocurring element data approximations using linear interpolation. See the AME2016 NucML documentation for more informaiton. 

On thing is that we eliminated the natural water/molecular cross section measurements at all 

6007126 - X = 6006239

Since my work was primarly on neutorn induce reactions the first transforation was to keep only MF=3 rows.

6006239 - X = 4644791

This meant dropping the MF row after the filtration and the Cos/LO, dCos/LO features. The only missing values belonged to the ['dEnergy', 'dData', 'ELV/HL', 'dELV/HL'] features. Unfortunately there is no standard way to impute these features and therefore will affect the model capabilities of providing uncertainty in it's calculations. To impute these values the following framework was followed. 

1. We divided the Uncertainty by the actual Value (i.e. dEnergy/Energy)
2. We then grouped by Reaction Channel and filled the missing vaues using he groups mean.
3. For the remaining missing values we group by Institute and filled using the institute means.
4. Then we grouped by Isotope,
5. Then by I78,

Afterwards all missing values where filled and the new uncertainity where use to derive the final uncertainities by multiplying times the original feature. 

You may notice that two new features where also included in my dataset. The Nucleus radius and the neutron to nucleon radius ration. 

```python
df["Nucleus_Radius"] = 1.25 * np.power(df["A"], 1/3)
df["Neutron_Nucleus_Radius_Ratio"] = 0.8 / df["Nucleus_Radius"]
```

Additionally all rows containing the word tag `RAW` in the Reaction Notation field where dropped. 

4644791 - 311512 = 4333279

Then we dropped all rows where the cross sectionv alue is 0.

4333279 - X = 4255409 