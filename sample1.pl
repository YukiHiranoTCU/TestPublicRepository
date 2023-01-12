#!/usr/bin/perl
#
# KMyacc parser prototype file for perl.
# This file is public domain.


# perl program part1



$YYERRTOK = 256;
$NUM = 257;
$IDENTIFIER = 258;





@yytranslate = (
      0,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
      8,    9,    6,    4,   10,    5,   10,    7,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,   10,   10,   10,   10,
     10,   10,   10,   10,   10,   10,    1,    2,    3
  );

$YYBADCH = 10;
$YYMAXLEX = 259;
$YYTERMS = 10;
$YYNONTERMS = 5;

@yyaction = (
     21,   22,    0,    2,    3,   20,    1,    4,    5
  );

$YYLAST = 9;

@yycheck = (
      2,    3,    0,    4,    5,    9,    8,    6,    7
  );

@yybase = (
     -2,   -2,   -2,   -2,   -2,   -2,   -4,   -1,    1,    1,
      1,    2,    0,    0,    0,    0,    0,    0,   -1
  );

$YY2TBLSTATE = 7;

@yydefault = (
  32767,32767,32767,32767,32767,32767,32767,    1,    4,    2,
      3,32767
  );



@yygoto = (
      9,   10,    6,   17,   18
  );

$YYGLAST = 5;

@yygcheck = (
      3,    3,    2,    4,    4
  );

@yygbase = (
      0,    0,    1,   -2,   -1
  );

@yygdefault = (
  -32768,   11,    7,    8,   19
  );

@yylhs = (
      0,    1,    2,    2,    2,    3,    3,    3,    4,    4,
      4
  );

@yylen = (
      1,    1,    3,    3,    1,    3,    3,    1,    3,    1,
      1
  );

$YYSTATES = 18;
$YYNLSTATES = 12;
$YYINTERRTOK = 1;
$YYUNEXPECTED = 32767;
$YYDEFAULT = -32766;

sub yyparse {
    my @yyastk = {};
    my @yysstk = {};

    my ($yyn, $yyl);
    my $yystate = 0;
    my $yychar = -1;
    my $yysp = 0;
    my $yyerrflag = 0;

    $yysstk[$yysp] = 0;
    for (;;) {
        if ($yybase[$yystate] == 0) {
	    $yyn = $yydefault[$yystate];
	} else {
	    if ($yychar < 0) {
		$yychar = &yylex();
		$yychar = 0 if ($yychar <= 0);
		$yychar = $yychar < $YYMAXLEX ? $yytranslate[$yychar] : $YYBADCH;
            }
	    if ((($yyn = $yybase[$yystate] + $yychar) >= 0
		 && $yyn < $YYLAST && $yycheck[$yyn] == $yychar
		 || ($yystate < $YY2TBLSTATE
		     && ($yyn = $yybase[$yystate + $YYNLSTATES] + $yychar) >= 0
		     && $yyn < $YYLAST && $yycheck[$yyn] == $yychar))
		&& ($yyn = $yyaction[$yyn]) != $YYDEFAULT) {

		if ($yyn > 0) {
		    # shift

		    $yysp++;

		    $yysstk[$yysp] = $yystate = $yyn;
		    $yyastk[$yysp] = $yylval;
		    $yychar = -1;
          
		    $yyerrflag-- if ($yyerrflag > 0);
			
		    next if ($yyn < $YYNLSTATES);
            
		    # yyn >= YYNLSTATES means shift-and-reduce
		    $yyn -= $YYNLSTATES;
		} else {
		    $yyn = -$yyn;
		}
	    } else {
		$yyn = $yydefault[$yystate];
	    }
	}

	for (;;) {
	    # reduce/error
	    if ($yyn == 0) {
		# accept
		return 0;
	    }
	    elsif ($yyn != $YYUNEXPECTED) {
		# reduce
		$yyl = $yylen[$yyn];
		$yyval = $yyastk[$yysp-$yyl+1];
		# Following line will be replaced by reduce actions
		switch: {
		    goto ((
			   'defact',
			   'act1',
			   'act2',
			   'act3',
			   'act4',
			   'act5',
			   'act6',
			   'act7',
			   'act8',
			   'act9',
			   'act10',
			   '')[$yyn]);
		act1: {$yyval = $yyastk[$yysp-(1-1)];} last switch;
		act2: {$yyval = $yyastk[$yysp-(3-1)] + $yyastk[$yysp-(3-3)];} last switch;
		act3: {$yyval = $yyastk[$yysp-(3-1)] - $yyastk[$yysp-(3-3)];} last switch;
		act4: {$yyval = $yyastk[$yysp-(1-1)];} last switch;
		act5: {$yyval = $yyastk[$yysp-(3-1)] * $yyastk[$yysp-(3-3)];} last switch;
		act6: {$yyval = $yyastk[$yysp-(3-1)] / $yyastk[$yysp-(3-3)];} last switch;
		act7: {$yyval=$yyastk[$yysp-(1-1)];} last switch;
		act8: {$yyval=$yyastk[$yysp-(3-2)];} last switch;
		act9: {$yyval=$yyastk[$yysp-(1-1)];} last switch;
		act10: {$yyval=$yyastk[$yysp-(1-1)];} last switch;
		defact: last switch;
		}
		# Goto - shift nonterminal
		$yysp -= $yyl;
		$yyn = $yylhs[$yyn];
		if (($yyp = $yygbase[$yyn] + $yysstk[$yysp]) >= 0
		    && $yyp < $YYGLAST && $yygcheck[$yyp] == $yyn) {
		    $yystate = $yygoto[$yyp];
		} else {
    		    $yystate = $yygdefault[$yyn];
		}
          
		$yysp++;

		$yysstk[$yysp] = $yystate;
	        $yyastk[$yysp] = $yyval;
	    }
	    else {
		# error
		if ($yyerrflag == 3) {
		    if ($yychar == 0) { return 1; }
		    $yychar = -1;
		} else {
		    if ($yyerrflag == 0) {
			&yyerror("syntax error");
		    }
		    $yyerrflag = 3;
		    # Pop until error-expecting state uncovered
		    while (!(($yyn = $yybase[$yystate] + $YYINTERRTOK) >= 0
			      && $yyn < $YYLAST && $yycheck[$yyn] == $YYINTERRTOK
			      || ($yystate < $YY2TBLSTATE
				  && ($yyn = $yybase[$yystate + $YYNLSTATES] + $YYINTERRTOK) >= 0
				  && $yyn < $YYLAST && $yycheck[$yyn] == $YYINTERRTOK))) {
			if ($yysp <= 0) { return 1; }
			$yystate = $yysstk[--$yysp];
		    }
		    $yyn = $yyaction[$yyn];
		    $yysstk[++$yysp] = $yystate = $yyn;
		}
	    }
	    last if ($yystate < $YYNLSTATES);
	    # >= $YYNLSTATES means shift-and-reduce
	    $yyn = $yystate - $YYNLSTATES;
	}
    }
    die "Cannot happen: control reached here.\n";
}



