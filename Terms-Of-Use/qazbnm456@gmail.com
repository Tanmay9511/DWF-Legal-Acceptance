Delivered-To: kurt@seifried.org
Received: by 10.103.27.130 with SMTP id b124csp1369652vsb;
        Fri, 18 Aug 2017 19:18:59 -0700 (PDT)
X-Received: by 10.202.245.10 with SMTP id t10mr16815307oih.59.1503109139016;
        Fri, 18 Aug 2017 19:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1503109139; cv=none;
        d=google.com; s=arc-20160816;
        b=Hz6zAfYWDn38V0GpT/DWjAIh/Pwe6hos9CJNfrJp3pgtxAD247jufFU9NwQSCTQg5e
         XBRfU3ieDf8MY8MbLBdnSEgrzt7dRL1+TAg6DazHg4rj2dJI7DNN3A/C8Av74nloLSdM
         mNbrCoYz97/LDB/DNBsUE/a1KudBF5gYkwVI/l3c2b74dgJs8iws2R+Q++OML1VdCCVQ
         mwz1YZjACZ3iri+DCDcBHS721IDN8o2sX3s4E4OLc9ksabiyIfsQq1bL1LNyRI3hD+Ad
         BWl9BaOywa+seO/dOWImylUmd9Fyr+J3iGjEOe4qmH0U37Q/mj3Az5irPSi8nG/ZF8wh
         L3/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:references:in-reply-to:mime-version
         :dkim-signature:arc-authentication-results;
        bh=opGt7yzU1sUMoNQpE7Pwb3OYEHx+nRoCmMHUEk+1UKQ=;
        b=JC8I2+TaXIEDYJ3wHadIyYTgowHu+c8ap4+frksRDVCKl27FYtUXKNkRRdhKuuCR4R
         YomgW4q29a+HfnyIrl2cmdEIWKHVzGCQruNekVaDSVX0YTbULGGb28SCzN3wbaQEsiKH
         eF00WZ/mIM47NVwW/uwEOHiSqldOLvVJ5nAZuhrtX7R+rNnJpxXqfd+C6UT7O6iKGs1x
         8f21816lCI0OADah7gKqXtdrHIec7FULA+7UZdEwXxEjr8qEmKczkhHsGsfq2VHLHcCL
         vMqzVbLuDE6Qh2m2ITs7dnSTCB7ElkYH94o/2vApE156yS/+k7sjEUNnAUX754HafO+M
         sHGg==
ARC-Authentication-Results: i=1; mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U9fRf2Fs;
       spf=pass (google.com: domain of qazbnm456@gmail.com designates 2607:f8b0:4003:c06::236 as permitted sender) smtp.mailfrom=qazbnm456@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <qazbnm456@gmail.com>
