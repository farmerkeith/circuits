# Circuits

This repository is a place where I will be putting elementary circuit designs with simulated performance charts. 

The first item is a MOSFET diode with a control circuit made from discrete components. See the file MOSFETdiode.odt for the report. I intend to analyse control circuits using an operational amplifier and the special-purpose IC LTC4412.

The second item is a study of current shunt amplifier circuits, the first made from discrete components. See the file currenShuntAmplifier.odt for the report so far. I also intend to look at operational amplifiers, Hall effect devices and current splitting MOSFETs. 

1 May 2018 Added another discrete component amplifier with emitter resistors that gives a greater current range and a more linear response especially for positive currents.

7 May 2018 Added more to the overview, and a spreadsheet analysis of the discrete component amplifier with emitter resistor. It enables better insight into the design sensitivities. Spice simulation required.

8 May 2018. Started spice simulation of discrete component amplifier from spreadsheet. Spice and the spreadsheet model disagree a lot, trying to work out why. 

9 May 2018. Completed spice simulation of discrete component amplifier and adjusted sspreadsheet to line up. Concluded this design is too fragile for real use. 

10 May 2018. Completed spice simulation and spreadsheet support for Unidirectional current shunt amplifier using op amp AD822AN. Results are within 1 lsb accuracy for a 10 bit ADC with exact component selection and calibration. More general component selection can be used with software calibration which will give good results but a bit less accuracy.

10 May 2018. Completed spice simulation and spreadsheet support for bidirectional current shunt amplifier using op amp AD822AN. Results are within 1 lsb accuracy for a 10 bit ADC with exact component selection and calibration. More general component selection can be used with software calibration which will give good results but a bit less accuracy.
