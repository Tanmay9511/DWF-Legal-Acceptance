Delivered-To: kurt@seifried.org
Received: by 10.31.230.197 with SMTP id d188csp234049vkh;
        Wed, 5 Oct 2016 09:58:56 -0700 (PDT)
X-Received: by 10.28.212.9 with SMTP id l9mr10205482wmg.77.1475686735915;
        Wed, 05 Oct 2016 09:58:55 -0700 (PDT)
Return-Path: <prvs=9086931697=anagawat@fb.com>
Received: from mx0a-00082601.pphosted.com (mx0b-00082601.pphosted.com. [67.231.153.30])
        by mx.google.com with ESMTPS id z26si32236301wmh.105.2016.10.05.09.58.55
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 Oct 2016 09:58:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of prvs=9086931697=anagawat@fb.com designates 67.231.153.30 as permitted sender) client-ip=67.231.153.30;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@fb.com;
       dkim=pass header.i=@fb.onmicrosoft.com;
       spf=pass (google.com: domain of prvs=9086931697=anagawat@fb.com designates 67.231.153.30 as permitted sender) smtp.mailfrom=prvs=9086931697=anagawat@fb.com;
       dmarc=pass (p=NONE dis=NONE) header.from=fb.com
Received: from pps.filterd (m0001255.ppops.net [127.0.0.1])
	by mx0b-00082601.pphosted.com (8.16.0.17/8.16.0.17) with SMTP id u95GvjK0019353
	for <kurt@seifried.org>; Wed, 5 Oct 2016 09:58:53 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fb.com; h=from : to : subject : date
 : message-id : references : in-reply-to : content-type : mime-version;
 s=facebook; bh=sh9ZPLjTZ4nVI3psqONKQYYL3IiJdCC+bgQU519lqxM=;
 b=YjAsO1y+aME9SWCaHxQE06y6tEVm2owNsI8qOoAaukROfvgzvxTtMJPZRRvlk9Shx2uy
 5chSGzgdsA4U4ZZSU9itoXp/tZfv5d7BtrD8/ZQIxJNhvBF/EYbDoupHa5RJq9YPnV7E
 RaxIQ1jYxsu1nhmN2rviNcZ9kt2uGNHxvFw= 
Received: from mail.thefacebook.com ([199.201.64.23])
	by mx0b-00082601.pphosted.com with ESMTP id 25vg7d9s8k-1
	(version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT)
	for <kurt@seifried.org>; Wed, 05 Oct 2016 09:58:53 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (192.168.54.28)
 by o365-in.thefacebook.com (192.168.16.11) with Microsoft SMTP Server (TLS)
 id 14.3.294.0; Wed, 5 Oct 2016 09:58:51 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fb.onmicrosoft.com;
 s=selector1-fb-com; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
 bh=sh9ZPLjTZ4nVI3psqONKQYYL3IiJdCC+bgQU519lqxM=;
 b=Wss5sc1/tXPz0KUzAoPKb6b1XPNKY2XWB8ZEObSIilZCV6OG3ugYY47rYlfQhcXTk+bHBFEzaVzaAw9MOEegVaupWkeLoS1iij70W/XlHe6Bgl475buQ3pPWV6GewoXDup06/wq0R98uBlCsaqpilD4+94WKYHZCjbOiDHhSkeI=
Received: from DM5PR15MB1130.namprd15.prod.outlook.com (10.173.208.140) by
 DM5PR15MB1130.namprd15.prod.outlook.com (10.173.208.140) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
 15.1.639.5; Wed, 5 Oct 2016 16:58:49 +0000
Received: from DM5PR15MB1130.namprd15.prod.outlook.com ([10.173.208.140]) by
 DM5PR15MB1130.namprd15.prod.outlook.com ([10.173.208.140]) with mapi id
 15.01.0639.015; Wed, 5 Oct 2016 16:58:49 +0000