Received: from mail-oi0-x236.google.com (mail-oi0-x236.google.com. [2607:f8b0:4003:c06::236])
        by mx.google.com with ESMTPS id d66si5392582oig.254.2017.08.18.19.18.58
        for <kurt@seifried.org>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Aug 2017 19:18:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of qazbnm456@gmail.com designates 2607:f8b0:4003:c06::236 as permitted sender) client-ip=2607:f8b0:4003:c06::236;
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U9fRf2Fs;
       spf=pass (google.com: domain of qazbnm456@gmail.com designates 2607:f8b0:4003:c06::236 as permitted sender) smtp.mailfrom=qazbnm456@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-oi0-x236.google.com with SMTP id e124so113063434oig.2
        for <kurt@seifried.org>; Fri, 18 Aug 2017 19:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to;
        bh=opGt7yzU1sUMoNQpE7Pwb3OYEHx+nRoCmMHUEk+1UKQ=;
        b=U9fRf2FsFO1oIWIMAdMKmFogIIFqqT81YexeCaxYJHLTOZVX53eDqfiWejLUD8Dx6t
         SiNWOQY1/YeSLhxsZGeN2l0R2D/YFvQFJLVWwcgMjlGHAm4bGy58aOwDK+qaE/DKqC5O
         /Nkusruvtcwy3mB67NsZS7cczZqr0u1l8I9CzeJmwFLnAQ0vlTqqNUAruQbkG6/kGgkq
         eMI42ESQ+lArlMQ4DZXfl2i3IWpXZpJgG1SEF0S975BPe6sTUdHatRELd5ihOlSNZyis
         GLNwasYlA6ZbpJVfYVFfrLjKN2hLEaoHXY8vFTcCrProSxUQ/YZLVID1Lum2VKwyYY6V
         b5ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to;
        bh=opGt7yzU1sUMoNQpE7Pwb3OYEHx+nRoCmMHUEk+1UKQ=;
        b=KYfcpGCp1/5+6/nGV/D9X9UAIDDLcw2o/HWpreJWpwGHy3q/QLGkBqQSWDI/Ys1mg5
         /VzsCKnDdAYXg2+8aheGY0MtTBALdA61EtxvIZsJGE+ncsDGqXr1XQ3gQ/c/5QpUM4fj
         wTzo8XjdIcAhj5aU57FCDkHl3kl4PfRYWJ8LfADQ9fZTXXMjw5Y5MB7ujMalI8xJN68d
         DJ1bqW5eKVKr3qmFcYCy3zZCYfGgp23WBTzUu8NtC5kaJxmJsSB7OJ/36+IEG9C6GLu3
         +0ZdC5rTtwVCIZ7ErjWHwy1BNBjtcLm4FNH9nb0P2epShS+fe99BR7Mo5KnSbx7NYWUx
         Fvvw==
X-Gm-Message-State: AHYfb5h/d55LP+c+iMG3vHtkMwrcA0qUlKP4lYme8cAIq/Bj4MhWq5eM
	2UkHep9SGjx7TFM9OX4j+v0qd0CHlIxNKXE=
X-Received: by 10.202.188.7 with SMTP id m7mr14527803oif.55.1503109138439;
 Fri, 18 Aug 2017 19:18:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.131.129 with HTTP; Fri, 18 Aug 2017 19:18:57 -0700 (PDT)
In-Reply-To: <20170818193101.55281.45341@shiny-2.local>
References: <20170818193101.55281.45341@shiny-2.local>
From: =?UTF-8?B?6JiH5a2457+U?= <qazbnm456@gmail.com>
Date: Sat, 19 Aug 2017 10:18:57 +0800
Message-ID: <CAHPMeUpo-bAwPfegCyVNRVp_EiPZzOhwTTvMSgfNuAkxFDFUGQ@mail.gmail.com>
Subject: Re: DWF/CVE - Acceptance of MITRE Terms of Use for CVE for qazbnm456@gmail.com
To: Kurt Seifried <kurt@seifried.org>
Content-Type: multipart/alternative; boundary="001a113dd9f6416226055711de07"

--001a113dd9f6416226055711de07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi, Kurt:

I accept the MITRE Terms of Use for CVE, thanks!

2017-08-19 3:31 GMT+08:00 <kurt@seifried.org>:

