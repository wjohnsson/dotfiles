# Autogenerated config.py
# Documentation:
#   qute://help/configuring.html
#   qute://help/settings.html

# Uncomment this to still load settings configured via autoconfig.yml
# config.load_autoconfig()

# Always restore open sites when qutebrowser is reopened.
# Type: Bool
c.auto_save.session = True

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'file://*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'chrome://*/*')

# Enable JavaScript.
# Type: Bool
config.set('content.javascript.enabled', True, 'qute://*/*')

# Editor (and arguments) to use for the `open-editor` command. The
# following placeholders are defined: * `{file}`: Filename of the file
# to be edited. * `{line}`: Line in which the caret is found in the
# text. * `{column}`: Column in which the caret is found in the text. *
# `{line0}`: Same as `{line}`, but starting from index 0. * `{column0}`:
# Same as `{column}`, but starting from index 0.
# Type: ShellCommand
c.editor.command = ['gvim', '-f', '{file}', '-c', 'normal {line}G{column0}l']

# Page to open if :open -t/-b/-w is used without URL. Use `about:blank`
# for a blank page.
# Type: FuzzyUrl
c.url.default_page = 'https://www.google.com/search?q={}'

# Search engines which can be used via the address bar. Maps a search
# engine name (such as `DEFAULT`, or `ddg`) to a URL with a `{}`
# placeholder. The placeholder will be replaced by the search term, use
# `{{` and `}}` for literal `{`/`}` signs. The search engine named
# `DEFAULT` is used when `url.auto_search` is turned on and something
# else than a URL was entered to be opened. Other search engines can be
# used by prepending the search engine name to the search term, e.g.
# `:open google qutebrowser`.
# Type: Dict
c.url.searchengines = {'DEFAULT': 'https://www.google.com/search?q={}'}

# Page(s) to open at the start.
# Type: List of FuzzyUrl, or FuzzyUrl
c.url.start_pages = '~/.config/homepage/index.html'

# Text color of the completion widget. May be a single color to use for
# all columns or a list of three colors, one for each column.
# Type: List of QtColor, or QtColor
c.colors.completion.fg = '#d5c4a1'

# Background color of the completion widget for odd rows.
# Type: QssColor
c.colors.completion.odd.bg = '#665c54'

# Background color of the completion widget for even rows.
# Type: QssColor
c.colors.completion.even.bg = '#282828'

# Foreground color of completion widget category headers.
# Type: QtColor
c.colors.completion.category.fg = '#fabd2f'

# Background color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.bg = '#282828'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.top = '#282828'

# Bottom border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.category.border.bottom = '#282828'

# Foreground color of the selected completion item.
# Type: QtColor
c.colors.completion.item.selected.fg = '#3c3836'

# Background color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.bg = '#fabd2f'

# Top border color of the completion widget category headers.
# Type: QssColor
c.colors.completion.item.selected.border.top = '#fabd2f'

# Bottom border color of the selected completion item.
# Type: QssColor
c.colors.completion.item.selected.border.bottom = '#fabd2f'

# Foreground color of the matched text in the completion.
# Type: QtColor
c.colors.completion.match.fg = '#b8bb26'

# Color of the scrollbar handle in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.fg = '#d5c4a1'

# Color of the scrollbar in the completion view.
# Type: QssColor
c.colors.completion.scrollbar.bg = '#282828'

# Background color for the download bar.
# Type: QssColor
c.colors.downloads.bar.bg = '#282828'

# Color gradient start for download text.
# Type: QtColor
c.colors.downloads.start.fg = '#282828'

# Color gradient start for download backgrounds.
# Type: QtColor
c.colors.downloads.start.bg = '#83a598'

# Color gradient end for download text.
# Type: QtColor
c.colors.downloads.stop.fg = '#282828'

# Color gradient stop for download backgrounds.
# Type: QtColor
c.colors.downloads.stop.bg = '#8ec07c'

# Foreground color for downloads with errors.
# Type: QtColor
c.colors.downloads.error.fg = '#fb4934'

# Font color for hints.
# Type: QssColor
c.colors.hints.fg = '#282828'

# Background color for hints. Note that you can use a `rgba(...)` value
# for transparency.
# Type: QssColor
c.colors.hints.bg = '#fabd2f'

# Font color for the matched part of hints.
# Type: QssColor
c.colors.hints.match.fg = '#d5c4a1'

# Text color for the keyhint widget.
# Type: QssColor
c.colors.keyhint.fg = '#d5c4a1'

# Highlight color for keys to complete the current keychain.
# Type: QssColor
c.colors.keyhint.suffix.fg = '#d5c4a1'

# Background color of the keyhint widget.
# Type: QssColor
c.colors.keyhint.bg = '#282828'

# Foreground color of an error message.
# Type: QssColor
c.colors.messages.error.fg = '#282828'

# Background color of an error message.
# Type: QssColor
c.colors.messages.error.bg = '#fb4934'

# Border color of an error message.
# Type: QssColor
c.colors.messages.error.border = '#fb4934'

# Foreground color of a warning message.
# Type: QssColor
c.colors.messages.warning.fg = '#282828'

# Background color of a warning message.
# Type: QssColor
c.colors.messages.warning.bg = '#d3869b'

# Border color of a warning message.
# Type: QssColor
c.colors.messages.warning.border = '#d3869b'

# Foreground color of an info message.
# Type: QssColor
c.colors.messages.info.fg = '#d5c4a1'

