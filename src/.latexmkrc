# directory setting
$do_cd = 1;
$out_dir = '.';
$emulate_aux = 1;
$aux_dir = ".tex_intermediates";

# latex setting
$latex = 'uplatex -interaction=nonstopmode -file-line-error -halt-on-error -synctex=1 %O %S';
$bibtex = 'upbibtex %O %B';
$dvipdf = 'dvipdfmx %O -o %D %S';
$makeindex = 'upmendex %O -o %D %S -s jpbase';
$max_repeat = 10;
$pdf_mode = 3;