> This is a confirmation email sent from CVE request form at
> https://iwantacve.org/ asking you to accept the MITRE CVE Terms of Use
> (assuming you filled out the CVE form and want one, we can't use the data
> until you accept the MITRE CVE Terms of Use).
>
> Simply quote the email and reply with "I accept" at the top if you agree
> to the MITRE CVE Terms of Use and we will add a copy of the email to the
> DWF MITRE CVE Terms of Use acceptance data at https://github.com/
> distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-Use
>
> The reason we use a complete copy of the email is that it provides an
> artifact showing that the email address accepted the Terms of Use, when
> they were accepted and so on.
>
> If you did not submit a CVE request to the DWF you can safely ignore this
> message, however we may resend it at some point in the future, if you don=
't
> want any future emails simply reply with "unsubscribe" or "DON'T SEND ME
> THIS EMAIL EVER AGAIN" and I'll add your email address to the block list =
so
> we don't spam you with these, please note that this will prevent you from
> being able to accept the MITRE CVE Terms of Use via the DWF automatically
> in future (you'll have to manually ask). But again, if you have no idea
> what a CVE is then you can ignore this/ask to be added to the block list
> with no problems.
>
> MITRE CVE Terms of Use
>
> LICENSE
>
> Submissions: For all materials you submit to the Common Vulnerabilities
> and Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MIT=
RE) and
> all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusiv=
e,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute such materials and derivative works. Unless
> required by applicable law or agreed to in writing, you provide such
> materials on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
> KIND, either express or implied, including, without limitation, any
> warranties or conditions of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or
> FITNESS FOR A PARTICULAR PURPOSE.
>
> CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive,
> no-charge, royalty-free, irrevocable copyright license to reproduce,
> prepare derivative works of, publicly display, publicly perform,
> sublicense, and distribute Common Vulnerabilities and Exposures (CVE=C2=
=AE). Any
> copy you make for such purposes is authorized provided that you reproduce
> MITRE's copyright designation and this license in any such copy.
>
> DISCLAIMERS
>
> ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE
> PROVIDED ON AN "AS IS" BASIS AND THE CONTRIBUTOR, THE ORGANIZATION HE/SHE
> REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS BOARD =
OF
> TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES, EXPRE=
SS
> OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE USE OF THE
> INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WARRANTIE=
S
> OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.
>
> A copy is available at https://github.com/distributedweaknessfiling/DWF-
> Database/blob/master/TermsOfUse.md
>
> To contact the DWF either hit reply, or email kurt@seifried.org manually
> with your question/concerns/etc.
>
>