# Background color of an info message.
# Type: QssColor
c.colors.messages.info.bg = '#282828'

# Border color of an info message.
# Type: QssColor
c.colors.messages.info.border = '#282828'

# Foreground color for prompts.
# Type: QssColor
c.colors.prompts.fg = '#d5c4a1'

# Border used around UI elements in prompts.
# Type: String
c.colors.prompts.border = '#282828'

# Background color for prompts.
# Type: QssColor
c.colors.prompts.bg = '#282828'

# Background color for the selected item in filename prompts.
# Type: QssColor
c.colors.prompts.selected.bg = '#fabd2f'

# Foreground color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.fg = '#b8bb26'

# Background color of the statusbar.
# Type: QssColor
c.colors.statusbar.normal.bg = '#282828'

# Foreground color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.fg = '#282828'

# Background color of the statusbar in insert mode.
# Type: QssColor
c.colors.statusbar.insert.bg = '#83a598'

# Foreground color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.fg = '#282828'

# Background color of the statusbar in passthrough mode.
# Type: QssColor
c.colors.statusbar.passthrough.bg = '#8ec07c'

# Foreground color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.fg = '#282828'

# Background color of the statusbar in private browsing mode.
# Type: QssColor
c.colors.statusbar.private.bg = '#665c54'

# Foreground color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.fg = '#d5c4a1'

# Background color of the statusbar in command mode.
# Type: QssColor
c.colors.statusbar.command.bg = '#282828'

# Foreground color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.fg = '#d5c4a1'

# Background color of the statusbar in private browsing + command mode.
# Type: QssColor
c.colors.statusbar.command.private.bg = '#282828'

# Foreground color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.fg = '#282828'

# Background color of the statusbar in caret mode.
# Type: QssColor
c.colors.statusbar.caret.bg = '#d3869b'

# Foreground color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.fg = '#282828'

# Background color of the statusbar in caret mode with a selection.
# Type: QssColor
c.colors.statusbar.caret.selection.bg = '#83a598'

# Background color of the progress bar.
# Type: QssColor
c.colors.statusbar.progress.bg = '#83a598'

# Default foreground color of the URL in the statusbar.
# Type: QssColor
c.colors.statusbar.url.fg = '#d5c4a1'

# Foreground color of the URL in the statusbar on error.
# Type: QssColor
c.colors.statusbar.url.error.fg = '#fb4934'

# Foreground color of the URL in the statusbar for hovered links.
# Type: QssColor
c.colors.statusbar.url.hover.fg = '#d5c4a1'

# Foreground color of the URL in the statusbar on successful load
# (http).
# Type: QssColor
c.colors.statusbar.url.success.http.fg = '#8ec07c'

# Foreground color of the URL in the statusbar on successful load
# (https).
# Type: QssColor
c.colors.statusbar.url.success.https.fg = '#b8bb26'

# Foreground color of the URL in the statusbar when there's a warning.
# Type: QssColor
c.colors.statusbar.url.warn.fg = '#d3869b'

# Background color of the tab bar.
# Type: QtColor
c.colors.tabs.bar.bg = '#282828'

# Color gradient start for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.start = '#83a598'

# Color gradient end for the tab indicator.
# Type: QtColor
c.colors.tabs.indicator.stop = '#8ec07c'

# Color for the tab indicator on errors.
# Type: QtColor
c.colors.tabs.indicator.error = '#fb4934'

# Foreground color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.fg = '#d5c4a1'

# Background color of unselected odd tabs.
# Type: QtColor
c.colors.tabs.odd.bg = '#665c54'

# Foreground color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.fg = '#d5c4a1'

# Background color of unselected even tabs.
# Type: QtColor
c.colors.tabs.even.bg = '#282828'

# Foreground color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.fg = '#282828'

# Background color of selected odd tabs.
# Type: QtColor
c.colors.tabs.selected.odd.bg = '#d5c4a1'

# Foreground color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.fg = '#282828'

# Background color of selected even tabs.
# Type: QtColor
c.colors.tabs.selected.even.bg = '#d5c4a1'

# Default monospace fonts. Whenever "monospace" is used in a font
# setting, it's replaced with the fonts listed here.
# Type: Font
c.fonts.monospace = 'Hack, Terminus, Monospace, "DejaVu Sans Mono", Monaco, "Bitstream Vera Sans Mono", "Andale Mono", "Courier New", Courier, "Liberation Mono", monospace, Fixed, Consolas, Terminal'

# Font used in the completion widget.
# Type: Font
c.fonts.completion.entry = '12pt Hack'

# Font used in the completion categories.
# Type: Font
c.fonts.completion.category = 'bold 12pt Hack'

# Font used for the debugging console.
# Type: QtFont
c.fonts.debug_console = '12pt Hack'

# Font used for the downloadbar.
# Type: Font
c.fonts.downloads = '12pt Hack'

# Font used for the hints.
# Type: Font
c.fonts.hints = 'bold 12pt Hack'

# Font used in the keyhint widget.
# Type: Font
c.fonts.keyhint = '12pt Hack'

# Font used for error messages.
# Type: Font
c.fonts.messages.error = '12pt Hack'

# Font used for info messages.
# Type: Font
c.fonts.messages.info = '12pt Hack'

# Font used for warning messages.
# Type: Font
c.fonts.messages.warning = '12pt Hack'

# Font used in the statusbar.
# Type: Font
c.fonts.statusbar = '12pt Hack'

# Font used in the tab bar.
# Type: QtFont
c.fonts.tabs = '12pt Hack'
