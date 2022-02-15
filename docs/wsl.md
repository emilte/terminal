# Windows Subsystem for Linux (WSL)

1. Activate windows features
2. Download Ubuntu from Microsoft Store


https://docs.microsoft.com/en-us/windows/wsl/tutorials/wsl-git

https://stackoverflow.com/questions/46645843/where-to-store-the-personal-access-token-from-github
https://techexpertise.medium.com/storing-git-credentials-with-git-credential-helper-33d22a6b5ce7

```bash
git config --global credential.helper "/mnt/c/Program\ Files/Git/mingw64/libexec/git-core/git-credential-manager-core.exe"
```

search `credential manager` in windows

add Personal Access Token (PAT) to credential manager
