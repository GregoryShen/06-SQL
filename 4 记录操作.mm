<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1491018297339" ID="ID_764131619" MODIFIED="1491018315538" TEXT="&#x8bb0;&#x5f55;&#x64cd;&#x4f5c;">
<node CREATED="1491029695944" ID="ID_1730875741" MODIFIED="1491029702724" POSITION="right" TEXT="&#x67e5;&#x627e;&#x8bb0;&#x5f55;">
<node CREATED="1491029703870" ID="ID_1499821357" MODIFIED="1491029891802">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SELECT select_expr [, select_expr ...]
    </p>
    <p>
      [
    </p>
    <p>
      &#160;&#160;&#160;&#160;FROM table_references
    </p>
    <p>
      &#160;&#160;&#160;&#160;[WHERE where_condition]
    </p>
    <p>
      &#160;&#160;&#160;&#160;[GROUP BY {col_name | position} [ASC | DESC], ...]
    </p>
    <p>
      &#160;&#160;&#160;&#160;[HAVING where_condition]
    </p>
    <p>
      &#160;&#160;&#160;&#160;[ORDER BY {col_name | expr | position} [ASC | DESC],...]
    </p>
    <p>
      &#160;&#160;&#160;&#160;[LIMIT {[offset,] row_count | row_count OFFSET offset}]
    </p>
    <p>
      ]
    </p>
  </body>
