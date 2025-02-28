local black = "\x1b[30m"
local red = "\x1b[31m"
local green = "\x1b[32m"
local yellow = "\x1b[33m"
local blue = "\x1b[34m"
local magenta = "\x1b[35m"
local cyan = "\x1b[36m"
local white = "\x1b[37m"

local black_bright = "\x1b[30;1"
local red_bright = "\x1b[31;1"
local green_bright = "\x1b[32;1"
local yellow_bright = "\x1b[33;1"
local blue_bright = "\x1b[34;1"
local magenta_bright = "\x1b[35;1"
local cyan_bright = "\x1b[36;1"
local white_bright = "\x1b[37;1"

theme("rosepine")

    -- the success status
    set_text("success", "$ok")
    set_color("success", green_bright)

    -- the failure status
    set_text("failure", "$failed")
    set_color("failure", red_bright)

    -- the nothing status
    set_text("nothing", "$no")
    set_color("nothing", red_bright)

    -- the error info
    set_text("error", "$error")
    set_color("error", red_bright)

    -- the warning info
    set_text("warning", "$warning")
    set_color("warning", yellow_bright)

    -- the building progress
    set_text("build.progress_format", "[%3d%%]")
    set_text("build.progress_style", "scroll")
    set_color("build.progress", green_bright)

    -- the building object file
    set_color("build.object", "")

    -- the building target file
    if is_subhost("windows") and (os.term() == "powershell" or os.term() == "pwsh") then
        set_color("build.target", cyan_bright)
    else
        set_color("build.target", magenta_bright)
    end

    -- the spinner chars
    if (is_subhost("windows") and winos.version():lt("win10")) or is_subhost("msys", "cygwin") then
        set_text("spinner.chars", '\\', '-', '/', '|')
    else
        set_text("spinner.chars", '⠋', '⠙', '⠹', '⠸', '⠼', '⠴', '⠦', '⠧', '⠇', '⠏')
    end

    -- color dump
    set_text("dump.default_format", "%s")
    set_text("dump.udata_format", "%s")
    set_text("dump.table_format", "%s")
    set_text("dump.anchor", "&%s")
    set_text("dump.reference", "*%s")
    set_color("dump.anchor", yellow)
    set_color("dump.reference", yellow)
    set_color("dump.default", red)
    set_color("dump.udata", yellow)
    set_color("dump.table", white_bright)
    if is_subhost("windows") and (os.term() == "powershell" or os.term() == "pwsh") then
        set_color("dump.string", red_bright)
        set_color("dump.string_quote", red)
    else
        set_color("dump.string", magenta_bright)
        set_color("dump.string_quote", magenta)
    end
    set_color("dump.keyword", blue)
    set_color("dump.number", green_bright)
    set_color("dump.function", cyan)

    -- menu
    if is_subhost("windows") and (os.term() == "powershell" or os.term() == "pwsh") then
        set_color("menu.main.task.name", cyan_bright)
        set_color("menu.option.name", green_bright)
    else
        set_color("menu.main.task.name", magenta)
        set_color("menu.option.name", green)
    end
    set_color("menu.usage", cyan)

    -- interactive mode
    set_text("interactive.prompt", "xmake>")
    set_text("interactive.prompt2", "xmake>>")
    set_color("interactive.prompt", "green")
    set_color("interactive.prompt2", "green")
