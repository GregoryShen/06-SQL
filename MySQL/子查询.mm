<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1491210109864" ID="ID_1815855699" MODIFIED="1491290642551" TEXT="&#x5b50;&#x67e5;&#x8be2;">
<node CREATED="1491289254357" ID="ID_419292740" MODIFIED="1491290591062" POSITION="right" TEXT="&#x5b50;&#x67e5;&#x8be2;&#x662f;&#x6307;&#x51fa;&#x73b0;&#x5728;&#x5176;&#x4ed6;SQL&#x8bed;&#x53e5;&#x5185;&#x7684;SELECT&#x5b50;&#x53e5;&#xa;&#x4f8b;&#x5982;&#xff1a;&#xa;SELECT * FROM t1 WHERE col1 = (SELECT col2 FROM t2);&#xa;&#x5176;&#x4e2d;SELECT * FROM t1,&#x79f0;&#x4e3a;Outer Query/Outer Statement&#xa;SELECT col2 FROM t2, &#x79f0;&#x4e3a;SubQuery" VSHIFT="-70"/>
<node CREATED="1491289289684" ID="ID_1525350838" MODIFIED="1491290592780" POSITION="right" TEXT="&#x5b50;&#x67e5;&#x8be2;&#x6307;&#x5d4c;&#x5957;&#x5728;&#x67e5;&#x8be2;&#x5185;&#x90e8;&#xff0c;&#x4e14;&#x5fc5;&#x987b;&#x59cb;&#x7ec8;&#x51fa;&#x73b0;&#x5728;&#x5706;&#x62ec;&#x53f7;&#x5185;" VSHIFT="-51"/>
<node CREATED="1491290478796" HGAP="19" ID="ID_1812463687" MODIFIED="1491290594123" POSITION="right" TEXT="&#x5b50;&#x67e5;&#x8be2;&#x53ef;&#x4ee5;&#x5305;&#x542b;&#x591a;&#x4e2a;&#x5173;&#x952e;&#x5b57;&#x6216;&#x6761;&#x4ef6;&#xff0c;&#x5982;DISTINCT,GROUP BY, ORDER BY, LIMIT,&#x51fd;&#x6570;&#x7b49;" VSHIFT="-33"/>
<node CREATED="1491290518490" HGAP="22" ID="ID_1524171552" MODIFIED="1492326612238" POSITION="right" TEXT="&#x5b50;&#x67e5;&#x8be2;&#x7684;&#x5916;&#x5c42;&#x67e5;&#x8be2;&#x53ef;&#x4ee5;&#x662f;&#xff1a;SELECT,INSERT,UPDATE, DELETE,SET&#x6216;DO&#xff08;&#x67e5;&#x8be2;&#x6307;&#x7684;&#x5e76;&#x4e0d;&#x662f;&#x67e5;&#x627e;&#xff0c;&#x800c;&#x662f;&#x6240;&#x6709;SQL&#x8bed;&#x53e5;&#x7684;&#x7edf;&#x79f0;&#xff09;" VSHIFT="-24"/>
<node CREATED="1491290645267" ID="ID_1351765072" MODIFIED="1492331972499" POSITION="right" TEXT="&#x5b50;&#x67e5;&#x8be2;&#x53ef;&#x4ee5;&#x8fd4;&#x56de;&#x6807;&#x91cf;&#x3001;&#x4e00;&#x884c;&#x3001;&#x4e00;&#x5217;&#x6216;&#x5b50;&#x67e5;&#x8be2;"/>
<node CREATED="1492331941333" ID="ID_636550310" MODIFIED="1492332044816" POSITION="right" TEXT="&#x4f7f;&#x7528;&#x6bd4;&#x8f83;&#x8fd0;&#x7b97;&#x7b26;&#x7684;&#x5b50;&#x67e5;&#x8be2;">
<node CREATED="1492332046714" ID="ID_1131913996" MODIFIED="1492332128903" TEXT="=&#x3001;&gt; &#x3001;&lt;&#x3001;&gt;=&#x3001;&lt;=&#x3001;&lt;&gt;&#x3001;!=&#x3001;&lt;=&gt;"/>
<node CREATED="1492332129947" ID="ID_307914430" MODIFIED="1492332151287" TEXT="&#x8bed;&#x6cd5;&#x7ed3;&#x6784; operand comparision_operator subquery">
<node CREATED="1492332752909" ID="ID_1517940487" MODIFIED="1492332819269" TEXT="SELECT goods_id, goods_name, goods_price FROM tdb_goods WHERE goods_price  &gt;= (SELECT ROUND(AVG(goods_price),2) FROM tdb_goods);"/>
</node>
<node CREATED="1492333106039" ID="ID_829182217" MODIFIED="1492333135432" TEXT="&#x5728;&#x5b50;&#x67e5;&#x8be2;&#x8fd4;&#x56de;&#x591a;&#x4e2a;&#x7ed3;&#x679c;&#x65f6;&#x53ef;&#x4ee5;&#x7528;ANY,SOME&#x6216;ALL&#x4fee;&#x9970;&#x7684;&#x6bd4;&#x8f83;&#x8fd0;&#x7b97;&#x7b26;">
<node CREATED="1492333137132" ID="ID_81933493" MODIFIED="1492333726915" TEXT="operand comparison_operator ANY (subquery)"/>
<node CREATED="1492333727942" ID="ID_227195594" MODIFIED="1492333751146" TEXT="operand comparison_operator SOME (subquery)"/>
<node CREATED="1492333751580" ID="ID_1206370744" MODIFIED="1492333779610" TEXT="operand comparison_operator ALL (subquery)"/>
<node CREATED="1492333790245" ID="ID_1411827287" MODIFIED="1492333815051" TEXT="ANY&#x548c;SAME&#x662f;&#x7b49;&#x4ef7;&#x7684;&#xff0c;ALL&#x662f;&#x5168;&#x90e8;"/>
<node CREATED="1492334662847" ID="ID_507804942" MODIFIED="1492334670309" TEXT="&#x4f8b;&#xff1a;SELECT goods_id, goods_name, goods_price FROM tdb_goods WHERE goods_price &gt; ANY (SELECT goods_price FROM tdb_goods WHERE goods_cate=&apos;&#x8d85;&#x7ea7;&#x672c;&apos;);"/>
</node>
</node>
<node CREATED="1492334700111" ID="ID_1188720722" MODIFIED="1492334716335" POSITION="right" TEXT="&#x4f7f;&#x7528;[NOT] IN &#x7684;&#x5b50;&#x67e5;&#x8be2;">
<node CREATED="1492334717991" ID="ID_421817678" MODIFIED="1492334761772" TEXT="&#x8bed;&#x6cd5;&#x7ed3;&#x6784;&#xff1a;operand comparison_operator [NOT] IN (subquery)"/>
<node CREATED="1492334762654" ID="ID_56528299" MODIFIED="1492334773868" TEXT="= ANY &#x8fd0;&#x7b97;&#x7b26;&#x4e0e;IN&#x7b49;&#x6548;"/>
<node CREATED="1492334774367" ID="ID_969575628" MODIFIED="1492334824668" TEXT="!= ALL &#x6216;&lt;&gt;ALL &#x8fd0;&#x7b97;&#x7b26;&#x4e0e;NOT IN&#x7b49;&#x6548;"/>
<node CREATED="1492334986623" ID="ID_773017633" MODIFIED="1492335014311" TEXT="&#x4f8b;&#xff1a;SELECT goods_id, goods_name, goods_price FROM tdb_goods WHERE goods_price  NOT IN (SELECT goods_price FROM tdb_goods WHERE goods_cate=&apos;&#x8d85;&#x7ea7;&#x672c;&apos;);"/>
</node>
<node CREATED="1492335019446" ID="ID_38589476" MODIFIED="1492335035458" POSITION="right" TEXT="&#x4f7f;&#x7528;[NOT] EXISTS&#x7684;&#x5b50;&#x67e5;&#x8be2;">
<node CREATED="1492335037037" ID="ID_1008124111" MODIFIED="1492335057570" TEXT="&#x5982;&#x679c;&#x5b50;&#x67e5;&#x8be2;&#x8fd4;&#x56de;&#x4efb;&#x4f55;&#x884c;&#xff0c;EXISTS&#x5c06;&#x8fd4;&#x56de;TRUE, &#x5426;&#x5219;&#x4e3a;FALSE"/>
</node>
<node CREATED="1492335435826" ID="ID_1428440268" MODIFIED="1492335449024" POSITION="right" TEXT="&#x5c06;&#x67e5;&#x8be2;&#x7ed3;&#x679c;&#x5199;&#x5165;&#x6570;&#x636e;&#x8868;">
<node CREATED="1492335452730" ID="ID_1075876013" MODIFIED="1492335479670" TEXT="INSERT [INTO] tbl_name [(col_name,...)] SELECT ..."/>
<node CREATED="1492335618803" ID="ID_1033128582" MODIFIED="1492335625990" TEXT="&#x4f8b;&#xff1a;INSERT tdb_goods_cates(cate_name) SELECT goods_cate FROM tdb_goods GROUP BY goods_cate;"/>
</node>
<node CREATED="1492335716344" ID="ID_1128938157" MODIFIED="1492335721309" POSITION="right" TEXT="&#x591a;&#x8868;&#x66f4;&#x65b0;">
<node CREATED="1492335723136" ID="ID_625291052" MODIFIED="1492335874420" TEXT="UPDATE table_references SET col_name1={expr1|DEFAULT}[, col_name2={expr2|DEFAULT}]... [WHERE where_condition]"/>
<node CREATED="1492337673795" ID="ID_45939567" MODIFIED="1492337920135" TEXT="&#x4f8b;:UPDATE tdb_goods INNER JOIN tdb_goods_cates ON goods_cate = cate_name SET goods_cate = cate_id;"/>
</node>
<node CREATED="1492326287774" ID="ID_1671853570" MODIFIED="1492326324807" POSITION="left" TEXT="&#x66f4;&#x6539;&#x5ba2;&#x6237;&#x7aef;&#x5b57;&#x7b26;&#x7f16;&#x7801;&#x663e;&#x793a;&#x65b9;&#x5f0f;&#xff1a;SET NAMES gbk;"/>
</node>
</map>
