# pynksh

A different way to manipulate text using Tkinter, Python and Shell together.

Basicaly shell functions that wrap Python syntax as a small tool to write less but more python.

The IDE is a shell function builder because it sources the shell functions before running the commands using subprocess. 

## How to operate

It is a basic 3 widget tkinter app. 2 Entry and 1 Text. 

Launch the IDE from terminal: `ksh newide | python3 &` (bash works fine too)

View source code: `Ctrl-q` then select the other Text widget `Ctrl-Shift-q`

1st Entry:

-	type a color `#555 <Shift-Return>` Changes Text widget background.

-	`orange <Ctrl-Return>` Changes foreground.

2nd Entry: type a filename in your current working directory `Return` opens the file.

You can see all the bindings below.

Run a shell command: 

-	 Type anywhere `ls -lt [Press Both Shifts]` 

-	 `Esc` closes popup shell window.

-	`Right Shift` inside the popup to run commands.

## Ideas

would making this better be worth it to anyone? 


## Contact

let's talk on Discord so we can understand my concoction


## History
The seed is in the legacy folder. I started that spec first and then arrived at the current one. This contraption helps me code the way my brain sees the snake.


## Reasoning

my main argument: typing just 20-50% of the total python script characters = faster app production + joy


+Build Your Dream Python Project (+BYDPP) | Coding - Programming - GPT-4 Discord Server

Prompt:
`I created something to reduce the amount of code I type so my app helps me produce 250% more characters. In what way can this be useful`

  - Increased productivity: If your app helps you produce 250% more characters with less typing, you can write more code in less time, allowing you to accomplish more tasks or focus on other aspects of your projects.


   - Error reduction: Typing less code might also mean making fewer typing errors or syntax errors, which can lead to a more efficient debug and review process.


  -  Code standardization: Your tool might help maintain a consistent coding style across a project if it automates certain patterns or structures, making the codebase easier to understand and maintain.


   - Faster learning: For new developers or those less familiar with a specific coding language, your tool can serve as a learning aid by providing ready-to-use code snippets or structures.


  -  Repetitive task relief: Automating repetitive coding tasks can be a relief for developers, giving them more time to focus on unique, complex problems and overall architecture decisions.


   - Improved focus: With less need to think about routine code, developers can focus on the logic and algorithms that are central to the app's functionality.


   - Scalability: You can manage larger projects more easily if your tool enables you to maintain and generate code efficiently.


   - Economic efficiency: Saving time on typing and debugging directly translates into cost savings, as less time is needed to develop and maintain the software.


   - Accessibility: This tool can make coding more accessible to people who might have limitations that make typing difficult, therefore expanding the pool of potential developers who can contribute to projects.


Overall, a tool that enhances coding speed and efficiency can be highly beneficial in a fast-paced development environment where time and accuracy are paramount.

## EOF

thanks for stopping in ;)

https://hardkorebob.github.io

https://www.reddit.com/r/pnk/

https://discord.gg/JT6RMMfP

🐡🐧🐍🐚🐈‍⬛🦤🏞🪡♥️🪄⏳️🎲🎯🧩🏅🎉

🕉 Improvements coming! 🇵🇷 | -🤓-

#0xfu #dfc #ghd #hacktheplanet! #allerrorsmatter #ahdahwm

SE HABLA ESPANOL! BORICUA!

