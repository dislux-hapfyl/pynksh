#!/usr/bin/env python3
#pnk.lang.gen;
from tkinter import Tk,Frame,Text,Entry,Button
from re import finditer
class App(Tk):
    def __init__(self):
        super().__init__()
        self.configure(bg="#222")
        self.addTab()
    def addTab(self,e=None):
        self.ai = MyApp(self,)
        self.ai.pack(expand=1,fill="both",padx=2,pady=2,)
class MyApp(Frame):
    def __init__(self,parent,):
        super().__init__(parent,)
        self.master = parent
        self.configure(bg="#222")
        self.anins2 = TApp(self,)
        self.anins2.pack(expand=1,fill="both",padx=2,pady=2,)
class TApp(Frame):
    def __init__(self,parent,):
        super().__init__(parent,)
        self.master = parent
        self.configure(bg="#222")
        self.textPad = Text(self,wrap="word",insertwidth=7,padx=20,pady=10,spacing1=3,spacing3=3,bg="#444",fg="#EEE",cursor="heart",highlightbackground="#444",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.textPad.configure(width=12,height=2,undo=False)
        self.pumpT0Entry = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT0Entry.pack(expand=0,fill="none",padx=2,pady=2,)
        self.pumpT1Entry = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT1Entry.pack(expand=0,fill="none",padx=2,pady=2,)
        self.pumpT2Entry = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT2Entry.pack(expand=0,fill="none",padx=2,pady=2,)
        self.pumpTime3Entry = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpTime3Entry.pack(expand=0,fill="none",padx=2,pady=2,)
        self.minerEntry = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.minerEntry.pack(expand=0,fill="none",padx=2,pady=2,)
        self.pumpText0 = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpText0.pack(expand=0,fill="x",padx=2,pady=2,)
        self.pumpT1 = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT1.pack(expand=0,fill="x",padx=2,pady=2,)
        self.pumpT2 = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT2.pack(expand=0,fill="x",padx=2,pady=2,)
        self.pumpT3 = Entry(self,bg="#111",fg="#EEE",cursor="spider",highlightbackground="#111",highlightcolor="#EcccA2",insertbackground="#EcccA2",relief="flat",font=("Iosevka", 6))
        self.pumpT3.pack(expand=0,fill="x",padx=2,pady=2,)
        self.textPad.pack(expand=1,fill="both",padx=2,pady=2,)
        self.btn = Button(self,bg="green",fg="#EEE",cursor="shuttle",highlightbackground="#444",highlightcolor="#EcccA2",relief="flat",font=("Iosevka", 6),command=self.mine,text="Get")
        self.btn.pack(expand=0,fill="none",padx=2,pady=2,)
        self.textPad.bind("<Shift_R>", self.mine)
        self.textPad.bind("<Control-Shift_R>", self.pump0)
        self.zs = 0
        self.textPad.focus()
        self.cmdConf()
        self.chgfnt(6)
        self.textPad.insert("1.0",f"Z\n\n\n")
        self.textPad.insert("3.0",f"Press Shift (below Return)\n")
        self.textPad.mark_set("insert",1.0)
        self.pumpT0Entry.insert(0,"1000")
        self.pumpT1Entry.insert(0,"1200")
        self.pumpT2Entry.insert(0,"1400")
        self.pumpTime3Entry.insert(0,"1600")
        self.minerEntry.insert(0,"5000")
        self.pumpText0.insert(0,"00")
        self.pumpT1.insert(0,"11")
        self.pumpT2.insert(0,"22")
        self.pumpT3.insert(0,"33")
    def chgfnt(self,gg,e=None):
        self.gg = gg
        self.textPad.configure(font=("Iosevka",gg))
    def cmdConf(self,e=None):
        d = { "Z": ("green", "green"), "Y": ("#bfff00", "#bfff00"), "X": ("#ffb732", "#ffb732"), "W": ("#00ffff", "#00ffff"), "V": ("blue", "blue"), "U": ("#430075", "#430075"), "L": ("red", "red"), "K": ("blue", "blue"), "F": ("green", "green"), "I": ("#ffff32", "#ffff32"), "D": ("purple", "purple"),  "z": ("pink", "pink"), "0": ("#008080", "#008080"), "1": ("#FFDB58", "#FFDB58"), "2": ("#FF7F50", "#FF7F50"), "3": ("#E6E6FA", "#E6E6FA"), "4": ("#808000", "#808000"), "5": ("#B27259", "#B27259"), "6": ("#6A5ACD", "#6A5ACD"), "7": ("#FFDAB9", "#FFDAB9"), "8": ("#98FF98", "#98FF98"), "9": ("gray", "gray"),}
        for key,value in d.items():
            self.textPad.tag_configure(key,background=value[0],foreground=value[1])
    def collect(self,e=None):
        self.textPad.delete("2.0","2.end")
        self.textPad.insert("2.0",f"{self.zs}\n")
    def mine(self,e=None):
        com = self.textPad.get("insert linestart", "insert lineend")
        t = com.split()
        if t[0] == "Z":
            self.textPad.delete("3.0","end")
        self.zs += 1
        self.collect()
        if self.zs > 9:
            self.autopump0()
        if self.zs > 19:
            self.automine0()
        if self.zs > 30:
            self.autopump1()
        if self.zs > 50:
            self.autopump2()
        if self.zs > 200:
            self.autopump3()
    def automine0(self,e=None):
        t = self.minerEntry.get()
        tm = int(t)
        self.after(tm,self.mine)
    def autopump0(self,e=None):
        t = self.pumpT0Entry.get()
        tm = int(t)
        self.after(tm,self.pump0)
    def pump0(self,e=None):
        p = self.pumpText0.get()
        self.textPad.insert("3.end",f"{p}")
        self.syntax(self.textPad)
    def autopump1(self,e=None):
        t = self.pumpT1Entry.get()
        tm = int(t)
        self.after(tm,self.pump1)
    def pump1(self,e=None):
        p = self.pumpT1.get()
        self.textPad.insert("3.end",f"{p}")
        self.syntax(self.textPad)
    def autopump2(self,e=None):
        t = self.pumpT2Entry.get()
        tm = int(t)
        self.after(tm,self.pump2)
    def pump2(self,e=None):
        p = self.pumpT2.get()
        self.textPad.insert("3.end",f"{p}")
        self.syntax(self.textPad)
    def autopump3(self,e=None):
        t = self.pumpTime3Entry.get()
        tm = int(t)
        self.after(900,self.pump3)
    def pump3(self,e=None):
        p = self.pumpT3.get()
        self.textPad.insert("3.end",f"{p}")
        self.syntax(self.textPad)
    def syntax(self,xx,e=None):
        self.xx = xx
        data = self.xx.get("1.0", "end")
        Z_idx = [(m.start(),m.end()) for m in finditer(r'Z', data)]
        for start,end in Z_idx:
            self.xx.tag_add("Z",f"1.0+{start}c",f"1.0+{end}c")
        z_idx = [(m.start(),m.end()) for m in finditer(r'z', data)]
        for start,end in z_idx:
            self.xx.tag_add("z",f"1.0+{start}c",f"1.0+{end}c")
        D_idx = [(m.start(),m.end()) for m in finditer(r'D', data)]
        for start,end in D_idx:
            self.xx.tag_add("D",f"1.0+{start}c",f"1.0+{end}c")
        F_idx = [(m.start(),m.end()) for m in finditer(r'F', data)]
        for start,end in F_idx:
            self.xx.tag_add("F",f"1.0+{start}c",f"1.0+{end}c")
        I_idx = [(m.start(),m.end()) for m in finditer(r'I', data)]
        for start,end in I_idx:
            self.xx.tag_add("I",f"1.0+{start}c",f"1.0+{end}c")
        K_idx = [(m.start(),m.end()) for m in finditer(r'K', data)]
        for start,end in K_idx:
            self.xx.tag_add("K",f"1.0+{start}c",f"1.0+{end}c")
        L_idx = [(m.start(),m.end()) for m in finditer(r'L', data)]
        for start,end in L_idx:
            self.xx.tag_add("L",f"1.0+{start}c",f"1.0+{end}c")
        U_idx = [(m.start(),m.end()) for m in finditer(r'U', data)]
        for start,end in U_idx:
            self.xx.tag_add("U",f"1.0+{start}c",f"1.0+{end}c")
        V_idx = [(m.start(),m.end()) for m in finditer(r'V', data)]
        for start,end in V_idx:
            self.xx.tag_add("V",f"1.0+{start}c",f"1.0+{end}c")
        W_idx = [(m.start(),m.end()) for m in finditer(r'W', data)]
        for start,end in W_idx:
            self.xx.tag_add("W",f"1.0+{start}c",f"1.0+{end}c")
        X_idx = [(m.start(),m.end()) for m in finditer(r'X', data)]
        for start,end in X_idx:
            self.xx.tag_add("X",f"1.0+{start}c",f"1.0+{end}c")
        Y_idx = [(m.start(),m.end()) for m in finditer(r'Y', data)]
        for start,end in Y_idx:
            self.xx.tag_add("Y",f"1.0+{start}c",f"1.0+{end}c")
        l0_idx = [(m.start(),m.end()) for m in finditer(r'0', data)]
        for start,end in l0_idx:
            self.xx.tag_add("0",f"1.0+{start}c",f"1.0+{end}c")
        l1_idx = [(m.start(),m.end()) for m in finditer(r'1', data)]
        for start,end in l1_idx:
            self.xx.tag_add("1",f"1.0+{start}c",f"1.0+{end}c")
        l2_idx = [(m.start(),m.end()) for m in finditer(r'2', data)]
        for start,end in l2_idx:
            self.xx.tag_add("2",f"1.0+{start}c",f"1.0+{end}c")
        l3_idx = [(m.start(),m.end()) for m in finditer(r'3', data)]
        for start,end in l3_idx:
            self.xx.tag_add("3",f"1.0+{start}c",f"1.0+{end}c")
        l4_idx = [(m.start(),m.end()) for m in finditer(r'4', data)]
        for start,end in l4_idx:
            self.xx.tag_add("4",f"1.0+{start}c",f"1.0+{end}c")
        l5_idx = [(m.start(),m.end()) for m in finditer(r'5', data)]
        for start,end in l5_idx:
            self.xx.tag_add("5",f"1.0+{start}c",f"1.0+{end}c")
        l6_idx = [(m.start(),m.end()) for m in finditer(r'6', data)]
        for start,end in l6_idx:
            self.xx.tag_add("6",f"1.0+{start}c",f"1.0+{end}c")
        l7_idx = [(m.start(),m.end()) for m in finditer(r'7', data)]
        for start,end in l7_idx:
            self.xx.tag_add("7",f"1.0+{start}c",f"1.0+{end}c")
        l8_idx = [(m.start(),m.end()) for m in finditer(r'8', data)]
        for start,end in l8_idx:
            self.xx.tag_add("8",f"1.0+{start}c",f"1.0+{end}c")
        l9_idx = [(m.start(),m.end()) for m in finditer(r'9', data)]
        for start,end in l9_idx:
            self.xx.tag_add("9",f"1.0+{start}c",f"1.0+{end}c")
if __name__ == '__main__':
    go = App()
    go.title("game64")
    go.mainloop()


