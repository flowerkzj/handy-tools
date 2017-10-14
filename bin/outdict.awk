#!/usr/bin/awk -f

BEGIN {
    if (length(dict) == 0) {
        print "variable dict is not defined" > "/dev/stderr";
        exit;
    }
    if (length(field) == 0) {
        print "variable field is not defined" > "/dev/stderr";
        exit;
    }
    while ((getline line < dict) > 0) {
        hash[tolower(line)]
    }
    FS = "\t";
}

{
    if (!(tolower($field) in hash)) {
        print;
    }
}