--- 
# Quick Inspect
## Want to see the colors? (See How to operate)
```
#!/usr/bin/env ksh
#pnk.lang.spec;

#Globals
bg='"#222"'
datenow="#$%&*^ {datetime.datetime.now().strftime('<%m.%d.%Y.%H:%M>')}"
px='padx=2'
py='pady=2'
S=self
E=echo
#z=26th letter (omega)
_=expr
	
#indentation
#Z=""     #0
Y="   "   #3
X="$Y$Y " #7
W="$Y$X " #11  
V="$Y$W " #15
U="$Y$V " #19

####### Head, Body & Tail #######
ZDimp() {
	typeset ii="$1"
        $E "import $ii"
}
ZDas() {
	typeset ii="$1"
	typeset aa="$2"
        $E "import $ii as $aa"
}
ZDsheimpang() {
	$E "#!/usr/bin/env python3"
	$E "#pnk.gen;"
	ZDimp re
	ZDimp datetime
	ZDimp subprocess
}
ZDfrm() {
	typeset lib="$1"
	typeset cclass="$2"
	$E "from $lib import $cclass"
}
#root window
Zztoorwin() {
	typeset pp="$1"
	ZIdc $pp Tk
	YDfd z __init__ 
	XFfc - super '' '.__init__()'
	XFcfg '' bg=$bg
}
#class instance
XIci() {
	typeset name="$1"
	typeset cclass="$2"
	typeset s="$3"
	XIfv z $name $cclass self,$s
}
#class define
ZIcld() {
	typeset nn="$1"
	typeset xx="$2"
	typeset pp="$3"
	ZIdc $nn Frame
	YDfd z __init__ ,parent,$xx
	XFfc - super '' ".__init__(parent,$pp)"
	XIv z master parent
	XFcfg '' bg=$bg
}
ZFmain() {
	typeset pp="$1"
	typeset windowTitle="$2"
	$E "if __name__ == '__main__':"
  	YIfv - go $pp
  	YFfc - go.title "\"$windowTitle\""
  	YFfc - go.mainloop
}

######## Define my Ilass #####
ZIdc() {
	typeset nn="$1" #name
	typeset cc="$2" #class
	$E "class $nn($cc):"
}

###### Define my Func #########
ZDdefe() {
	typeset fn="$1"
	ZDfd z $fn ,e=None
}
YDret() {
	typeset r="$1"
	$E "$Y return $r"
}
ZDfd() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	if [[ $z == z ]]; 
	then
		$E "def $nn(${S}$cc):"
	else
		$E "def $nn($cc):"
	fi
}
YDdefs() {
	typeset fn="$1"
	typeset p="$2"
	YDfd z $fn ,$p
}
YDdefp() {
	typeset fn="$1"
	typeset p="$2"
	YDfd z $fn ,$p,e=None
}
YDdefe() {
	typeset fn="$1"
	YDfd z $fn ,e=None
}
XDret() {
	typeset r="$1"
	$E "$X return $r"
}
YDfd() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	if [[ $z == z ]]; 
	then
		$E "$Y def $nn(${S}$cc):"
	else
		$E "$Y def $nn($cc):"
	fi
}
XDdefe() {
	typeset fn="$1"
	XDfd z $fn ,e=None
}
XDdefs() {
	typeset fn="$1"
	typeset p="$2"
	XDfd z $fn ,$p
}
WDret() {
	typeset r="$1"
	$E "$W return $r"
}
XDfd() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]]; 
	then
		$E "$X def $nn(${S}$cc):"
	else
		$E "$X def $nn($cc):"
	fi
}
WDdefe() {
	typeset fn="$1"
	WDfd z $fn ,e=None
}
WDdefs() {
	typeset fn="$1"
	typeset p="$2"
	WDfd z $fn ,$p
}
VDret() {
	typeset r="$1"
	$E "$V return $r"
}
WDfd() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]]; 
	then
		$E "$W def $nn(${S}$cc):"
	else
		$E "$W def $nn($cc):"
	fi
}

########## Function Ialls #######
ZFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$nn(${S}.$cc)$ff"
	else
		$E "$nn($cc)$ff"
	fi
}
YFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "$Y ${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "$Y ${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$Y $nn(${S}.$cc)$ff"
	else
		$E "$Y $nn($cc)$ff"
	fi
}
XFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "$X ${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "$X ${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$X $nn(${S}.$cc)$ff"
	else
		$E "$X $nn($cc)$ff"
	fi
}
WFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "$W ${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "$W ${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$W $nn(${S}.$cc)$ff"
	else
		$E "$W $nn($cc)$ff"
	fi
}
VFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "$V ${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "$V ${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$V $nn(${S}.$cc)$ff"
	else
		$E "$V $nn($cc)$ff"
	fi
}
UFfc() {
	typeset z="$1"
        typeset nn="$2"
	typeset cc="$3" 
	typeset ff="$4"
	if [[ $z == z ]]; 
	then
		$E "$U ${S}.$nn($cc)$ff"
	elif [[ $z == zz ]];
	then
		$E "$U ${S}.$nn(${S}.$cc)$ff"
	elif [[ $z == -z ]];
	then
		$E "$U $nn(${S}.$cc)$ff"
	else
		$E "$U $nn($cc)$ff"
	fi
}

######## Instance of a functional value #########
ZIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$nn = ${S}.$cc($ff)$fc"
	else
		$E "$nn = $cc($ff)$fc"
	fi
}
YIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "$Y ${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$Y ${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$Y ${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$Y $nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$Y $nn = ${S}.$cc($ff)$fc"
	else
		$E "$Y $nn = $cc($ff)$fc"
	fi
}
XIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "$X ${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$X ${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$X ${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$X $nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$X $nn = ${S}.$cc($ff)$fc"
	else
		$E "$X $nn = $cc($ff)$fc"
	fi
}
WIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "$W ${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$W ${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$W ${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$W $nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$W $nn = ${S}.$cc($ff)$fc"
	else
		$E "$W $nn = $cc($ff)$fc"
	fi
}
VIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "$V ${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$V ${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$V ${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$V $nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$V $nn = ${S}.$cc($ff)$fc"
	else
		$E "$V $nn = $cc($ff)$fc"
	fi
}
UIfv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	typeset ff="$4"
	typeset fc="$5"
	if [[ $z == z ]]; 
	then
		$E "$U ${S}.$nn = $cc($ff)$fc"
	elif [[ $z == zz ]];
	then
		$E "$U ${S}.$nn = ${S}.$cc($ff)$fc"
	elif [[ $z == zzz ]];
	then
		$E "$U ${S}.$nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -zz ]];
	then
		$E "$U $nn = ${S}.$cc($S.$ff)$fc"
	elif [[ $z == -z ]];
	then
		$E "$U $nn = ${S}.$cc($ff)$fc"
	else
		$E "$U $nn = $cc($ff)$fc"
	fi
}

######## Instance of Value #######
ZIv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "${S}.$nn = $cc"
	elif [[ $z == zz ]];
	then
		$E "${S}.$nn = ${S}.$cc"
	else
		$E "$nn = $cc"
	fi
}
YIv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$Y ${S}.$nn = $cc"
	elif [[ $z == zz ]];
	then
		$E "$Y ${S}.$nn = ${S}.$cc"
	else
		$E "$Y $nn = $cc"
	fi
}
XIv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$X ${S}.$nn = $cc"
	elif [[ $z == zz ]];
	then
		$E "$X ${S}.$nn = ${S}.$cc"
	else
		$E "$X $nn = $cc"
	fi
}
WIv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$W ${S}.$nn = $cc"
	elif [[ $z == zz ]];
	then
		$E "$W ${S}.$nn = ${S}.$cc"
	else
		$E "$W $nn = $cc"
	fi
}
UIv() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$U ${S}.$nn = $cc"
	elif [[ $z == zz ]];
	then
		$E "$U ${S}.$nn = ${S}.$cc"
	else
		$E "$U $nn = $cc"
	fi
}
ZIac() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "${S}.$nn += $cc"
	elif [[ $z == zz ]];
	then
		$E "${S}.$nn += ${S}.$cc"
	else
		$E "$nn += $cc"
	fi
}
YIac() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$Y ${S}.$nn += $cc"
	elif [[ $z == zz ]];
	then
		$E "$Y ${S}.$nn += ${S}.$cc"
	else
		$E "$Y $nn += $cc"
	fi
}
XIac() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$X ${S}.$nn += $cc"
	elif [[ $z == zz ]];
	then
		$E "$X ${S}.$nn += ${S}.$cc"
	else
		$E "$X $nn += $cc"
	fi
}
WIac() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$W ${S}.$nn += $cc"
	elif [[ $z == zz ]];
	then
		$E "$W ${S}.$nn += ${S}.$cc"
	else
		$E "$W $nn += $cc"
	fi
}
UIac() {
        typeset nn="$2"
	typeset cc="$3" 
	typeset z="$1"
	if [[ $z == z ]];
	then
		$E "$U ${S}.$nn += $cc"
	elif [[ $z == zz ]];
	then
		$E "$U ${S}.$nn += ${S}.$cc"
	else
		$E "$U $nn += $cc"
	fi
}

######## Kontrol flow #########
YKtry() {
	$E "$Y try:"
}
YKexcp() {
	typeset e="$1"
	$E "$Y except $e:"
}
YKfin() {
	$E "$Y finally:"
}
XKtry() {
	$E "$X try:"
}
XKexcp() {
	typeset e="$1"
	$E "$X except $e:"
}
XKfin() {
	$E "$X finally:"
}
WKtry() {
	$E "$W try:"
}
WKexcp() {
	typeset e="$1"
	$E "$W except $e:"
}
WKfin() {
	$E "$W finally:"
}
VKtry() {
	$E "$V try:"
}
VKexcp() {
	$E "$V except Exception as e:"
}
VKfin() {
	$E "$V finally:"
}
ZKif() {
	typeset test="$1"
	$E "if ${test}:"
}
YKif() {
	typeset test="$1"
	$E "$Y if ${test}:"
}
XKif() {
	typeset test="$1"
	$E "$X if ${test}:"
}
WKif() {
	typeset test="$1"
	$E "$W if ${test}:"
}
VKif() {
	typeset test="$1"
	$E "$V if ${test}:"
}
ZKelif() {
	typeset test="$1"
	$E "elif ${test}:"
}
YKelif() {
	typeset test="$1"
	$E "$Y elif ${test}:"
}
XKelif() {
	typeset test="$1"
	$E "$X elif ${test}:"
}
WKelif() {
	typeset test="$1"
	$E "$W elif ${test}:"
}
VKelif() {
	typeset test="$1"
	$E "$V elif ${test}:"
}
ZKelse() {
	typeset test="$1"
	$E "else:"
}
YKelse() {
	typeset test="$1"
	$E "$Y else:"
}
XKelse() {
	typeset test="$1"
	$E "$X else:"
}
WKelse() {
	typeset test="$1"
	$E "$W else:"
}
VKelse() {
	typeset test="$1"
	$E "$V else:"
}

######## Loops ######
ZLfor() {
	typeset i="$1"
	typeset l="$2"
	$E "for $i in $l:"
}
YLfor() {
	typeset i="$1"
	typeset l="$2"
	$E "$Y for $i in $l:"
}
XLfor() {
	typeset i="$1"
	typeset l="$2"
	$E "$X for $i in $l:"
}
WLfor() {
	typeset i="$1"
	typeset l="$2"
	$E "$W for $i in $l:"
}
VLfor() {
	typeset i="$1"
	typeset l="$2"
	$E "$V for $i in $l:"
}
ULfor() {
	typeset i="$1"
	typeset l="$2"
	$E "$U for $i in $l:"
}
XLffor() {
	typeset i="$1"
	typeset l="$2"
	$E "$X for $i in $l():"
}
ZLwhile() {
	typeset i="$1"
	$E "while $i:"
}
YLwhile() {
	typeset i="$1"
	$E "$Y while $i:"
}
XLwhile() {
	typeset i="$1"
	$E "$X while $i:"
}
WLwhile() {
	typeset i="$1"
	$E "$W while $i:"
}
VLwhile() {
	typeset i="$1"
	$E "$V while $i:"
}
ULwhile() {
	typeset i="$1"
	$E "$U while $i:"
}

######## widGETS ########
wfc='"#EcccA2"'
wbg='bg="#000"'
wBbg='bg="green"'
wfg='fg="#EEE"'
wcr='cursor="heart"'
wecr='cursor="spider"'
wbcr='cursor="shuttle"'
wehbg='highlightbackground="#111"'
whbg='highlightbackground="#333"'
whc="highlightcolor=$wfc"
wic="insertbackground=$wfc"
wre='relief="flat"'
wfnt='font=("VictorMono", 12)'
pnbg='bg="#111"'
Xzbtn() {
	typeset namee="$1"
	typeset t="$2"
	typeset com="$3"
	XIfv z $namee Button "self,$wBbg,$wfg,$wbcr,$whbg,$whc,$wre,$wfnt,command=self.$com,text=\"$t\""
}
Xztext() {
	typeset namee="$1"
	XIfv z $namee Text "self,wrap=\"word\",insertwidth=7,undo=True,padx=20,pady=10,spacing1=3,spacing3=3,$wbg,$wfg,$wcr,$whbg,$whc,$wic,$wre,$wfnt"
}
Xzpnwin() {
	typeset namee="$1"
	typeset orient="$2"
	XIfv z $namee PanedWindow "self,orient="$orient",sashwidth=2,relief=\"flat\",showhandle=True,sashpad=1,$pnbg"
	XFpk $namee 1 both
}
Xznotebk() {
	typeset namee="$1"
	typeset exp="$2"
	typeset fill="$3"
	XIfv z $namee Notebook self
	XFpk $namee $exp $fill
}
Xzentry() {
	typeset namee="$1"
	typeset exp="$2"
	typeset fill="$3"
	XIfv z $namee Entry "self,$pnbg,$wfg,$wecr,$wehbg,$whc,$wic,$wre,$wfnt"
	XFpk $namee $exp $fill anchor=\"w\"
}
Xzlabel() {
	typeset thn="$1"
	typeset exp="$2"
	typeset fill="$3"
	typeset var="${thn}tv"
	XIfv z $var StringVar self
	XIfv z $thn Label self,textvariable=self.$var
	XFpk $thn $exp $fill
}

##### widgets func operations and values #####
XIeget() {
	typeset w="$1"
	typeset v="$2"
	XIfv -z $v $w.get
}
XItgetln() {
	typeset w="$1"
	typeset v="$2"
	XIfv -z $v $w.get "\"insert linestart\", \"insert lineend\""
}
XItget() {
	typeset wn="$1"
	typeset ivn="$2"
	typeset s="$3"
	typeset e="$4"
	XIfv -z $ivn $wn.get "\"$s\", \"$e\""
}
XItgeta() {
	typeset w="$1"
	typeset v="$2"
	XIfv -z $v $w.get "\"1.0\", \"end\""
}
XFshsp() {
	typeset n="$1"
	typeset lntxt="$2"
	XKtry
	WIfv - result subprocess.run "$lntxt,shell=True,executable=\"/usr/bin/ksh\",stdout=subprocess.PIPE,stderr=subprocess.PIPE,text=True"
	WKif 'result.returncode == 0'
	VFtins $n end 'f"\n\n{result.stdout}\n"'
	WKelse
	VFtins $n 1.0 "f\"#$%&*^ $datenow {result.stderr}\n\""
	XKexcp 'Exception as e'
	WFtins $n 1.0 "f\"#$%&*^ $datenow {str(e)}\n\""
	
}
XFpk() {
	typeset namep="$1"
	typeset ee="$2"
	typeset ff="$3"
	typeset aa="$4"
        XFfc z $namep.pack "expand=$ee,fill=\"$ff\",$px,$py,$aa"
}
XFpl() {
	typeset namep="$1"
	typeset x="$2"
	typeset y="$3"
        XFfc z $namep.place "x=$x,y=$y"
}
XFbind() {
	typeset z="$1"
	typeset n="$2"
	typeset key="$3"
	typeset yfc="$4"
	if [[ $z == z ]];
	then
		XFfc z bind "\"<$key>\", ${S}.$yfc"
	elif [[ $z == a ]];
	then
		XFfc z bind_all "\"<$key>\", ${S}.$yfc"
	else	
		XFfc z ${n}.bind "\"<$key>\", ${S}.$yfc"
	fi
}
XFopft() {
	typeset wn="$1" 
	typeset file="$2"
	XIfv - f open "$file, \"r\""
	XIfv - thefile f.read
	XFtins $wn 1.0 thefile
}
XFwrtf() {
	typeset data="$1"
	typeset f="$2"
	$E "$X with open($f, \"w\") as file:"
	$E "$W file.write($data)"
}
XFset() {
	typeset c="$1"
	typeset n="$2"
	XFfc z $c.set "$n"
}
XFcfg() {
	typeset c="$1"
	typeset n="$2"
	XFfc z ${c}configure $n
}
WFtagcfg() {
	typeset wn="$1"
	typeset n="$2"
	typeset b="$3"
	typeset f="$4"
	WFfc z ${wn}.tag_configure "$n,background=$b,foreground=$f"
}
XFedel() {
	typeset n="$1"
	XFfc z $n.delete '0,"end"'
}
XFeins() {
	typeset n="$1"
	typeset v="$2"
	XFfc z $n.insert "0,$v"
}
XFtdel() {
	typeset n="$1"
	typeset ss="$2"
	typeset en="$3"
	XFfc z $n.delete "\"${ss}\",\"${en}\""
}
XFtlndel() {
	typeset n="$1"
	XFfc z $n.delete "\"insert linestart\", \"insert lineend\""
}
XFtins() {
	typeset n="$1"
	typeset s="$2"
	typeset v="$3"	
	XFfc z $n.insert "\"$s\",$v"
}
WFtins() {
	typeset n="$1"
	typeset s="$2"
	typeset v="$3"	
	WFfc z $n.insert "\"$s\",$v"
}
VFtins() {
	typeset n="$1"
	typeset s="$2"
	typeset v="$3"	
	VFfc z $n.insert "\"$s\",$v"
}
WFset() {
	typeset c="$1"
	typeset n="$2"
	WFfc z $c.set "$n"
}
WFcfg() {
	typeset c="$1"
	typeset n="$2"
	WFfc z ${c}configure $n
}
WFedel() {
	typeset n="$1"
	WFfc z $n.delete '0,"end"'
}
WFeins() {
	typeset n="$1"
	typeset v="$2"
	WFfc z $n.insert "0,f\"{$v}\""
}
WFtdel() {
	typeset n="$1"
	typeset ss="$2"
	typeset en="$3"
	WFfc z $n.delete "\"${ss}\",\"${en}\""
}
WFtlndel() {
	typeset n="$1"
	WFfc z $n.delete "\"insert linestart\", \"insert lineend\""
}
WFtins() {
	typeset n="$1"
	typeset s="$2"
	typeset v="$3"	
	WFfc z $n.insert "\"$s\",$v"
}
WFeget() {
	typeset w="$1"
	typeset v="$2"
	WIfv -z $v $w.get
}
WFtgtln() {
	typeset w="$1"
	typeset v="$2"
	WIfv -z $v $w.get "\"insert linestart\", \"insert lineend\""
}
WFtget() {
	typeset w="$1"
	typeset v="$2"
	WIfv -z $v $w.get "\"$w\", \"$v\""
}






#!/usr/bin/env ksh
. ./pnk.lang
#newide by Roberto Rodriguez Jr <brainacid9@gmail.com>

wt=textPad
ta=newide
we=fileEntry
wee=msgEntry
spec='"pnk.lang"'
ni='"newide"'
ou=outPut

ZDsheimpang
ZDfrm tkinter Tk,Text,Entry,Frame,PanedWindow,PhotoImage

Zztoorwin ThisApp
XIfv - catImg PhotoImage 'file="cat.png"'
XFfc z wm_iconphoto False,catImg

Xzpnwin pw '"horizontal"'

XFbind a '' Control-r runit 

XFfc z runit
XFfc z runit

YDdefe runit 
XIci $ta TextPad
XFfc zz pw.add $ta



ZIcld TextPad

Xzentry $wee 0 none
XFcfg $wee. 'width=48'

Xzentry $we 0 none

Xztext $wt
XFpk $wt 1 both


XFbind - $wee Alt-Shift-Return changeETxtbg
XFbind - $wee Shift-Return changeTxtbg
XFbind - $wee Control-Return changeTxtfg

XFbind - $wt Control-q openme
XFbind - $wt Control-Q openspec

XFbind - $wt Control-u kill_line
XFbind - $wt Control-l clearPad
XFbind - $we Return openfile
XFbind - $wt Control-s savefile
XFbind - $wt Shift_R syntax
XFbind - $wt Shift-Shift_R livesh

XFfc z tagconf
XFfc z $wt.focus


YDdefe tagconf

XIv - d '{ "arg": ("#333", "#eccca2"), "args": ("#444", "#eccca2"), "Z": ("green", "#ffc0cb"), "Y": ("#bfff00", "#e5acb6"), "X": ("#ffb732", "#cc99a2"), "W": ("#00ffff", "#b2868e"), "V": ("blue", "#997379"), "U": ("#430075", "#7f6065"), "L": ("red", "red"), "K": ("blue", "blue"), "F": ("green", "green"), "I": ("#ffff32", "#ffff32"), "D": ("purple", "purple"),  "z": ("pink", "pink"), }'
XLffor key,value d.items
WFtagcfg $wt key value[0] value[1]


YDdefp live com

XFfc z makeOut
XFfc z $ou.focus
XFshsp $ou 'f". ./pnk.lang; {com}"'


YDdefe sendBack

XItgeta $ou gotData
XFtins $wt end 'f"{gotData}"'


YDdefe makeOut

Xztext $ou
XFcfg $ou. width=64,height=16
XFbind - $ou Shift_R cliOut
XFbind - $ou Escape destroyIt
XFbind - $ou Control-Shift_R sendBack
XFpl $ou 50 120


YDdefe livesh

XItgetln $wt cmd
XFfc z live cmd


YDdefe destroyIt

XFfc z $ou.destroy
XFfc z $wt.focus


YDdefe cliOut

XItgetln $ou linecom
XFtins $ou 'insert lineend' '" #|;"'
XFshsp $ou linecom


YDdefe changeTxtfg

XIeget $wee fgcolor
XFcfg $wt. 'fg=fgcolor'


YDdefe changeETxtbg

XIeget $wee bgcolor
XFcfg $wee. 'bg=bgcolor'


YDdefe changeTxtbg

XIeget $wee bgcolor
XFcfg $wt. 'bg=bgcolor'


YDdefe openme

XFedel $wee
XFedel $we
XFopft $wt $ni
XFfc z syntax
XFeins $we $ni
XFeins $wee "f\"$datenow ide Opened!\""


YDdefe openspec

XFedel $wee
XFedel $we
XFopft $wt $spec
XFfc z syntax 
XFeins $we $spec
XFeins $wee "f\"$datenow pnk.lang Opened!\""


YDdefe kill_line
XFtlndel $wt


YDdefe clearPad 

XFtdel $wt 1.0 end
XFedel $we
XFedel $wee


YDdefe openfile

XFedel $wee
XIeget $we filename
XFopft $wt filename
XFfc z syntax
XFeins $wee "f\"$datenow Opened!\""


YDdefe savefile

XFedel $wee
XIeget $we filename
XItgeta $wt data 
XFwrtf data filename
XFfc z syntax
XFeins $wee "f\"$datenow Saved!\""


YDdefe syntax

XItgeta $wt data

XIv - SQ_idx "[(m.start(),m.end()) for m in re.finditer(r'\'(.*?)\'', data)]"
XLfor start,end SQ_idx
WFfc z $wt.tag_add '"arg",f"1.0+{start}c",f"1.0+{end}c"'

XIv - DQ_idx "[(m.start(),m.end()) for m in re.finditer(r'\"(.*?)\"', data)]"
XLfor start,end DQ_idx
WFfc z $wt.tag_add '"args",f"1.0+{start}c",f"1.0+{end}c"'

XIv - Z_idx "[(m.start(),m.end()) for m in re.finditer(r'Z', data)]"
XLfor start,end Z_idx
WFfc z $wt.tag_add '"Z",f"1.0+{start}c",f"1.0+{end}c"'

XIv - z_idx "[(m.start(),m.end()) for m in re.finditer(r'z', data)]"
XLfor start,end z_idx
WFfc z $wt.tag_add '"z",f"1.0+{start}c",f"1.0+{end}c"'

XIv - D_idx "[(m.start(),m.end()) for m in re.finditer(r'D', data)]"
XLfor start,end D_idx
WFfc z $wt.tag_add '"D",f"1.0+{start}c",f"1.0+{end}c"'

XIv - F_idx "[(m.start(),m.end()) for m in re.finditer(r'F', data)]"
XLfor start,end F_idx
WFfc z $wt.tag_add '"F",f"1.0+{start}c",f"1.0+{end}c"'

XIv - I_idx "[(m.start(),m.end()) for m in re.finditer(r'I', data)]"
XLfor start,end I_idx
WFfc z $wt.tag_add '"I",f"1.0+{start}c",f"1.0+{end}c"'

XIv - K_idx "[(m.start(),m.end()) for m in re.finditer(r'K', data)]"
XLfor start,end K_idx
WFfc z $wt.tag_add '"K",f"1.0+{start}c",f"1.0+{end}c"'

XIv - L_idx "[(m.start(),m.end()) for m in re.finditer(r'L', data)]"
XLfor start,end L_idx
WFfc z $wt.tag_add '"L",f"1.0+{start}c",f"1.0+{end}c"'

XIv - U_idx "[(m.start(),m.end()) for m in re.finditer(r'U', data)]"
XLfor start,end U_idx
WFfc z $wt.tag_add '"U",f"1.0+{start}c",f"1.0+{end}c"'

XIv - V_idx "[(m.start(),m.end()) for m in re.finditer(r'V', data)]"
XLfor start,end V_idx
WFfc z $wt.tag_add '"V",f"1.0+{start}c",f"1.0+{end}c"'

XIv - W_idx "[(m.start(),m.end()) for m in re.finditer(r'W', data)]"
XLfor start,end W_idx
WFfc z $wt.tag_add '"W",f"1.0+{start}c",f"1.0+{end}c"'

XIv - X_idx "[(m.start(),m.end()) for m in re.finditer(r'X', data)]"
XLfor start,end X_idx
WFfc z $wt.tag_add '"X",f"1.0+{start}c",f"1.0+{end}c"'

XIv - Y_idx "[(m.start(),m.end()) for m in re.finditer(r'Y', data)]"
XLfor start,end Y_idx
WFfc z $wt.tag_add '"Y",f"1.0+{start}c",f"1.0+{end}c"'

ZFmain ThisApp 'newide'
```
