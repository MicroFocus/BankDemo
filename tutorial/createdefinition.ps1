<#PSScriptInfo

.VERSION 1.0

.GUID ed19390e-7e65-446b-a237-a29860708ac4

.AUTHOR Micro Focus

.COMPANYNAME Micro Focus

.COPYRIGHT Copyright (C) 2010-2021 Micro Focus.  All Rights Reserved
This software may be used, modified, and distributed
(provided this notice is included without modification)
solely for internal demonstration purposes with other
Micro Focus software, and is otherwise subject to the EULA at
https://www.microfocus.com/en-us/legal/software-licensing.
THIS SOFTWARE IS PROVIDED "AS IS" AND ALL IMPLIED
WARRANTIES, INCLUDING THE IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE,
SHALL NOT APPLY.
TO THE EXTENT PERMITTED BY LAW, IN NO EVENT WILL
MICRO FOCUS HAVE ANY LIABILITY WHATSOEVER IN CONNECTION
WITH THIS SOFTWARE.

.LICENSEURI https://www.microfocus.com/en-us/legal/software-licensing

.PROJECTURI https://github.com/MicroFocus/BankDemo

#>

param (
[parameter(Position=0, Mandatory=$false)]
[String]
$FilePath = "$PSScriptRoot"
)
$TemplateFileName = "$PSScriptRoot\BANKDEMO.template"
$XmlFileName = "$PSScriptRoot\BANKDEMO.xml"
$XmlBakFileName = "$PSScriptRoot\BANKDEMO.xml.bak"
if (-not(Test-Path -Path $FilePath)) {
    (Write-Host "WARNING: Path does not exist.")
}
$WriteXml = "y"
if (Test-Path -Path $XmlFileName) {
    if (Test-Path -Path $XmlBakFileName) {
        $WriteXml = Read-Host -Prompt "$XmlBakFileName already exists. Do you want to override? (y/n) "
        if ($WriteXml -eq "y") {
            Copy-Item $XmlFileName -Destination $XmlBakFileName
        }
    }

}
if ($WriteXml -eq "y") {
    (Get-Content $TemplateFileName) -replace '__IMPORT_FILE_DIR__', $FilePath | Out-File -encoding ASCII $XmlFileName
} else {
        Read-Host -Prompt "Error: Enterprise Server definition was not created. Press return to continue"
}
# SIG # Begin signature block
# MIInLwYJKoZIhvcNAQcCoIInIDCCJxwCAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCD3g6P1imesudk9
# AxCUXtqgrF73jBy7ENb0/fYx03lfbqCCILIwggWQMIIDeKADAgECAhAFmxtXno4h
# MuI5B72nd3VcMA0GCSqGSIb3DQEBDAUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQK
# EwxEaWdpQ2VydCBJbmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNV
# BAMTGERpZ2lDZXJ0IFRydXN0ZWQgUm9vdCBHNDAeFw0xMzA4MDExMjAwMDBaFw0z
# ODAxMTUxMjAwMDBaMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDCCAiIwDQYJKoZIhvcNAQEBBQADggIPADCCAgoCggIB
# AL/mkHNo3rvkXUo8MCIwaTPswqclLskhPfKK2FnC4SmnPVirdprNrnsbhA3EMB/z
# G6Q4FutWxpdtHauyefLKEdLkX9YFPFIPUh/GnhWlfr6fqVcWWVVyr2iTcMKyunWZ
# anMylNEQRBAu34LzB4TmdDttceItDBvuINXJIB1jKS3O7F5OyJP4IWGbNOsFxl7s
# Wxq868nPzaw0QF+xembud8hIqGZXV59UWI4MK7dPpzDZVu7Ke13jrclPXuU15zHL
# 2pNe3I6PgNq2kZhAkHnDeMe2scS1ahg4AxCN2NQ3pC4FfYj1gj4QkXCrVYJBMtfb
# BHMqbpEBfCFM1LyuGwN1XXhm2ToxRJozQL8I11pJpMLmqaBn3aQnvKFPObURWBf3
# JFxGj2T3wWmIdph2PVldQnaHiZdpekjw4KISG2aadMreSx7nDmOu5tTvkpI6nj3c
# AORFJYm2mkQZK37AlLTSYW3rM9nF30sEAMx9HJXDj/chsrIRt7t/8tWMcCxBYKqx
# YxhElRp2Yn72gLD76GSmM9GJB+G9t+ZDpBi4pncB4Q+UDCEdslQpJYls5Q5SUUd0
# viastkF13nqsX40/ybzTQRESW+UQUOsxxcpyFiIJ33xMdT9j7CFfxCBRa2+xq4aL
# T8LWRV+dIPyhHsXAj6KxfgommfXkaS+YHS312amyHeUbAgMBAAGjQjBAMA8GA1Ud
# EwEB/wQFMAMBAf8wDgYDVR0PAQH/BAQDAgGGMB0GA1UdDgQWBBTs1+OC0nFdZEzf
# Lmc/57qYrhwPTzANBgkqhkiG9w0BAQwFAAOCAgEAu2HZfalsvhfEkRvDoaIAjeNk
# aA9Wz3eucPn9mkqZucl4XAwMX+TmFClWCzZJXURj4K2clhhmGyMNPXnpbWvWVPjS
# PMFDQK4dUPVS/JA7u5iZaWvHwaeoaKQn3J35J64whbn2Z006Po9ZOSJTROvIXQPK
# 7VB6fWIhCoDIc2bRoAVgX+iltKevqPdtNZx8WorWojiZ83iL9E3SIAveBO6Mm0eB
# cg3AFDLvMFkuruBx8lbkapdvklBtlo1oepqyNhR6BvIkuQkRUNcIsbiJeoQjYUIp
# 5aPNoiBB19GcZNnqJqGLFNdMGbJQQXE9P01wI4YMStyB0swylIQNCAmXHE/A7msg
# dDDS4Dk0EIUhFQEI6FUy3nFJ2SgXUE3mvk3RdazQyvtBuEOlqtPDBURPLDab4vri
# RbgjU2wGb2dVf0a1TD9uKFp5JtKkqGKX0h7i7UqLvBv9R0oN32dmfrJbQdA75PQ7
# 9ARj6e/CVABRoIoqyc54zNXqhwQYs86vSYiv85KZtrPmYQ/ShQDnUBrkG5WdGaG5
# nLGbsQAe79APT0JsyQq87kP6OnGlyE0mpTX9iV28hWIdMtKgK1TtmlfB2/oQzxm3
# i0objwG2J5VT6LaJbVu8aNQj6ItRolb58KaAoNYes7wPD1N1KarqE3fk3oyBIa0H
# EEcRrYc9B9F1vM/zZn4wggauMIIElqADAgECAhAHNje3JFR82Ees/ShmKl5bMA0G
# CSqGSIb3DQEBCwUAMGIxCzAJBgNVBAYTAlVTMRUwEwYDVQQKEwxEaWdpQ2VydCBJ
# bmMxGTAXBgNVBAsTEHd3dy5kaWdpY2VydC5jb20xITAfBgNVBAMTGERpZ2lDZXJ0
# IFRydXN0ZWQgUm9vdCBHNDAeFw0yMjAzMjMwMDAwMDBaFw0zNzAzMjIyMzU5NTla
# MGMxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5jLjE7MDkGA1UE
# AxMyRGlnaUNlcnQgVHJ1c3RlZCBHNCBSU0E0MDk2IFNIQTI1NiBUaW1lU3RhbXBp
# bmcgQ0EwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDGhjUGSbPBPXJJ
# UVXHJQPE8pE3qZdRodbSg9GeTKJtoLDMg/la9hGhRBVCX6SI82j6ffOciQt/nR+e
# DzMfUBMLJnOWbfhXqAJ9/UO0hNoR8XOxs+4rgISKIhjf69o9xBd/qxkrPkLcZ47q
# UT3w1lbU5ygt69OxtXXnHwZljZQp09nsad/ZkIdGAHvbREGJ3HxqV3rwN3mfXazL
# 6IRktFLydkf3YYMZ3V+0VAshaG43IbtArF+y3kp9zvU5EmfvDqVjbOSmxR3NNg1c
# 1eYbqMFkdECnwHLFuk4fsbVYTXn+149zk6wsOeKlSNbwsDETqVcplicu9Yemj052
# FVUmcJgmf6AaRyBD40NjgHt1biclkJg6OBGz9vae5jtb7IHeIhTZgirHkr+g3uM+
# onP65x9abJTyUpURK1h0QCirc0PO30qhHGs4xSnzyqqWc0Jon7ZGs506o9UD4L/w
# ojzKQtwYSH8UNM/STKvvmz3+DrhkKvp1KCRB7UK/BZxmSVJQ9FHzNklNiyDSLFc1
# eSuo80VgvCONWPfcYd6T/jnA+bIwpUzX6ZhKWD7TA4j+s4/TXkt2ElGTyYwMO1uK
# IqjBJgj5FBASA31fI7tk42PgpuE+9sJ0sj8eCXbsq11GdeJgo1gJASgADoRU7s7p
# XcheMBK9Rp6103a50g5rmQzSM7TNsQIDAQABo4IBXTCCAVkwEgYDVR0TAQH/BAgw
# BgEB/wIBADAdBgNVHQ4EFgQUuhbZbU2FL3MpdpovdYxqII+eyG8wHwYDVR0jBBgw
# FoAU7NfjgtJxXWRM3y5nP+e6mK4cD08wDgYDVR0PAQH/BAQDAgGGMBMGA1UdJQQM
# MAoGCCsGAQUFBwMIMHcGCCsGAQUFBwEBBGswaTAkBggrBgEFBQcwAYYYaHR0cDov
# L29jc3AuZGlnaWNlcnQuY29tMEEGCCsGAQUFBzAChjVodHRwOi8vY2FjZXJ0cy5k
# aWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVkUm9vdEc0LmNydDBDBgNVHR8EPDA6
# MDigNqA0hjJodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRUcnVzdGVk
# Um9vdEc0LmNybDAgBgNVHSAEGTAXMAgGBmeBDAEEAjALBglghkgBhv1sBwEwDQYJ
# KoZIhvcNAQELBQADggIBAH1ZjsCTtm+YqUQiAX5m1tghQuGwGC4QTRPPMFPOvxj7
# x1Bd4ksp+3CKDaopafxpwc8dB+k+YMjYC+VcW9dth/qEICU0MWfNthKWb8RQTGId
# DAiCqBa9qVbPFXONASIlzpVpP0d3+3J0FNf/q0+KLHqrhc1DX+1gtqpPkWaeLJ7g
# iqzl/Yy8ZCaHbJK9nXzQcAp876i8dU+6WvepELJd6f8oVInw1YpxdmXazPByoyP6
# wCeCRK6ZJxurJB4mwbfeKuv2nrF5mYGjVoarCkXJ38SNoOeY+/umnXKvxMfBwWpx
# 2cYTgAnEtp/Nh4cku0+jSbl3ZpHxcpzpSwJSpzd+k1OsOx0ISQ+UzTl63f8lY5kn
# LD0/a6fxZsNBzU+2QJshIUDQtxMkzdwdeDrknq3lNHGS1yZr5Dhzq6YBT70/O3it
# TK37xJV77QpfMzmHQXh6OOmc4d0j/R0o08f56PGYX/sr2H7yRp11LB4nLCbbbxV7
# HhmLNriT1ObyF5lZynDwN7+YAN8gFk8n+2BnFqFmut1VwDophrCYoCvtlUG3OtUV
# mDG0YgkPCr2B2RP+v6TR81fZvAT6gt4y3wSJ8ADNXcL50CN/AAvkdgIm2fBldkKm
# KYcJRyvmfxqkhQ/8mJb2VVQrH4D6wPIOK+XW+6kvRBVK5xMOHds3OBqhK/bt1nz8
# MIIGsDCCBJigAwIBAgIQCK1AsmDSnEyfXs2pvZOu2TANBgkqhkiG9w0BAQwFADBi
# MQswCQYDVQQGEwJVUzEVMBMGA1UEChMMRGlnaUNlcnQgSW5jMRkwFwYDVQQLExB3
# d3cuZGlnaWNlcnQuY29tMSEwHwYDVQQDExhEaWdpQ2VydCBUcnVzdGVkIFJvb3Qg
# RzQwHhcNMjEwNDI5MDAwMDAwWhcNMzYwNDI4MjM1OTU5WjBpMQswCQYDVQQGEwJV
# UzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xQTA/BgNVBAMTOERpZ2lDZXJ0IFRy
# dXN0ZWQgRzQgQ29kZSBTaWduaW5nIFJTQTQwOTYgU0hBMzg0IDIwMjEgQ0ExMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEA1bQvQtAorXi3XdU5WRuxiEL1
# M4zrPYGXcMW7xIUmMJ+kjmjYXPXrNCQH4UtP03hD9BfXHtr50tVnGlJPDqFX/IiZ
# wZHMgQM+TXAkZLON4gh9NH1MgFcSa0OamfLFOx/y78tHWhOmTLMBICXzENOLsvsI
# 8IrgnQnAZaf6mIBJNYc9URnokCF4RS6hnyzhGMIazMXuk0lwQjKP+8bqHPNlaJGi
# TUyCEUhSaN4QvRRXXegYE2XFf7JPhSxIpFaENdb5LpyqABXRN/4aBpTCfMjqGzLm
# ysL0p6MDDnSlrzm2q2AS4+jWufcx4dyt5Big2MEjR0ezoQ9uo6ttmAaDG7dqZy3S
# vUQakhCBj7A7CdfHmzJawv9qYFSLScGT7eG0XOBv6yb5jNWy+TgQ5urOkfW+0/tv
# k2E0XLyTRSiDNipmKF+wc86LJiUGsoPUXPYVGUztYuBeM/Lo6OwKp7ADK5GyNnm+
# 960IHnWmZcy740hQ83eRGv7bUKJGyGFYmPV8AhY8gyitOYbs1LcNU9D4R+Z1MI3s
# MJN2FKZbS110YU0/EpF23r9Yy3IQKUHw1cVtJnZoEUETWJrcJisB9IlNWdt4z4FK
# PkBHX8mBUHOFECMhWWCKZFTBzCEa6DgZfGYczXg4RTCZT/9jT0y7qg0IU0F8WD1H
# s/q27IwyCQLMbDwMVhECAwEAAaOCAVkwggFVMBIGA1UdEwEB/wQIMAYBAf8CAQAw
# HQYDVR0OBBYEFGg34Ou2O/hfEYb7/mF7CIhl9E5CMB8GA1UdIwQYMBaAFOzX44LS
# cV1kTN8uZz/nupiuHA9PMA4GA1UdDwEB/wQEAwIBhjATBgNVHSUEDDAKBggrBgEF
# BQcDAzB3BggrBgEFBQcBAQRrMGkwJAYIKwYBBQUHMAGGGGh0dHA6Ly9vY3NwLmRp
# Z2ljZXJ0LmNvbTBBBggrBgEFBQcwAoY1aHR0cDovL2NhY2VydHMuZGlnaWNlcnQu
# Y29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5jcnQwQwYDVR0fBDwwOjA4oDagNIYy
# aHR0cDovL2NybDMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZFJvb3RHNC5j
# cmwwHAYDVR0gBBUwEzAHBgVngQwBAzAIBgZngQwBBAEwDQYJKoZIhvcNAQEMBQAD
# ggIBADojRD2NCHbuj7w6mdNW4AIapfhINPMstuZ0ZveUcrEAyq9sMCcTEp6QRJ9L
# /Z6jfCbVN7w6XUhtldU/SfQnuxaBRVD9nL22heB2fjdxyyL3WqqQz/WTauPrINHV
# UHmImoqKwba9oUgYftzYgBoRGRjNYZmBVvbJ43bnxOQbX0P4PpT/djk9ntSZz0rd
# KOtfJqGVWEjVGv7XJz/9kNF2ht0csGBc8w2o7uCJob054ThO2m67Np375SFTWsPK
# 6Wrxoj7bQ7gzyE84FJKZ9d3OVG3ZXQIUH0AzfAPilbLCIXVzUstG2MQ0HKKlS43N
# b3Y3LIU/Gs4m6Ri+kAewQ3+ViCCCcPDMyu/9KTVcH4k4Vfc3iosJocsL6TEa/y4Z
# XDlx4b6cpwoG1iZnt5LmTl/eeqxJzy6kdJKt2zyknIYf48FWGysj/4+16oh7cGvm
# oLr9Oj9FpsToFpFSi0HASIRLlk2rREDjjfAVKM7t8RhWByovEMQMCGQ8M4+uKIw8
# y4+ICw2/O/TOHnuO77Xry7fwdxPm5yg/rBKupS8ibEH5glwVZsxsDsrFhsP2JjMM
# B0ug0wcCampAMEhLNKhRILutG4UI4lkNbcoFUCvqShyepf2gpx8GdOfy1lKQ/a+F
# SCH5Vzu0nAPthkX0tGFuv2jiJmCG6sivqf6UHedjGzqGVnhOMIIGxjCCBK6gAwIB
# AgIQCnpKiJ7JmUKQBmM4TYaXnTANBgkqhkiG9w0BAQsFADBjMQswCQYDVQQGEwJV
# UzEXMBUGA1UEChMORGlnaUNlcnQsIEluYy4xOzA5BgNVBAMTMkRpZ2lDZXJ0IFRy
# dXN0ZWQgRzQgUlNBNDA5NiBTSEEyNTYgVGltZVN0YW1waW5nIENBMB4XDTIyMDMy
# OTAwMDAwMFoXDTMzMDMxNDIzNTk1OVowTDELMAkGA1UEBhMCVVMxFzAVBgNVBAoT
# DkRpZ2lDZXJ0LCBJbmMuMSQwIgYDVQQDExtEaWdpQ2VydCBUaW1lc3RhbXAgMjAy
# MiAtIDIwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQC5KpYjply8X9ZJ
# 8BWCGPQz7sxcbOPgJS7SMeQ8QK77q8TjeF1+XDbq9SWNQ6OB6zhj+TyIad480jBR
# DTEHukZu6aNLSOiJQX8Nstb5hPGYPgu/CoQScWyhYiYB087DbP2sO37cKhypvTDG
# FtjavOuy8YPRn80JxblBakVCI0Fa+GDTZSw+fl69lqfw/LH09CjPQnkfO8eTB2ho
# 5UQ0Ul8PUN7UWSxEdMAyRxlb4pguj9DKP//GZ888k5VOhOl2GJiZERTFKwygM9tN
# JIXogpThLwPuf4UCyYbh1RgUtwRF8+A4vaK9enGY7BXn/S7s0psAiqwdjTuAaP7Q
# WZgmzuDtrn8oLsKe4AtLyAjRMruD+iM82f/SjLv3QyPf58NaBWJ+cCzlK7I9Y+rI
# roEga0OJyH5fsBrdGb2fdEEKr7mOCdN0oS+wVHbBkE+U7IZh/9sRL5IDMM4wt4sP
# XUSzQx0jUM2R1y+d+/zNscGnxA7E70A+GToC1DGpaaBJ+XXhm+ho5GoMj+vksSF7
# hmdYfn8f6CvkFLIW1oGhytowkGvub3XAsDYmsgg7/72+f2wTGN/GbaR5Sa2Lf2GH
# BWj31HDjQpXonrubS7LitkE956+nGijJrWGwoEEYGU7tR5thle0+C2Fa6j56mJJR
# zT/JROeAiylCcvd5st2E6ifu/n16awIDAQABo4IBizCCAYcwDgYDVR0PAQH/BAQD
# AgeAMAwGA1UdEwEB/wQCMAAwFgYDVR0lAQH/BAwwCgYIKwYBBQUHAwgwIAYDVR0g
# BBkwFzAIBgZngQwBBAIwCwYJYIZIAYb9bAcBMB8GA1UdIwQYMBaAFLoW2W1NhS9z
# KXaaL3WMaiCPnshvMB0GA1UdDgQWBBSNZLeJIf5WWESEYafqbxw2j92vDTBaBgNV
# HR8EUzBRME+gTaBLhklodHRwOi8vY3JsMy5kaWdpY2VydC5jb20vRGlnaUNlcnRU
# cnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5nQ0EuY3JsMIGQBggrBgEF
# BQcBAQSBgzCBgDAkBggrBgEFBQcwAYYYaHR0cDovL29jc3AuZGlnaWNlcnQuY29t
# MFgGCCsGAQUFBzAChkxodHRwOi8vY2FjZXJ0cy5kaWdpY2VydC5jb20vRGlnaUNl
# cnRUcnVzdGVkRzRSU0E0MDk2U0hBMjU2VGltZVN0YW1waW5nQ0EuY3J0MA0GCSqG
# SIb3DQEBCwUAA4ICAQANLSN0ptH1+OpLmT8B5PYM5K8WndmzjJeCKZxDbwEtqzi1
# cBG/hBmLP13lhk++kzreKjlaOU7YhFmlvBuYquhs79FIaRk4W8+JOR1wcNlO3yMi
# bNXf9lnLocLqTHbKodyhK5a4m1WpGmt90fUCCU+C1qVziMSYgN/uSZW3s8zFp+4O
# 4e8eOIqf7xHJMUpYtt84fMv6XPfkU79uCnx+196Y1SlliQ+inMBl9AEiZcfqXnSm
# WzWSUHz0F6aHZE8+RokWYyBry/J70DXjSnBIqbbnHWC9BCIVJXAGcqlEO2lHEdPu
# 6cegPk8QuTA25POqaQmoi35komWUEftuMvH1uzitzcCTEdUyeEpLNypM81zctoXA
# u3AwVXjWmP5UbX9xqUgaeN1Gdy4besAzivhKKIwSqHPPLfnTI/KeGeANlCig69sa
# UaCVgo4oa6TOnXbeqXOqSGpZQ65f6vgPBkKd3wZolv4qoHRbY2beayy4eKpNcG3w
# LPEHFX41tOa1DKKZpdcVazUOhdbgLMzgDCS4fFILHpl878jIxYxYaa+rPeHPzH0V
# rhS/inHfypex2EfqHIXgRU4SHBQpWMxv03/LvsEOSm8gnK7ZczJZCOctkqEaEf4y
# mKZdK5fgi9OczG21Da5HYzhHF1tvE9pqEG4fSbdEW7QICodaWQR2EaGndwITHDCC
# BuowggTSoAMCAQICEASm0Aym578T1gYB36tchgkwDQYJKoZIhvcNAQELBQAwaTEL
# MAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMUEwPwYDVQQDEzhE
# aWdpQ2VydCBUcnVzdGVkIEc0IENvZGUgU2lnbmluZyBSU0E0MDk2IFNIQTM4NCAy
# MDIxIENBMTAeFw0yMTA2MDgwMDAwMDBaFw0yNDA4MzAyMzU5NTlaMG8xCzAJBgNV
# BAYTAkdCMRAwDgYDVQQHEwdORVdCVVJZMSYwJAYDVQQKEx1NaWNybyBGb2N1cyBJ
# bnRlcm5hdGlvbmFsIHBsYzEmMCQGA1UEAxMdTWljcm8gRm9jdXMgSW50ZXJuYXRp
# b25hbCBwbGMwggGiMA0GCSqGSIb3DQEBAQUAA4IBjwAwggGKAoIBgQDqIkGIRgsM
# nPnxpiGnVbpT3NhmfZQmEMQvStb0kN6arPt4bsjK4yqdrV0VOB5sKWNsN7Xb2K+2
# aW498Gyj0euyAadCBb89CjQGLewHmyR23Tzqmb0tNV1eaHzaufQASr0DgHLgHZlG
# nWC3VUWHH3TA1+A9otFkroXiEjZGVt1q6QQ2Hka8idh8IaEkF24RxrX4oRhEB7c/
# ii6Y0sSf57Y+tHqXdYumuENkaA44La79BHuMavwE2fWurpE7lgflf1nnbyJxaQ+X
# rUgSqi4Qvd6Zwj6Dvo5pUJAuqqhwKYwH0n7BApxFKlZq/w6UdS1NTMohmxyqINyx
# A+4dKQilKUHXiXP0d+GUSrRFtXtNU3TKgpO2LFGZSls/l25emc2InT2mHT7SkGkl
# wD87iM28rPS6CneVNlQcQspSy72YCREJWIV1Jbv7xAXpOl8wbgVB+A2Tm5lSG5FU
# u79rE+n14pOom4VODzxA3atMhm40h383tS6V3PHyK4qLUbpLkkSDL/ECAwEAAaOC
# AgYwggICMB8GA1UdIwQYMBaAFGg34Ou2O/hfEYb7/mF7CIhl9E5CMB0GA1UdDgQW
# BBSG6FvrVWg7DnMIRIHoce297iaaMTAOBgNVHQ8BAf8EBAMCB4AwEwYDVR0lBAww
# CgYIKwYBBQUHAwMwgbUGA1UdHwSBrTCBqjBToFGgT4ZNaHR0cDovL2NybDMuZGln
# aWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29kZVNpZ25pbmdSU0E0MDk2U0hB
# Mzg0MjAyMUNBMS5jcmwwU6BRoE+GTWh0dHA6Ly9jcmw0LmRpZ2ljZXJ0LmNvbS9E
# aWdpQ2VydFRydXN0ZWRHNENvZGVTaWduaW5nUlNBNDA5NlNIQTM4NDIwMjFDQTEu
# Y3JsMD4GA1UdIAQ3MDUwMwYGZ4EMAQQBMCkwJwYIKwYBBQUHAgEWG2h0dHA6Ly93
# d3cuZGlnaWNlcnQuY29tL0NQUzCBlAYIKwYBBQUHAQEEgYcwgYQwJAYIKwYBBQUH
# MAGGGGh0dHA6Ly9vY3NwLmRpZ2ljZXJ0LmNvbTBcBggrBgEFBQcwAoZQaHR0cDov
# L2NhY2VydHMuZGlnaWNlcnQuY29tL0RpZ2lDZXJ0VHJ1c3RlZEc0Q29kZVNpZ25p
# bmdSU0E0MDk2U0hBMzg0MjAyMUNBMS5jcnQwDAYDVR0TAQH/BAIwADANBgkqhkiG
# 9w0BAQsFAAOCAgEAXcr+1RhbxddqjgEN21fGnuoGpUwg9pscJcxH3PunJof+Yf4f
# TfH+kxysvey7KwzfsFgOAGlXy+KND5P5WSOBV2BQuZY6sKBSANgqnKlYtn6Z1kpQ
# 3DUrvliyK3A/UrWO+cZBD74J1bDGy8iIUL5TMDKUIfzJzEREONCP9512Q1ZLI6EW
# t36xEGEC6/MBJh6EvOpf7SeEdD/3Jiut5xjG/LnNS4ERKKcZQo3/zWjSvM9gYw/I
# iexNAdaRsq+b4kTNP/iPjowK7m7JllHGD5Im1+6UNXNbIQ36buH6N3qks9pyDDxJ
# yjnia8Ur4ubV32PJiHzuLqONyg4PvUmYFky3uE9j9f4xEYo3N0qYhfUDmKQ45LUD
# wZWuAnBem+RwIv337N+U+8AjappQPYQ62/unY6Ah5CmgkG21pJT7ozf0sUdo6X5K
# xF9ELsGe+nWfUWIfWjRXki8OK6h+i39gXdiY2E6cNcyjfhQeseOHWalplcxUq8cZ
# 88cUtabbsMMsy+nUaQztNN8tDm0FdrAqFG943hN+4n6jjn6nkq7CKrnhQsJR7Qpy
# 4yjOik0fIspGL6F6KfFHgAxCWGMovLard0mwigReH0xIy6vNglG6Y45RKlaDfKV8
# qBWcrfUKFxOW7MoBEUcj59OzIHzIS92Y+v52BvBc8iXvWMoxw+7JqBocJfQxggXT
# MIIFzwIBATB9MGkxCzAJBgNVBAYTAlVTMRcwFQYDVQQKEw5EaWdpQ2VydCwgSW5j
# LjFBMD8GA1UEAxM4RGlnaUNlcnQgVHJ1c3RlZCBHNCBDb2RlIFNpZ25pbmcgUlNB
# NDA5NiBTSEEzODQgMjAyMSBDQTECEASm0Aym578T1gYB36tchgkwDQYJYIZIAWUD
# BAIBBQCggYQwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkqhkiG9w0BCQMx
# DAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGCNwIBFTAvBgkq
# hkiG9w0BCQQxIgQglAhulAyox0bjHUhDzOOTxI2K/OjyqDc5V/O4eJ2n0GAwDQYJ
# KoZIhvcNAQEBBQAEggGAqcITB67N7pVNiXyOZObMc125hMPl0215THHp3Kv8T56a
# TEkXLN3U1VT3Dfy2bwCgK/JBKAwvXmnCLoBzzKKSTavXVX/UXLL6N3qTmV7HeBh/
# 41dM1GA4UkJ1Cu/4q/4AKYTBvAaortZJLy6dJR6dBhF6CKRruoZsDWglKqS2l8in
# Y0Q53V2w6V2MVAj646Glx4ZVRtA8buqwZ4POdlLSIQkHT4Vc2RFvocFmNs81GdUp
# g/DXdl2+T17qNbfkejI4Vcm84ZO4XuhzgS/HuNAhy3l1ZR5Ol8n2tipnZ+YFLTI3
# 3Giom6a6GnXWD8hgD7PxnmXl/OuP/+XELE8KPTNHhZ6honvCn9n9whhyF+0xCksF
# SbJJTtJpncnXZ/Rh39pOG+yHUqwxLkTaE3qY+owt63WToJb77bMuo0eI3yRAJbVX
# FH6vA6BAeJOtoU+XsqJD/qXzGqb27Xf4by8oMmfW84+4vWrBnNt3WTG6U1+DF7T+
# xfyuw7WqPmDDssZaaN0woYIDIDCCAxwGCSqGSIb3DQEJBjGCAw0wggMJAgEBMHcw
# YzELMAkGA1UEBhMCVVMxFzAVBgNVBAoTDkRpZ2lDZXJ0LCBJbmMuMTswOQYDVQQD
# EzJEaWdpQ2VydCBUcnVzdGVkIEc0IFJTQTQwOTYgU0hBMjU2IFRpbWVTdGFtcGlu
# ZyBDQQIQCnpKiJ7JmUKQBmM4TYaXnTANBglghkgBZQMEAgEFAKBpMBgGCSqGSIb3
# DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTIyMDUxNzEzNDYwOFow
# LwYJKoZIhvcNAQkEMSIEINYjfB8OH5Q/GDEJRhCoqtfJvCONvNklns3wBl8o5+/S
# MA0GCSqGSIb3DQEBAQUABIICAGcp4GEiofUQube22UWpApvFpRlO94wSpwxvwruE
# kax0KbGuZtn4HvEnST8/RZ+M+ZCxgZscTHZ68ZmBIna9z4HtsiHwwhyOWs3A6I3R
# 4ng+5hAWoeD8ksadPE1dqSS+K6TUo6AN4Yc9v1iwPbOk/dAuJttAJh4XQqZC9h1k
# 7Rxr5pakOqQsuvRBEjOdZe2VF4/WDUrGFLem6O62jbYJw+MVwhCtQGYmWL/qB95W
# lIvPTAXYhhf8QI8nZEnE6UTix47eSBL6UIOtkKBx8/TIjlw+mB6hXia7f3VFAyX6
# Zee5iXP/c6vInuP3Dxzc2b4A37cx0gyLcFlp9ORyDIlXNPIuhGwWWd7vJJ7LGQFA
# 5h0XUcC8QT0fQAKxPd8uJSKGU/BCAqFH3FWy2iNlp+oWejay9/h+uD9GhGlKaflx
# EqQ0mZ9nmhpfRIMT0ZJ5hGPm7M38wTsVq0pqWvj9JaHwZ3NW5z7MUAiL6Qb62nQl
# wInunwV2RxURcFMxF960nINNy+QYv4WSg95Ydlq+nh0h2Tps7LEhUaaqSpKb6ctb
# 4leiA5yR93v0JlqeYqfnEouVrhB1djcwxSrDt9en+WT5WCalv1z9xRw5WrOgm+rU
# /fIdim1TZZFx75elDcXAzUX28UsNuN55Erfc/OYmpqnpex1+3p0QRUX0ukFdoS9D
# LsNy
# SIG # End signature block
