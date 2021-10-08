require'bufferline'.setup {
    options = {
        indicator_icon = '',
        separator_style = 'thin',
        right_mouse_command = nil,
        middle_mouse_command = 'bdelete! %d',
        tab_size = 20,
        diagnostics = 'nvim_lsp',
        diagnostics_update_in_insert = true,
        offsets = { 
            {
                filetype = 'NvimTree', 'Dashboard', 
                text = '',
                highlight = 'Directory',
            }
        },
        show_close_icon = false,
        always_show_bufferline = false,
    },
    highlights = {
        fill = {
            guifg = '#32302f',
            guibg = '#32302f',
        },
        background = {
            guifg = '#928374',
            guibg = '#3c3836',
        },
        tab = {
            guifg = '#928374',
            guibg = '#504945',
        },
        tab_selected = {
            guifg = '#3c3836',
            guibg = '#928374',
        },
        close_button = {
            guifg = '#928374',
            guibg = '#3c3836',
        },
        close_button_visible = {
            guifg = '#928374',
            guibg = '#3c3836',
        },
        close_button_selected = {   -- Use this to change the current buffer's color
            guifg = '#3c3836',
            guibg = '#282828',
        },
        buffer_selected = {         -- Use this to change the current buffer's color
            guifg = normal_fg,
            guibg = '#282828',
            gui = 'bold',
        },
        buffer_visible = {
            guifg = '#928374',
            guibg = '#3c3836',
        },
        close_button_selected = {   -- Use this to change the current buffer's color
            guifg = normal_fg,
            guibg = '#282828',
        },
        separator = {
            guifg = '#32302f',
            guibg = '#32302f',
        },
        separator_visible = {
            guifg = '#32302f',
            guibg = '#32302f',
        },
        separator_selected = {
            guifg = '#32302f',
            guibg = '#32302f',
        },
        indicator_selected = {
            guifg = '#282828',
            guibg = '#928374',
        },
        modified_selected = {       -- Use this to change the current buffer's color
            guibg = '#282828',
        },
        modified_visible = {
            guibg = '#3c3836',
        },
        diagnostic = {
            guibg = '#3c3836',
        },
        diagnostic_visible = {
            guibg = '#3c3836',
        },
        info = {
            guibg = '#7c6f64',
        },
        info_diagnostic = {
            guibg = '#3c3836',
        },
        info_visible = {
            guibg = '#3c3836',
        },
        info_diagnostic_visible = {
            guibg = '#3c3836',
        },
        info_selected = {     -- Use this to change the current buffer's color
            guibg = '#282828',
        },
        info_diagnostic_selected = {     -- Use this to change the current buffer's color
            guibg = '#282828',
        },
        warning = {
            guibg = '#3c3836'
        },
        warning_visible = {
            guibg ='#3c3836',
        },
        warning_selected = {
            guibg = '#282828',
            gui = "bold",
        },
        warning_diagnostic = {
            guibg = '#3c3836',
        },
        warning_diagnostic_visible = {
            guibg = '#3c3836',
        },
        warning_diagnostic_selected = {
            guibg = '#282828',
            gui = "bold",
        },
        error = {
            guibg = '#3c3836',
        },
        error_visible = {
            guibg = '#3c3836',
        },
        error_selected = {
            guibg = '#282828',
            gui = "bold",
        },
        error_diagnostic = {
            guibg = '#3c3836',
        },
        error_diagnostic_visible = {
            guibg = '#3c3836',
        },
        error_diagnostic_selected = {
            guibg = '#282828',
            gui = "bold",
        },
    },
}
