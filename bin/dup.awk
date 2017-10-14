#!/bin/awk -f

BEGIN {
    pre="";
    count = 0;
    res = "";
    leng = -1;
    if (length(field) == 0) {
        field = 1
    }
}
{
    if (pre != "" && pre != $field) {
        if (count > 1)
            print res;
        res = "";
        count = 0;
        leng = -1;
    }
    pre = $field;
    res = res""$0"\n";
    count++;
}
END {
    if (count > 1)
        print res;
}
