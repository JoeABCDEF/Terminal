## 设置命令

```pseudocode
Function CDVA {cd D:\Project\vite\admin\}
```

## 查找命令文件

```pseudocode
echo $profile
```

## set alias

1. [微软 PowerShell](https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/set-alias?view=powershell-7.1&amp;viewFallbackFrom=powershell-6)

   ```
   Set-Alias
      [-Name] <string>
      [-Value] <string>
      [-Description <string>]
      [-Option <ScopedItemOptions>]
      [-PassThru]
      [-Scope <string>]
      [-Force]
      [-WhatIf]
      [-Confirm]
      [<CommonParameters>]
   ```

   

### 示例

1. 设置 alias

   ```
   PS D:\Project> Function cd-Vite_admin {cd D:\Project\vite\admin\}
   PS D:\Project> Set-Alias -Name cdva -Value cd-Vite_admin
   PS D:\Project> cdva
   PS D:\Project\vite\admin>
   ```

2. 通过alias获取所设置的 方法

   ```
   PS D:\Project\vite\admin> Get-Alias -Name cdva
   
   CommandType     Name                                               Version    Source
   -----------     ----                                               -------    ------
   Alias           cdva -> cd-Vite_admin
   ```

## 移除

```
Remove-Item Alias:[Name]
```

如果你想为自己的 Windows PowerShell 设置永久的命令别名 (Alias)，可以遵循以下步骤：

- 打开 PowerShell ，运行 `echo $profile`，会输出一个文件路径。创建这个文件。
- 打开刚创建的文件，按以下格式设置多条别名：

```powershell
 function 别名 { 需要替代的命令，可以包含空格 }
```

- 以管理员身份打开 PowerShell，执行 `Set-ExecutionPolicy RemoteSigned`。
- 重新启动 PowerShell ，应该已经完成了。