--001a113dd9f6416226055711de07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:14px">Hi, Kurt:</span><div style=
=3D"font-size:14px"><br></div><div style=3D"font-size:14px"><span name=3D"K=
urt Seifried" class=3D"gmail-m_-8784224299511730546gmail-m_5673173916375670=
557gmail-gD"><span style=3D"white-space:nowrap">I accept=C2=A0</span></span=
><span style=3D"font-size:12.8px">the=C2=A0</span><span class=3D"gmail-m_-8=
784224299511730546gmail-m_5673173916375670557gmail-m_-3042680585122198012gm=
ail-il" style=3D"font-size:12.8px">MITRE</span><span style=3D"font-size:12.=
8px">=C2=A0</span><span class=3D"gmail-m_-8784224299511730546gmail-m_567317=
3916375670557gmail-m_-3042680585122198012gmail-il" style=3D"font-size:12.8p=
x">Terms</span><span style=3D"font-size:12.8px">=C2=A0of=C2=A0</span><span =
class=3D"gmail-m_-8784224299511730546gmail-m_5673173916375670557gmail-m_-30=
42680585122198012gmail-il" style=3D"font-size:12.8px">Use</span><span style=
=3D"font-size:12.8px">=C2=A0<wbr>for=C2=A0</span><span style=3D"font-size:1=
2.8px">CVE, thanks!</span></div></div><div class=3D"gmail_extra"><br><div c=
lass=3D"gmail_quote">2017-08-19 3:31 GMT+08:00  <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:kurt@seifried.org" target=3D"_blank">kurt@seifried.org</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex">This is a confirmation email sen=
t from CVE request form at <a href=3D"https://iwantacve.org/" rel=3D"norefe=
rrer" target=3D"_blank">https://iwantacve.org/</a> asking you to accept the=
 MITRE CVE Terms of Use (assuming you filled out the CVE form and want one,=
 we can&#39;t use the data until you accept the MITRE CVE Terms of Use).<br=
>
<br>
Simply quote the email and reply with &quot;I accept&quot; at the top if yo=
u agree to the MITRE CVE Terms of Use and we will add a copy of the email t=
o the DWF MITRE CVE Terms of Use acceptance data at <a href=3D"https://gith=
ub.com/distributedweaknessfiling/DWF-Legal-Acceptance/tree/master/Terms-Of-=
Use" rel=3D"noreferrer" target=3D"_blank">https://github.com/<wbr>distribut=
edweaknessfiling/DWF-<wbr>Legal-Acceptance/tree/master/<wbr>Terms-Of-Use</a=
><br>
<br>
The reason we use a complete copy of the email is that it provides an artif=
act showing that the email address accepted the Terms of Use, when they wer=
e accepted and so on.<br>
<br>
If you did not submit a CVE request to the DWF you can safely ignore this m=
essage, however we may resend it at some point in the future, if you don&#3=
9;t want any future emails simply reply with &quot;unsubscribe&quot; or &qu=
ot;DON&#39;T SEND ME THIS EMAIL EVER AGAIN&quot; and I&#39;ll add your emai=
l address to the block list so we don&#39;t spam you with these, please not=
e that this will prevent you from being able to accept the MITRE CVE Terms =
of Use via the DWF automatically in future (you&#39;ll have to manually ask=
). But again, if you have no idea what a CVE is then you can ignore this/as=
k to be added to the block list with no problems.<br>
<br>
MITRE CVE Terms of Use<br>
<br>
LICENSE<br>
<br>
Submissions: For all materials you submit to the Common Vulnerabilities and=
 Exposures (CVE=C2=AE), you hereby grant to The MITRE Corporation (MITRE) a=
nd all CVE Numbering Authorities (CNAs) a perpetual, worldwide, non-exclusi=
ve, no-charge, royalty-free, irrevocable copyright license to reproduce, pr=
epare derivative works of, publicly display, publicly perform, sublicense, =
and distribute such materials and derivative works. Unless required by appl=
icable law or agreed to in writing, you provide such materials on an &quot;=
AS IS&quot; BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either exp=
ress or implied, including, without limitation, any warranties or condition=
s of TITLE, NON-INFRINGEMENT, MERCHANTABILITY, or FITNESS FOR A PARTICULAR =
PURPOSE.<br>
<br>
CVE Usage: MITRE hereby grants you a perpetual, worldwide, non-exclusive, n=
o-charge, royalty-free, irrevocable copyright license to reproduce, prepare=
 derivative works of, publicly display, publicly perform, sublicense, and d=
istribute Common Vulnerabilities and Exposures (CVE=C2=AE). Any copy you ma=
ke for such purposes is authorized provided that you reproduce MITRE&#39;s =
copyright designation and this license in any such copy.<br>
<br>
DISCLAIMERS<br>
<br>
ALL DOCUMENTS AND THE INFORMATION CONTAINED THEREIN PROVIDED BY MITRE ARE P=
ROVIDED ON AN &quot;AS IS&quot; BASIS AND THE CONTRIBUTOR, THE ORGANIZATION=
 HE/SHE REPRESENTS OR IS SPONSORED BY (IF ANY), THE MITRE CORPORATION, ITS =
BOARD OF TRUSTEES, OFFICERS, AGENTS, AND EMPLOYEES, DISCLAIM ALL WARRANTIES=
, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO ANY WARRANTY THAT THE US=
E OF THE INFORMATION THEREIN WILL NOT INFRINGE ANY RIGHTS OR ANY IMPLIED WA=
RRANTIES OF MERCHANTABILITY OR FITNESS FOR A PARTICULAR PURPOSE.<br>
<br>
A copy is available at <a href=3D"https://github.com/distributedweaknessfil=
ing/DWF-Database/blob/master/TermsOfUse.md" rel=3D"noreferrer" target=3D"_b=
lank">https://github.com/<wbr>distributedweaknessfiling/DWF-<wbr>Database/b=
lob/master/<wbr>TermsOfUse.md</a><br>
<br>
To contact the DWF either hit reply, or email <a href=3D"mailto:kurt@seifri=
ed.org">kurt@seifried.org</a> manually with your question/concerns/etc.<br>
<br>
</blockquote></div><br></div>

--001a113dd9f6416226055711de07--
