mouse_init()
{
  return
}


XButton1 & WheelUp::Send {Volume_Up}
XButton1 & WheelDown::Send {Volume_Down}
XButton1 & LButton::Send {Media_Prev}
XButton1 & RButton::Send {Media_Next}
XButton1 & MButton::Send {Media_Play_Pause}
XButton1::Send {XButton1}
