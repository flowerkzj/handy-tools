#!/usr/bin/awk -f

BEGIN {
    if (length(sample) == 0) {
        print "variable sample is not defined" > "/dev/stderr";
        exit;
    }
    FS = "\t";
    srand(systime())
}

{
    if (NR <= sample) {
        ret[NR - 1] = $0;
    } else {
        if (int(rand() * NR) < sample) {
            ret[int(rand() * sample)] = $0;
        }
    }
}

END {
    for (i in ret) {
        print ret[i];
    }
}


