select (madlib.linregr(arrdelayminutes, array[1,depdelayminutes])).* from faa.otp_c;

