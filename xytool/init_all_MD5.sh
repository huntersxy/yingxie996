Canary=2020081800
a() (md5sum < `pm path $Package_name | sed 's/.*://g'`)


if [[ $Version_code -eq $Canary ]]; then
    if [[ `a` != bd257263ee7243656c99aed7730c6be3* ]]; then
       Inject() {
            curl -s -o "$2" "https://raw.githubusercontent.com/huntersxy/xy-tool/master/xytool/$1"
        }
            init_data_ID=init_data.sh
            init_data_MD5=6abd773f0a87e2880edaa808d9e7a255
            Util_Functions_ID=Util_Functions.sh
            Util_Functions_MD5=7b47989df73bdddc3e6359a01913f83b
            Cloud_ID=Canary.zip
            Cloud_MD5=f5df80c2e1d0b794c5ac58d581c2b42d
            Cloud_Version=2020082010
    fi
        
elif [[ $Version_code -ge 2020080600 ]]; then
    echo "！已发布了最新内测版本请前往「搞机助手」内测群里更新"
    exit 1
else
    echo "正式版于2020年8月10日已被酷安无缘无故下架，已停止运营"
    echo "从当初下架XP模块现在又开始动ROOT软件了，既然容不下我了那我也就只好注销账号告辞了"
    echo "强制下架别人软件无任何通知？还大架子私信你们鸟都鸟我？哪个开发者能忍受的了你们这处事作风态度，蹭完别人流量转手就下架别人应用，最后再来个一手遮天"
    echo "当然内测版服务器我会一直维护下去，各位热爱搞机的好好保重吧！无法在酷安陪各位了，后会有期"
    sleep 10
    rm -rf "$Pages/OTG.xml" "$Pages/Home.xml"
    exit 1
fi
