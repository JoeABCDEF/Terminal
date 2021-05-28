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