</html></richcontent>
<node CREATED="1491029915014" ID="ID_1009211277" MODIFIED="1491030356916" TEXT="&#x67e5;&#x8be2;&#x8868;&#x8fbe;&#x5f0f; select_expr">
<node CREATED="1491030358765" HGAP="21" ID="ID_1474008512" MODIFIED="1525883047694" VSHIFT="1">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#27599;&#19968;&#20010;&#34920;&#36798;&#24335;&#34920;&#31034;&#24819;&#35201;&#30340;&#19968;&#21015;&#65292;&#24517;&#39035;&#26377;&#33267;&#23569;&#19968;&#20010;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1525882991083" ID="ID_1233915182" MODIFIED="1525883050533" TEXT="&#x591a;&#x4e2a;&#x5217;&#x4e4b;&#x95f4;&#x4ee5;&#x82f1;&#x6587;&#x9017;&#x53f7;&#x5206;&#x9694;">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1525883002938" ID="ID_1159477000" MODIFIED="1525883052925" TEXT="&#x661f;&#x53f7;&#xff08;*&#xff09;&#x8868;&#x793a;&#x6240;&#x6709;&#x5217;&#xff0c;tbl_name.*&#x53ef;&#x4ee5;&#x8868;&#x793a;&#x547d;&#x540d;&#x8868;&#x7684;&#x6240;&#x6709;&#x5217; ">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1525883016826" ID="ID_786646904" MODIFIED="1525883055093" TEXT="&#x67e5;&#x8be2;&#x8868;&#x8fbe;&#x5f0f;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;[AS]alias_name&#x4e3a;&#x5176;&#x8d4b;&#x4e88;&#x522b;&#x540d; &#x522b;&#x540d;&#x53ef;&#x7528;&#x4e8e;GROUP BY, ORDER BY&#x6216;HAVING&#x5b50;&#x53e5;">
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1525882936835" ID="ID_940877384" MODIFIED="1525883063678" TEXT="&#x67e5;&#x8be2;&#x8868;&#x8fbe;&#x5f0f;&#x7684;&#x987a;&#x5e8f;&#x5c06;&#x5f71;&#x54cd;&#x7ed3;&#x679c;&#x7684;&#x987a;&#x5e8f;&#xff0c;&#x5b57;&#x6bb5;&#x7684;&#x522b;&#x540d;&#x4e5f;&#x5c06;&#x5f71;&#x54cd;&#x7ed3;&#x679c;&#x96c6;">
<icon BUILTIN="stop"/>
<node CREATED="1525883067994" ID="ID_438511892" MODIFIED="1525883101734" TEXT="SELECT  id AS userId, username AS uname FROM users;"/>
<node CREATED="1525883110680" ID="ID_832321061" MODIFIED="1525883191966" TEXT="AS &#x4e5f;&#x53ef;&#x4ee5;&#x4e0d;&#x5199;&#xff0c;&#x4f46;&#x5efa;&#x8bae;&#x662f;&#x5199;&#xff0c;&#x4e0d;&#x7136;&#x5f53;&#x522b;&#x540d;&#x548c;&#x6570;&#x636e;&#x8868;&#x4e2d;&#x5b57;&#x6bb5;&#x540d;&#x91cd;&#x540d;&#x65f6;&#x4f1a;&#x51fa;&#x9519;"/>
</node>
</node>
</node>
</node>
<node CREATED="1491040130730" ID="ID_182942996" MODIFIED="1491040136165" POSITION="right" TEXT="&#x6761;&#x4ef6;&#x8868;&#x8fbe;&#x5f0f;">
<node CREATED="1491040137278" ID="ID_1519388433" MODIFIED="1491040154116" TEXT="&#x5bf9;&#x8bb0;&#x5f55;&#x8fdb;&#x884c;&#x8fc7;&#x6ee4;&#xff0c;&#x5982;&#x679c;&#x6ca1;&#x6709;&#x6307;&#x5b9a;WHERE&#x5b50;&#x53e5;&#xff0c;&#x5219;&#x663e;&#x793a;&#x6240;&#x6709;&#x8bb0;&#x5f55;"/>
<node CREATED="1491040156406" ID="ID_744037781" MODIFIED="1491040173910" TEXT="&#x5728;WHERE&#x8868;&#x8fbe;&#x5f0f;&#x4e2d;&#xff0c;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;MySQL&#x652f;&#x6301;&#x7684;&#x51fd;&#x6570;&#x6216;&#x8fd0;&#x7b97;&#x7b26;"/>
</node>
<node CREATED="1491040263513" ID="ID_1168419871" MODIFIED="1491040267633" POSITION="right" TEXT="&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x5206;&#x7ec4;">
<node CREATED="1491040268622" ID="ID_574863816" MODIFIED="1491040310775" TEXT="[GROUP BY {col_name | position} [ASC | DESC],...]"/>
<node CREATED="1491040481898" ID="ID_998535640" MODIFIED="1491040551493" TEXT="&#x9ed8;&#x8ba4;&#x662f;&#x5347;&#x5e8f;&#xff0c;position&#x662f;&#x6307;&#x5728;select &#x4e2d;&#x9009;&#x62e9;&#x7684;&#x5b57;&#x6bb5;&#x7684;&#x4f4d;&#x7f6e;&#xff0c;&#x4ece;1&#x5f00;&#x59cb;(&#x4f46;&#x4e0d;&#x63a8;&#x8350;&#x8fd9;&#x4e48;&#x505a;)"/>
</node>
<node CREATED="1491040520440" ID="ID_678202670" MODIFIED="1491040523127" POSITION="right" TEXT="&#x5206;&#x7ec4;&#x6761;&#x4ef6;">
<node CREATED="1491040525036" ID="ID_1629116999" MODIFIED="1491040539509" TEXT="[HAVING where_condition]"/>
<node CREATED="1525883616813" ID="ID_1935417218" MODIFIED="1525883658491" TEXT="&#x4f7f;&#x7528;having&#x65f6;&#x8981;&#x4e48;&#x4fdd;&#x8bc1;&#x6761;&#x4ef6;&#x662f;&#x4e00;&#x4e2a;&#x805a;&#x5408;&#x51fd;&#x6570;&#x8981;&#x4e48;&#x4fdd;&#x8bc1;&#x5b57;&#x6bb5;&#x51fa;&#x73b0;&#x5728;&#x67e5;&#x8be2;&#x8868;&#x8fbe;&#x5f0f;&#x4e2d;"/>
<node CREATED="1525883659766" ID="ID_461946944" MODIFIED="1525883692972" TEXT="&#x5982;&#xff1a;SELECT sex FROM users GROUP BY 1 HAVING age&gt;35;&#x8fd9;&#x4e48;&#x5199;&#x662f;&#x4e0d;&#x5bf9;&#x7684;"/>
<node CREATED="1525883694287" ID="ID_1160673081" MODIFIED="1525883839120" TEXT="&#x8981;&#x4e48;&#x662f;&#xff1a;SELECT sex FROM users GROUP BY 1 HAVING count(id)&gt;=2;"/>
<node CREATED="1525883730092" ID="ID_900654943" MODIFIED="1525883779690" TEXT="&#x8981;&#x4e48;&#x662f;&#xff1a;SELECT  sex,age FROM users GROUP BY 1 HAVING age&gt;35;"/>
<node CREATED="1531645597490" ID="ID_1335152154" MODIFIED="1531645666067" TEXT="&#x6240;&#x8c13;&#x805a;&#x5408;&#x51fd;&#x6570;&#x7684;&#x610f;&#x4e49;&#x662f;max/min/avg/sum&#x7b49;&#xff0c;&#x56e0;&#x4e3a;&#x4ed6;&#x4eec;&#x6c38;&#x8fdc;&#x53ea;&#x6709;&#x4e00;&#x4e2a;&#x8fd4;&#x56de;&#x7ed3;&#x679c;"/>
</node>
<node CREATED="1525883881627" ID="ID_1305123744" MODIFIED="1525883889113" POSITION="right" TEXT="&#x5bf9;&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x8fdb;&#x884c;&#x6392;&#x5e8f;">
<node CREATED="1525883891085" ID="ID_1394276706" MODIFIED="1525883940231" TEXT="[ORDER BY {col_name | expr | position} [ASC|DESC],...]" VSHIFT="2"/>
<node CREATED="1525884089267" ID="ID_908705956" MODIFIED="1525884135135" TEXT="&#x4ee5;&#x5355;&#x4e2a;&#x5b57;&#x6bb5;&#x6392;&#x5e8f;&#x4f8b;&#xff1a;SELECT * FROM users ORDER BY id DESC;"/>
<node CREATED="1525884136226" ID="ID_1427040360" MODIFIED="1525884280095" TEXT="&#x4ee5;&#x591a;&#x4e2a;&#x5b57;&#x6bb5;&#x6392;&#x5e8f;&#x65f6;&#xff0c;&#x9996;&#x5148;&#x770b;&#x7b2c;&#x4e00;&#x4e2a;&#x5b57;&#x6bb5;&#x80fd;&#x5426;&#x6392;&#x6210;&#x4f60;&#x60f3;&#x8981;&#x7684;&#x7ed3;&#x679c;&#xff0c;&#x5982;&#x679c;&#x53ef;&#x4ee5;&#x5219;&#x76f4;&#x63a5;&#x5ffd;&#x7565;&#x540e;&#x9762;&#x5b57;&#x6bb5;&#xff0c;&#x5982;&#x679c;&#x4e0d;&#x884c;&#x518d;&#x770b;&#x540e;&#x9762;&#x7684;&#x5b57;&#x6bb5;"/>
<node CREATED="1525884194106" ID="ID_666322114" MODIFIED="1525884247302" TEXT="&#x4f8b;&#xff1a;SELECT * FROM users ORDER BY age, id DESC;"/>
</node>
<node CREATED="1525884319834" ID="ID_1235297203" MODIFIED="1525884334991" POSITION="right" TEXT="&#x9650;&#x5236;&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x8fd4;&#x56de;&#x7684;&#x6570;&#x91cf;">
<node CREATED="1525884336361" ID="ID_1701538369" MODIFIED="1525884370405" TEXT=" [LIMIT {[offset,] row_count | row_count OFFSET offset}]"/>
<node CREATED="1525884568440" ID="ID_1831316607" MODIFIED="1525884614676" TEXT="&#x4f8b;&#xff1a;SELECT * FROM  users LIMIT 2; &#x8868;&#x793a;&#x4ece;&#x6240;&#x67e5;&#x8be2;&#x7684;&#x7ed3;&#x679c;&#x96c6;&#x4e2d;&#x8fd4;&#x56de;&#x5934;&#x4e24;&#x4e2a;&#x7ed3;&#x679c;"/>
<node CREATED="1525884615638" ID="ID_1323529573" MODIFIED="1525884681707" TEXT="SELECT * FROM users LIMIT 2,2; &#x8868;&#x793a;&#x4ece;&#x7ed3;&#x679c;&#x96c6;&#x4e2d;&#x8fd4;&#x56de;&#x4ece;&#x7b2c;&#x4e09;&#x4e2a;&#x5f00;&#x59cb;&#xff0c;&#x8fd4;&#x56de;&#x4e24;&#x4e2a;&#x7ed3;&#x679c;"/>
</node>
<node CREATED="1491018316496" HGAP="39" ID="ID_237586843" MODIFIED="1525882344195" POSITION="left" TEXT="&#x63d2;&#x5165;&#x8bb0;&#x5f55;" VSHIFT="-46">
<node CREATED="1491018329388" ID="ID_726469661" MODIFIED="1533653891931" TEXT="INSERT [INTO] tbl_name[(col_name,...)] {VALUES|VALUE} ({expr | DEFAULT},...),(...),...">
<node CREATED="1531641717616" ID="ID_742697640" MODIFIED="1531641747954" TEXT="&#x5b57;&#x6bb5;&#x4e4b;&#x95f4;&#x4ee5;&#x9017;&#x53f7;&#x5206;&#x9694;&#xff0c;&#x591a;&#x6761;&#x8bb0;&#x5f55;&#x4e4b;&#x95f4;&#x4ee5;&#x9017;&#x53f7;&#x6765;&#x5206;&#x9694;"/>
<node CREATED="1531641912005" ID="ID_1117188937" MODIFIED="1531641914815" TEXT="&#x5f53;&#x4e3a;&#x81ea;&#x589e;&#x5b57;&#x6bb5;&#x8d4b;&#x503c;&#x65f6;&#xff0c;&#x53ef;&#x4ee5;&#x7528;NULL&#x6216;DEFAULT "/>
<node CREATED="1525880047407" ID="ID_298379243" MODIFIED="1525880071685" TEXT="&#x4e3a;&#x6709;&#x9ed8;&#x8ba4;&#x503c;&#x7684;&#x5b57;&#x6bb5;&#x8d4b;&#x503c;&#x65f6;&#xff0c;&#x53ef;&#x4ee5;&#x76f4;&#x63a5;&#x5199;&#x9ed8;&#x8ba4;&#x503c;&#x6216;DEFAULT"/>
<node CREATED="1525877409239" ID="ID_1298218333" MODIFIED="1525877429191" TEXT="&#x5982;&#x679c;&#x7701;&#x7565;&#x5217;&#x540d;&#x90a3;&#x4e48;&#x5c31;&#x8981;&#x4e3a;&#x6bcf;&#x4e2a;&#x5b57;&#x6bb5;&#x4f9d;&#x6b21;&#x8d4b;&#x503c;"/>
<node CREATED="1525877490309" ID="ID_1570682991" MODIFIED="1525880032263" TEXT="&#x5b57;&#x6bb5;&#x8d4b;&#x7684;&#x503c;&#x4e0d;&#x4ec5;&#x53ef;&#x4ee5;&#x662f;&#x76f4;&#x63a5;&#x7684;&#x6570;&#x636e;&#x7c7b;&#x578b;&#x8fd8;&#x53ef;&#x4ee5;&#x662f;&#x6570;&#x5b66;&#x8868;&#x8fbe;&#x5f0f;&#xff0c;&#x5b57;&#x7b26;&#x8868;&#x8fbe;&#x5f0f;&#x6216;&#x51fd;&#x6570;&#xff08;md5()&#xff09;&#x7b49;"/>
</node>
<node CREATED="1491027858150" HGAP="22" ID="ID_1610948909" MODIFIED="1525876979444" TEXT="INSERT [INTO] tbl_name SET col_name={expr | DEFAULT},..." VSHIFT="2">
<node CREATED="1491027903231" ID="ID_529909244" MODIFIED="1491027927730" TEXT="&#x4e0e;&#x7b2c;&#x4e00;&#x79cd;&#x65b9;&#x5f0f;&#x7684;&#x533a;&#x522b;&#x5728;&#x4e8e;&#xff0c;&#x6b64;&#x65b9;&#x6cd5;&#x53ef;&#x4ee5;&#x4f7f;&#x7528;&#x5b50;&#x67e5;&#x8be2;"/>
<node CREATED="1491027988565" ID="ID_681079135" MODIFIED="1491028008310" TEXT="&#x7b2c;&#x4e00;&#x79cd;&#x65b9;&#x6cd5;&#x53ef;&#x4ee5;&#x4e00;&#x6b21;&#x6027;&#x63d2;&#x5165;&#x591a;&#x6761;&#x8bb0;&#x5f55;&#xff0c;&#x6b64;&#x65b9;&#x6cd5;&#x53ea;&#x80fd;&#x63d2;&#x5165;&#x4e00;&#x6761;"/>
</node>
<node CREATED="1491028391566" ID="ID_1014416773" MODIFIED="1491028417896" TEXT="INSERT [INTO] tbl_name [(col_name,...)] SELECT...">
<node CREATED="1491028419457" ID="ID_293542480" MODIFIED="1525881377593" TEXT="&#x6b64;&#x65b9;&#x6cd5;&#x53ef;&#x4ee5;&#x5c06;&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x63d2;&#x5165;&#x5230;&#x6307;&#x5b9a;&#x6570;&#x636e;&#x8868;" VSHIFT="2"/>
<node CREATED="1525885193245" ID="ID_1122095663" MODIFIED="1525885213097" TEXT="&#x4f8b;&#xff1a;INSERT test(username) SELECT username FROM users WHERE age&gt;=30;"/>
<node CREATED="1525885223875" ID="ID_332015624" MODIFIED="1525885240464" TEXT="&#x6ce8;&#x610f;&#x8981;&#x63d2;&#x5165;&#x7684;&#x8868;&#x7684;&#x5b57;&#x6bb5;&#x548c;&#x67e5;&#x8be2;&#x51fa;&#x6765;&#x7684;&#x5b57;&#x6bb5;&#x6570;&#x91cf;&#x8981;&#x5bf9;&#x5e94;"/>
</node>
</node>
<node CREATED="1491028508732" HGAP="29" ID="ID_624228560" MODIFIED="1525882346818" POSITION="left" TEXT="&#x66f4;&#x65b0;&#x8bb0;&#x5f55;&#xff08;&#x5355;&#x8868;&#x66f4;&#x65b0;&#xff09;" VSHIFT="-44">
<node CREATED="1491028519187" HGAP="21" ID="ID_1175858141" MODIFIED="1525882391068" TEXT="UPDATE [LOW_PRIORITY] [IGNORE] table_reference SET col_name1={expr1|DEFAULT} [,col_name2={expr2|DEFAULT}]...[WHERE where_condition]" VSHIFT="-7"/>
<node CREATED="1531639883675" ID="ID_922276069" MODIFIED="1531639918706" TEXT="&#x8fd8;&#x6709;&#x4e00;&#x79cd;&#x591a;&#x8868;&#x66f4;&#x65b0;&#x8981;&#x5728;&#x5b66;&#x4e60;&#x5b8c;&#x8fde;&#x63a5;&#x540e;&#x624d;&#x53ef;&#x4ee5;"/>
<node CREATED="1531639927298" ID="ID_1243205924" MODIFIED="1531639975336" TEXT="&#x5982;&#x679c;&#x7701;&#x7565;where&#x6761;&#x4ef6;&#x5c06;&#x5bfc;&#x81f4;&#x6240;&#x6709;&#x8bb0;&#x5f55;&#x90fd;&#x66f4;&#x65b0;"/>
<node CREATED="1525881982427" ID="ID_1416852194" MODIFIED="1525882176155" TEXT="&#x66f4;&#x65b0;&#x5185;&#x5bb9;&#x4e3a;&#x8868;&#x8fbe;&#x5f0f;&#x7684;&#x4f8b;&#xff1a;UPDATE users SET age = age +5;"/>
<node CREATED="1525882106464" ID="ID_1577642263" MODIFIED="1525882188822" TEXT="&#x66f4;&#x65b0;&#x591a;&#x5217;&#x7684;&#x4f8b;&#xff1a;UPDATE users SET age=age-id, sex=0;"/>
<node CREATED="1525882288143" ID="ID_1629322928" MODIFIED="1525882295565" TEXT="&#x5e26;&#x6761;&#x4ef6;&#x7684;&#x4f8b;&#xff1a;UPDATE users SET AGE=AGE+10 WHERE id%2=0;"/>
</node>
<node CREATED="1491029437546" ID="ID_433625425" MODIFIED="1491029446707" POSITION="left" TEXT="&#x5220;&#x9664;&#x8bb0;&#x5f55;&#xff08;&#x5355;&#x8868;&#x5220;&#x9664;&#xff09;">
<node CREATED="1491029447602" HGAP="16" ID="ID_1976143111" MODIFIED="1525882364642" TEXT="DELETE FROM tbl_name [WHERE where_condition]" VSHIFT="2"/>
<node CREATED="1531640458269" ID="ID_923634392" MODIFIED="1531640486978" TEXT="&#x793a;&#x4f8b;&#xff1a;DELETE FROM  users WHERE id = 6;"/>
<node CREATED="1531640567430" ID="ID_1055628457" MODIFIED="1531640599221" TEXT="&#x5f53;&#x5220;&#x9664;&#x540e;&#x518d;&#x65b0;&#x589e;&#x8bb0;&#x5f55;&#xff0c;id&#x53f7;&#x4e3a;&#x5df2;&#x6709;&#x7684;id&#x53f7;&#x6700;&#x5927;&#x6570;&#x5b57;+1&#xff0c;&#x800c;&#x4e0d;&#x4f1a;&#x8865;&#x5145;&#x5220;&#x6389;&#x7684;&#x90a3;&#x4e2a;"/>
</node>
</node>
</map>
