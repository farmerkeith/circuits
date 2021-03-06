# Circuits

This repository is a place where I will be putting elementary circuit designs with simulated performance charts. 

The first item is a MOSFET diode with a control circuit made from discrete components. See the file MOSFETdiode.odt for the report. I intend to analyse control circuits using an operational amplifier and the special-purpose IC LTC4412.

The second item is a study of current shunt amplifier circuits, the first made from discrete components. See the file currenShuntAmplifier.odt for the report so far. I also intend to look at operational amplifiers, Hall effect devices and current splitting MOSFETs. 

The third item is a study of very low dropout linear regulators made with an IRf4905 MOSFET and various control methods.

1 May 2018 Added another discrete component amplifier with emitter resistors that gives a greater current range and a more linear response especially for positive currents.

7 May 2018 Added more to the overview, and a spreadsheet analysis of the discrete component amplifier with emitter resistor. It enables better insight into the design sensitivities. Spice simulation required.

8 May 2018. Started spice simulation of discrete component amplifier from spreadsheet. Spice and the spreadsheet model disagree a lot, trying to work out why. 

9 May 2018. Completed spice simulation of discrete component amplifier and adjusted sspreadsheet to line up. Concluded this design is too fragile for real use. 

10 May 2018. Completed spice simulation and spreadsheet support for Unidirectional current shunt amplifier using op amp AD822AN. Results are within 1 lsb accuracy for a 10 bit ADC with exact component selection and calibration. More general component selection can be used with software calibration which will give good results but a bit less accuracy.

10 May 2018. Completed spice simulation and spreadsheet support for bidirectional current shunt amplifier using op amp AD822AN. Results are within 1 lsb accuracy for a 10 bit ADC with exact component selection and calibration. More general component selection can be used with software calibration which will give good results but a bit less accuracy.

11 May 2018. Bidirectional current shunt amplifier using op amp AD822AN gives a significant error when the rail voltage varies. Variation from 10 to 15 Volts produces about 50 mV variation in the output voltage, which represents about 10 lsbs and is probably the dominant source of error. Supplying the power to the op amp from a zener-defined reference improves this by a factor of about 2, so the range is about 25 mV or 5 lsb. Putting a PNP emitter follower on the zener-defined reference gives another factor of 2, reducing the range to about 12 mV. The best possible, using a simulated fixed reference, achieves about 5 mV range.  

11 May 2018. Started working on Unidirectional current shunt amplifier using op amp and BS250P MOSFET instead of BJT. Sorting out spice model for BS250P. 

12 May 2018. Added MOSFET diode for high voltages. 
Restructured the folder with separate folders for each general topic. 

25 May 2018. Started study of VLDO regulators. 

30 May 2018. Working on IR2110 driver and components for ngspice - switches and various voltage sources so far. 
  
7 June 2018. Added quite a few components with translation from KiCad netlist output to ngspice input reuirements using sed, a text editing utility program. The components and the sed script are in the NGspice folder. The sed script is called "ng" and can be found in the NGspice folder directly. This is definitely a work in progress. 

26 July 2018. I have added another MOSFET diode circuit using N-channel MOSFETS for both the main switching element and for control. I have also enhanced the interface program ng so that it has a command line option and takes file and directory parameters. Usage is documented with a -h option and its working is shown in the comments.