# perl program part2


sub yyerror
{
    my ($msg) = @_;
    print "$msg\n";
    exit();
}

my $code;
my @tokens=();
sub yylex
{
    # this function set $yylval and return token id
    # tokens are '+'  '*'  '('  ')'  NUM  IDENTIFIER
    print($code);
    if(@tokens == 0)
    {
        # End of tokens
        $yylval=undef;
        return 0;
    }
    else
    {
        my $token;
        $token = shift @tokens;
        if($token eq '+'){$yylval = '?'; return ord('+');}
        elsif($token eq '-'){$yylval = '?'; return ord('-');}
        elsif($token eq '*'){$yylval = '?'; return ord('*');}
        elsif($token eq '/'){$yylval = '?'; return ord('/');}
        elsif($token eq '(' ){$yylval = '?'; return ord( '(' );}
        elsif($token eq ')' ){$yylval = '?'; return ord( ')' );}
        elsif($token=~/^\d+$/ ){$yylval = 0+$token; return $NUM;}
        elsif($token=~/^\w+$/ ){$yylval = 100; return $IDENTIFIER;}
        else{die "Error: illegal token '$token'!\n";}
    }
}

sub separator
{
    my $i = 0;
    my $sentence = 0;#連続した文字を判定するふらぐ
    while($i < length($code)){
	    my ($word) = substr($code,$i,1);

        if ($word =~ /^[0-9\w]+$/){
            if($sentence){
                $tokens[$#tokens].=$word;
            }else{
                push(@tokens,$word);
                $sentence = 1;
            }
        }else{
            $sentence = 0;#ノード名の連続を終了
            if ($word eq "+"){
                push(@tokens,"+");
            }elsif ($word eq "-"){
                push(@tokens,"-");
            }elsif ($word eq "*"){
                push(@tokens,"*");
            }elsif ($word eq "/"){
                push(@tokens,"/");
            }elsif ($word eq "("){
                push(@tokens,"\\(");
            }elsif ($word eq ")"){
                push(@tokens,"\\)");
            }else{
                #スペース等
                #なにもしない
            }
        }
    	$i++;
    }
    #デバッグ用出力
    print("@tokens");
}

sub main
{
    my $result;

    $code = <STDIN>;
    separator($code);
    $result=&yyparse();
    if($result != 0){ die "Parse failed!\n"; }

    print "Parse success!\n";
    print "Ans= $yyval\n";
}
&main();

