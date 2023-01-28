#Requires AutoHotkey v2.0
#Include <ahkstd.v2.0>
#SingleInstance Force
SetKeyDelay 10


F1::
{
    SendLevel 1
    Send expk("^!+>")
}
^!+>::Msgbox A_ThisHotkey
    

F2::SendDelayed("{Text}안녕하세요? 반갑습니다! 저는 세븐0528이라고 합니다 ㅎㅅㅎ")
F3::SendDelayedEx("{Text}안녕하세요? 반갑습니다! 저는 세븐0528이라고 합니다 ㅎㅅㅎ")

F6::SendDelayed("dkssudgktpdy? qksrkqtmqslek{!} wjsms tpqms0528dlfkrh gkqslek gtg")
F7::SendDelayedEx("dkssudgktpdy? qksrkqtmqslek{!} wjsms tpqms0528dlfkrh gkqslek gtg")


F9::
{
    Msgbox expk("^!{F1}")        ; "{Ctrl down}{Alt down}{F1}{Alt up}{Ctrl up}"
    Msgbox expk("^!F1")          ; "{Ctrl down}{Alt down}{Shift down}f{Shift up}{Alt up}{Ctrl up}1"
    Msgbox expk("<+>+>#{Home}")  ; "{LShift down}{RShift down}{RWin down}{Home}{RWin up}{RShift up}{LShift up}"
    Msgbox expk("!{}}")          ; "{Alt down}{}}{Alt up}"

    Msgbox expk("+a")            ; "{Shift down}a{Shift up}"
    Msgbox expk("+A")            ; "{Shift down}a{Shift up}"
    Msgbox expk("+A",true)       ; "{Shift down}{Shift down}a{Shift up}{Shift up}"

    Msgbox expk("!{F3}`n^>+A{Text}안녕하세요")
                                    ; "{Alt down}{F3}{Alt up}`n{Ctrl down}{RShift down}{Shift down}a{Shift up}{RShift up}{Ctrl up}{Text}안녕하세요"
}


^+Space::
{
    SendDelayedEx(expk("+{Home}{Text}안녕하세요"))
}