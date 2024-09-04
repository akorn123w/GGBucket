{
    WindowTitle := "Unity DevOps Version Control installation"
    but1 := "TkChild7"
    but2 := "TkChild347"

    WinWait(WindowTitle)
    WinActivate(WindowTitle)

    ControlClick(but1, WindowTitle)
    ControlClick(but2, WindowTitle)
    ControlClick(but1, WindowTitle)
    ControlClick(but1, WindowTitle)
    ControlClick(but1, WindowTitle)
    ControlClick(but1, WindowTitle)
    Loop {
        Sleep(1000)
        isEnabled := ControlGetEnabled(but1, WindowTitle)
        if isEnabled = 1
        {
            break
        }
    }
    ControlClick(but1, WindowTitle)

    MsgBox("Installation complete! Unity VCS should open momentarily.")

    return
}
