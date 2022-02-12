title "1:1 Allocation";
proc power;
twosamplefreq alpha=0.05
groupproportions = (0.15, 0.05)
groupweights = (1 1)
test=pchi
sides=2
power=0.8
ntotal=.
;
run;
title;


title "2:1 Allocation";
proc power;
twosamplefreq alpha=0.05
groupproportions = (0.15, 0.05)
groupweights = (1 2)
test=pchi
sides=2
power=0.8
ntotal=.
;
run;
title;


title "Calculate Power for 2:1 Allocation";
proc power;
twosamplemeans alpha=0.05
meandiff = 3
groupweights = (1 2)
test=diff
sides=2
power=.
stddev=8
ntotal=350
;
run;
title;



ODS HTML CLOSE;
ODS HTML;
