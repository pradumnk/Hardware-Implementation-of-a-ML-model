transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/multiplier_fp_32bit.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/add_fp_32bit.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/float32_fixed32.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/fixed32_float32.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/address_generator.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/activation_function_FixedPt32.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/ann_architecture.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/WeightsLayer01.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/WeightsLayer12.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/BiasesLayer01.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/BiasesLayer12.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/ip2.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier/db {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/db/mult_ncs.v}
vlog -vlog01compat -work work +incdir+D:/Documents/Quartus\ Projects/EE705_Project2_ImageClassifier/db {D:/Documents/Quartus Projects/EE705_Project2_ImageClassifier/db/mult_ll01.v}

