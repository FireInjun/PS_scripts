$installchocolatey = "Start-Process -FilePath powershell.exe -ArgumentList "-Command &{' Set-ExecutionPolicy unrestricted Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))'}"-UseNewEnvironment -NoNewWindow -Verb runas"
$createflake8config = "Start-Process -FilePath powershell.exe -ArgumentList "-Command &{' Set-ExecutionPolicy unrestricted Process -Force; Push-Location ${env:homepath}; New-Item .flake8; $a= "[flake8]`r`nignore = E203, E266, E501, W503, F401`r`nmax-line-length = 80`r`nmax-complexity = 18`r`nselect = B,C,E,F,W,T4,B9`r`nexclude = .git, __pycache__, docs/source/conf.py, old, build, dist"; add-content -path .\.flake8 -value $a; clear-host; write-host "I think we did it!"; get-content .\.flake8; pop-location'}"-UseNewEnvironment -NoNewWindow -Verb runas"

function Pythonsetup {
  Get-Command choco.exe
  if ($?) {
    $installchocolatey
  } 
  else{
    $createflake8config
}
  
}
{
  "workbench.iconTheme": "material-icon-theme",
  "files.autoSave": "onFocusChange",
  "terminal.integrated.shell.windows": "C:\\Windows\\System32\\WindowsPowerShell\\v1.0\\powershell.exe",
  "explorer.confirmDragAndDrop": false,
  "explorer.confirmDelete": false,
  "files.exclude": {
    "**/.git": true,
    "**/.svn": true,
    "**/.hg": true,
    "**/CVS": true,
    "**/.DS_Store": true,
    "desktop.ini": true,
    "*/.ico": true
  },
  "editor.codeActionsOnSave": {},
  "editor.dragAndDrop": false,
  "editor.foldingStrategy": "indentation",
  "editor.formatOnPaste": true,
  "[python]": {
    "editor.formatOnSave": true,
    "editor.formatOnPaste": false,
    "editor.codeActionsOnSave": {
      "source.organizeImports": false
    }
  },
  "editor.formatOnSave": true,
  "editor.formatOnType": true,
  "editor.rulers": [],
  "editor.showFoldingControls": "always",
  "editor.snippetSuggestions": "top",
  "workbench.commandPalette.history": 5,
  "window.menuBarVisibility": "visible",
  "window.openFoldersInNewWindow": "on",
  "window.restoreWindows": "all",
  "files.useExperimentalFileWatcher": true,
  "markdown.preview.doubleClickToSwitchToEditor": false,
  "emmet.includeLanguages": {
    "javascript": "javascriptreact"
  },
  "editor.cursorStyle": "underline",
  "editor.multiCursorModifier": "alt",
  "workbench.colorTheme": "One Dark Pro",
  "python.autoComplete.addBrackets": true,
  "python.disableInstallationCheck": true,
  "python.formatting.provider": "black",
  "python.formatting.blackPath": "C:\\Python37\\Scripts\\black.exe",
  "python.linting.enabled": true,
  "python.linting.lintOnSave": true,
  "python.globalModuleInstallation": true,
  "python.linting.flake8Enabled": true,
  "python.linting.flake8Path": "C:\\Python37\\Scripts\\flake8.exe",
  "python.linting.flake8Args": [
    "--ignore = E203, E266, E501, W503, F401",
    "--max-line-length = 80",
    "--max-complexity = 18",
    "--select = B,C,E,F,W,T4,B9",
    "--exclude = .git, __pycache__, docs/source/conf.py, old, build, dist"
  ],
  "editor.fontFamily": "Fira Code",
  "editor.fontLigatures": true,
  "gitlens.advanced.messages": {
    "suppressShowKeyBindingsNotice": true
  },
  "git.path": "C:\\Program Files\\Git\\cmd",
  "editor.renderWhitespace": "boundary",
  "editor.formatOnSaveTimeout": 1000,
  "autoDocstring.docstringFormat": "google",
  "editor.acceptSuggestionOnEnter": "off",
  "window.openFilesInNewWindow": "on",
  "window.titleBarStyle": "custom",
  "window.title": "${activeEditorShort}${separator}${rootName}${separator}${foldername}",
  "terminal.integrated.fontFamily": "Hack",
  "telemetry.enableCrashReporter": false,
  "telemetry.enableTelemetry": false,
  "git.enableSmartCommit": true,
  "bracketPairColorizer.showBracketsInGutter": true,
  "editor.fontSize": 16,
  "files.autoSaveDelay": 1000,
  "files.watcherExclude": {
    "**/.git/objects/**": true,
    "**/.git/subtree-cache/**": true,
    "**/node_modules/*/**": true
  },
  "python.autoComplete.showAdvancedMembers": true,
  "git.enableCommitSigning": false,
  "git.defaultCloneDirectory": "S:\\school",
  "javascript.format.enable": true,
  "javascript.updateImportsOnFileMove.enabled": "always",
  "eslint.run": "onType",
  "eslint.enable": true,
  "eslint.autoFixOnSave": true,
  "eslint.alwaysShowStatus": true,
  "typescript.reportStyleChecksAsWarnings": false,
  "typescript.suggestionActions.enabled": false,
  "prettier.jsxBracketSameLine": true,
  "prettier.arrowParens": "always",
  "prettier.eslintIntegration": true,
  "editor.tabSize": 2,
  "indentRainbow.indentSetter": {
    "python": {
      "tabSize": 2,
      "insertSpaces": true
    },
    "javascript": {
      "tabSize": 2,
      "insertSpaces": true
    }
  },
  "python.linting.pylintUseMinimalCheckers": false,
  "python.linting.pylintEnabled": false,
  "gitlens.heatmap.toggleMode": "window",
  "gitlens.hovers.enabled": false,
  "gitlens.settings.mode": "advanced",
  "python.sortImports.args": [],
  "autoDocstring.generateDocstringOnEnter": true,
  "sync.gist": "b56aea27ee27456d0d45e769e39b6570",
  "sync.host": "",
  "sync.pathPrefix": "",
  "sync.quietSync": false,
  "sync.askGistName": false,
  "sync.removeExtensions": true,
  "sync.syncExtensions": true,
  "sync.autoDownload": false,
  "sync.autoUpload": false,
  "sync.lastUpload": "2018-07-26T21:33:24.359Z",
  "sync.lastDownload": "",
  "sync.forceDownload": false,
  "terminal.integrated.cursorStyle": "underline",
  "terminal.integrated.experimentalTextureCachingStrategy": "dynamic",
  "terminal.integrated.rendererType": "canvas",
  "fancyTerminal.foreground": "Purple",
  "fancyTerminal.background": "Default",
  "terminal.integrated.setLocaleVariables": true,
  "liveServer.settings.donotShowInfoMsg": true,
  "tslint.enable": true,
  "[javascript]": {},
  "terminal.integrated.enableBell": false
}