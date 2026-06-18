local http = luci.http

m = Map("easytier", translate("EasyTier Status"))
m.description = translate("A simple, secure, decentralized VPN solution for intranet penetration, implemented in Rust using the Tokio framework. "
        .. "Project URL: <a href=\"https://github.com/avkiller/EasyTier\" target=\"_blank\">github.com/avkiller/EasyTier</a>&nbsp;&nbsp;")
        .. "<a href=\"https://github.com/avkiller/EasyTier/releases\" target=\"_blank\"><img alt=\"\" src=\"https://img.shields.io/github/v/tag/EasyTier/EasyTier?include_prereleases&logo=github&label=tag&link=https%3A%2F%2Fgithub.com%2FEasyTier%2FEasyTier%2Freleases\" style=\"vertical-align:middle;\"></a>&nbsp;"
        .. "<a href=\"https://github.com/avkiller/EasyTier/releases\" target=\"_blank\"><img alt=\"\" src=\"https://img.shields.io/github/v/release/EasyTier/EasyTier?logo=github&link=https%3A%2F%2Fgithub.com%2FEasyTier%2FEasyTier%2Freleases\" style=\"vertical-align:middle;\"></a>&nbsp;"
        .. "<a href=\"https://github.com/avkiller/luci-app-easytier/releases\" target=\"_blank\"><img alt=\"\" src=\"https://img.shields.io/github/v/release/EasyTier/luci-app-easytier?logo=openwrt&label=luci&link=https%3A%2F%2Fgithub.com%2FEasyTier%2Fluci-app-easytier%2Freleases\" style=\"vertical-align:middle;\"></a>"
m.pageaction = false

-- 状态卡片
m:section(SimpleSection).template = "easytier/easytier_status"

-- 连接信息卡片
m:section(SimpleSection).template = "easytier/easytier_cli"

return m
