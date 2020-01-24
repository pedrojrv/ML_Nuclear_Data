# Task Understanding

It is the intent of this projet to develop an algorithm for cross section predictions. Through this journey we are testign several ML models with different parameteres/hyperparameters. Cross sections data is used in every aspect of nuclear sciences. It describes the probability that a particular reaction channel will occurr. It is normaly used in monte carlo and deterministic codes to simulate a particular assembly. The accuracy of such models depend to a high degree on the cross section data used. Througout the years there have been a variety of experimental campaings that aim to calculate cross section data for many elements/isotopes. This campagins require sometimes extensive resources and calculating data for each existing isotope is unfeasiable/imposible. While there are physical reaction models that are used in tools like EMPIRE and TALLY which use theory to try and predict cross section data in unevaluated energy zones, it is known that some of these are innaccurate in the order of 5 or more. Motivated by this, and due to the avaliable computational power nowdays, we seek to use Machine Learning to try and come up with a model that will help us guide cross section data evaluations. 

# What factors influence cross section values?

There are a variety of independent variables that are known to have a role in cross section data. Some obvious ones like number of protons and neutrons, and some other not so obvious like energy levels, and parities/spins. Therefore the first phase of this project consists on gathering data that may help the model provide more accurate predictions. 

# Data Sources

We are using the EXFOR database to gather all experimental data avaliable. We use the 