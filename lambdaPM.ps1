# This is a simple script that will check if Choco is installed and if needed, installs it
# then it installs and auto-configures your flake8 and black auto formatter

#Here are the various file paths we will be messing with
$vscodesettings = '%APPDATA%\Code\User\settings.json'
$python37 = 'C:\Python37\'
$python36 = 'C:\Python36\'


# Commands to test
$1 = choco.exe
$2 = flake8.exe
$3 = black.exe
$4 = Cmder.exe

# Commands to run
$chocoautoyes = 'choco feature enable allowglobalconfirmation'
$powerlinefonts = 'git clone https://github.com/powerline/fonts.git; set-location .\fonts\; .\install.ps1'
$cmderinstall = 'choco install cmder'
$cleanup = 'Remove-Item .\fonts\ -Force'
$python36install = 'choco install python3 --version 3.6.5'
$pipinstall = 'choco install pip; choco upgrade pip'
$python37install = 'choco install python3'


$newsettings= {`r`n  "workbench.iconTheme": "material-icon-theme",
`r`n  "files.autoSave": "onFocusChange",
`r`n  "terminal.integrated.shell.windows": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
`r`n  "explorer.confirmDragAndDrop": false,
`r`n  "explorer.confirmDelete": false,
`r`n  "files.exclude": {
`r`n    "**/.git": true,
`r`n    "**/.svn": true,
`r`n    "**/.hg": true,
`r`n    "**/CVS": true,
`r`n    "**/.DS_Store": true,
`r`n    "desktop.ini": true,
`r`n    "*/.ico": true
`r`n  },
`r`n  "editor.codeActionsOnSave": {},
`r`n  "editor.dragAndDrop": false,
`r`n  "editor.foldingStrategy": "indentation",
`r`n  "editor.formatOnPaste": true,
`r`n  "[python]": {
`r`n    "editor.formatOnSave": true,
`r`n    "editor.formatOnPaste": false,
`r`n    "editor.codeActionsOnSave": {
`r`n      "source.organizeImports": false
`r`n    }
`r`n  },
`r`n  "editor.formatOnSave": true,
`r`n  "editor.formatOnType": true,
`r`n  "editor.rulers": [],
`r`n  "editor.showFoldingControls": "always",
`r`n  "editor.snippetSuggestions": "top",
`r`n  "workbench.commandPalette.history": 5,
`r`n  "window.menuBarVisibility": "visible",
`r`n  "window.openFoldersInNewWindow": "on",
`r`n  "window.restoreWindows": "all",
`r`n  "files.useExperimentalFileWatcher": true,
`r`n  "markdown.preview.doubleClickToSwitchToEditor": false,
`r`n  "emmet.includeLanguages": {
`r`n    "javascript": "javascriptreact"
`r`n  },
`r`n  "editor.cursorStyle": "underline",
`r`n  "editor.multiCursorModifier": "alt",
`r`n  "workbench.colorTheme": "One Dark Pro",
`r`n  "python.autoComplete.addBrackets": true,
`r`n  "python.disableInstallationCheck": true,
`r`n  "python.formatting.provider": "black",
`r`n  "python.formatting.blackPath": "C:\\Python37\\Scripts\\black.exe",
`r`n  "python.linting.enabled": true,
`r`n  "python.linting.lintOnSave": true,
`r`n  "python.globalModuleInstallation": true,
`r`n  "python.linting.flake8Enabled": true,
`r`n  "python.linting.flake8Path": "C:\\Python37\\Scripts\\flake8.exe",
`r`n  "python.linting.flake8Args": [
`r`n    "--ignore = E203, E266, E501, W503, F401",
`r`n    "--max-line-length = 80",
`r`n    "--max-complexity = 18",
`r`n    "--select = B,C,E,F,W,T4,B9",
`r`n    "--exclude = .git, __pycache__, docs/source/conf.py, old, build, dist"
`r`n  ],
`r`n  "editor.fontFamily": "Fira Code",
`r`n  "editor.fontLigatures": true,
`r`n  "gitlens.advanced.messages": {
`r`n  "suppressShowKeyBindingsNotice": true
`r`n  },
`r`n  "git.path": "C:\\Program Files\\Git\\cmd",
`r`n  "editor.renderWhitespace": "boundary",
`r`n  "editor.formatOnSaveTimeout": 1000,
`r`n  "autoDocstring.docstringFormat": "google",
`r`n  "editor.acceptSuggestionOnEnter": "off",
`r`n  "window.openFilesInNewWindow": "on",
`r`n  "window.titleBarStyle": "custom",
`r`n  "window.title": "${activeEditorShort}${separator}${rootName}${separator}${foldername}",
`r`n  "terminal.integrated.fontFamily": "Hack",
`r`n  "telemetry.enableCrashReporter": false,
`r`n  "telemetry.enableTelemetry": false,
`r`n  "git.enableSmartCommit": true,
`r`n  "bracketPairColorizer.showBracketsInGutter": true,
`r`n  "editor.fontSize": 16,
`r`n  "files.autoSaveDelay": 1000,
`r`n  "files.watcherExclude": {
`r`n    "**/.git/objects/**": true,
`r`n    "**/.git/subtree-cache/**": true,
`r`n    "**/node_modules/*/**": true
  },
  "editor.tabSize": 2,
  "indentRainbow.indentSetter": {
    "python": {
      "tabSize": 2,
      "insertSpaces": true
    },
  },
  "python.linting.pylintUseMinimalCheckers": false,
  "python.linting.pylintEnabled": false,
  "terminal.integrated.setLocaleVariables": true,
  "terminal.integrated.enableBell": false
}