From: Anubha Nagawat <anagawat@fb.com>
To: Kurt Seifried <kurt@seifried.org>
Subject: Re: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Topic: CVE - Acceptance of MITRE Terms of Use for CVE
Thread-Index: AQHSHydr/p8v+UxnokmShL5Y9HkJ5qCaFS22
Date: Wed, 5 Oct 2016 16:58:49 +0000
Message-ID: <5B1864C2-A8E6-4693-9FB8-65D09A8963E7@fb.com>
References: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
In-Reply-To: <CABqVa39=UVZWoPf_NkmDE-H0uZBuVvPVOMdVmktNJdOWhGZOqQ@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [107.77.207.106]
x-ms-office365-filtering-correlation-id: 7a2ba55b-6cef-4742-453d-08d3ed40e0f9
x-microsoft-exchange-diagnostics: 1;DM5PR15MB1130;20:8NSGwUKwYP2OaCXNt01ajCGgF5WB0djWZE2Ksnw46vLuO+U0yI+dwAULRncGVsHoXFV6qkFm/12W7LDe6c6kjk+jQkMASC+Sded2FXU5bOFXiAqhrPKSvRtnJPzoO4hnfWekBJj+ydF6kBgcrKeK+3ss19Nj8MGnEDCiVvtKr5s=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:DM5PR15MB1130;
x-microsoft-antispam-prvs: <DM5PR15MB113087FC4297B4356C052CD2BBC40@DM5PR15MB1130.namprd15.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(166708455590820);
x-exchange-antispam-report-cfa-test: BCL:0;PCL:0;RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001);SRVR:DM5PR15MB1130;BCL:0;PCL:0;RULEID:;SRVR:DM5PR15MB1130;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;SFS:(10019020)(7916002)(377454003)(38564003)(24454002)(189002)(199003)(28244002)(13624006)(7736002)(106116001)(7906003)(50986999)(19580395003)(97736004)(11100500001)(99286002)(86362001)(5660300001)(2906002)(5002640100001)(92566002)(76176999)(19580405001)(3280700002)(105586002)(77096005)(66066001)(122556002)(15975445007)(19617315012)(16236675004)(5003630100001)(2900100001)(54356999)(189998001)(101416001)(83716003)(110136003)(36756003)(6116002)(8936002)(82746002)(107886002)(9886003)(7846002)(81166006)(106356001)(450100001)(68736007)(102836003)(81156014)(3660700001)(87936001)(8676002)(33656002)(3846002)(6916009)(586003)(10400500002)(2950100002)(104396002);DIR:OUT;SFP:1102;SCL:1;SRVR:DM5PR15MB1130;H:DM5PR15MB1130.namprd15.prod.outlook.com;FPR:;SPF:None;PTR:InfoNoRecords;MX:1;A:1;LANG:en;
received-spf: None (protection.outlook.com: fb.com does not designate
 permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
Content-Type: multipart/alternative;
	boundary="_000_5B1864C2A8E646939FB865D09A8963E7fbcom_"
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Oct 2016 16:58:49.6293
 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 8ae927fe-1255-47a7-a2af-5f3a069daaa2
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR15MB1130
X-OriginatorOrg: fb.com
X-Proofpoint-Spam-Reason: safe
X-FB-Internal: Safe
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:,, definitions=2016-10-05_05:,,
 signatures=0

--_000_5B1864C2A8E646939FB865D09A8963E7fbcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I accept

Sent from my iPhone

On Oct 5, 2016, at 9:42 AM, Kurt Seifried <kurt@seifried.org<mailto:kurt@se=
ifried.org>> wrote:


Hi, I need to confirm that you have accepted the MITRE Terms of Use for CVE=
, available at:

https://github.com/distributedweaknessfiling/DWF-Database/blob/master/Terms=
OfUse.md

and quoted below, please reply with "I accept" and I'll be able to process =
your CVE request. Thanks!

Terms of Use

LICENSE

Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE(r)), you hereby grant to The MITRE Corporation (MITRE) and =
all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusive,=
 no-charge, royalty-free, irrevocable copyright license to reproduce, prepa=
re derivative works of, publicly display, publicly perform, sublicense, and=
 distribute such materials and derivative works. Unless required by applica=
ble law or agreed to in writing, you provide such materials on an "AS IS" B=
ASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or impli=
ed, including, without limitation, any warranties or conditions of TITLE, N=
ON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURPOSE.

CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE(r)). Any copy you make =
for such purposes is authorized provided that you reproduce MITRE's copyrig=
ht designation and this license in any such copy.

DISCLAIMERS

ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE RE=
PRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD OF T=
RUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRESS =
OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE I=
NFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIES O=
F MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.

--
Kurt Seifried
kurt@seifried.org<mailto:kurt@seifried.org>

--_000_5B1864C2A8E646939FB865D09A8963E7fbcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
</head>
<body dir=3D"auto">
<div>I accept<br>
<br>
Sent from my iPhone</div>
<div><br>
On Oct 5, 2016, at 9:42 AM, Kurt Seifried &lt;<a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a>&gt; wrote:<br>
<br>
</div>
<blockquote type=3D"cite">
<div>
<div dir=3D"ltr">
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">Hi, I need to confirm =
that you have accepted the MITRE&nbsp;<span class=3D"gmail-il">Terms</span>=
&nbsp;of&nbsp;<span class=3D"gmail-il">Use</span>&nbsp;for&nbsp;<span class=
=3D"gmail-il">CVE</span>,
 available at:</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
><a href=3D"https://github.com/distributedweaknessfiling/DWF-Database/blob/=
master/TermsOfUse.md" target=3D"_blank">https://github.com/<wbr>distributed=
weaknessfiling/DWF-<wbr>Database/blob/master/<wbr>TermsOfUse.md</a><br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>and quoted below, please reply with &quot;I accept&quot; and I'll be able =
to process your&nbsp;<span class=3D"gmail-il">CVE</span>&nbsp;request. Than=
ks!<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
><span class=3D"gmail-il">Terms</span>&nbsp;of&nbsp;<span class=3D"gmail-il=
">Use</span><br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>LICENSE<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">Submissions: For all m=
aterials you submit to the Common Vulnerabilities and Exposures (<span clas=
s=3D"gmail-il">CVE</span>&reg;), you hereby
 grant to The MITRE Corporation (MITRE) and all&nbsp;<span class=3D"gmail-i=
l">CVE</span>&nbsp;Numbering Authorities (CNAs) a perpetual, worldwide, non=
-exclusive, no-charge, royalty-free, irrevocable copyright license to repro=
duce, prepare derivative works of, publicly
 display, publicly perform, sublicense, and distribute such materials and d=
erivative works. Unless required by applicable law or agreed to in writing,=
 you provide such materials on an &quot;AS IS&quot; BASIS, WITHOUT WARRANTI=
ES OR CONDITIONS OF ANY KIND, either express
 or implied, including, without limitation, any warranties or conditions of=
 TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR PURP=
OSE.</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1"><span class=3D"gmail-i=
l">CVE</span>&nbsp;Usage: MITRE hereby grants you a perpetual, worldwide, n=
on-exclusive, no-charge, royalty-free, irrevocable
 copyright license to reproduce, prepare derivative works of, publicly disp=
lay, publicly perform, sublicense, and distribute Common Vulnerabilities an=
d Exposures (<span class=3D"gmail-il">CVE</span>&reg;). Any copy you make f=
or such purposes is authorized provided
 that you reproduce MITRE's copyright designation and this license in any s=
uch copy.</span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p2" style=3D"font-size:12.8px"=
>DISCLAIMERS<br>
<span class=3D"gmail-m_-323732369566349682gmail-s1"></span></p>
<p class=3D"gmail-m_-323732369566349682gmail-p1" style=3D"font-size:12.8px"=
><span class=3D"gmail-m_-323732369566349682gmail-s1">ALL DOCUMENTS AND THE =
INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE PROVIDED ON AN &quot;AS=
 IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE&nb=
sp;<span class=3D"gmail-il">USE</span>&nbsp;OF
 THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRAN=
TIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.</span></p>
<div><br>
</div>
-- <br>
<div class=3D"gmail_signature">Kurt Seifried<br>
<a href=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a=
></div>
</div>
</div>
</blockquote>
</body>
</html>

--_000_5B1864C2A8E646939FB865D09A8963E7fbcom_--