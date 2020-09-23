
-- -- -- -- -- -- -- -- -- --   S p l i T   -- -- -- -- -- -- -- -- -- --
function split(szFullString, szSeparator)
 local nFindStartIndex = 1
 local nSplitIndex = 1
 local nSplitArray = {}
 while true do
  local nFindLastIndex = string.find(
   szFullString,
   szSeparator,
   nFindStartIndex
  )
  if not nFindLastIndex then
   nSplitArray[nSplitIndex] = string.sub(
    szFullString,
    nFindStartIndex,
    string.len(szFullString)
   )
   break
  end
  nSplitArray[nSplitIndex] = string.sub(
   szFullString,
   nFindStartIndex,
   nFindLastIndex - 1
  )
  nFindStartIndex = nFindLastIndex + string.len(szSeparator)
  nSplitIndex = nSplitIndex + 1
 end
 return nSplitArray
end
function xgxc(szpy, qmxg)
 for x = 1, #(qmxg) do
  xgpy = szpy + qmxg[x]["offset"]
  xglx = qmxg[x]["type"]
  xgsz = qmxg[x]["value"]
  gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}})
  xgsl = xgsl + 1
 end
end
function xqmnb(CrAzY)
 gg.clearResults()
 gg.setRanges(CrAzY[1]["memory"])
 gg.searchNumber(CrAzY[3]["value"], CrAzY[3]["type"])
 if gg.getResultCount() == 0 then
  gg.toast(CrAzY[2]["name"] .. "فشل التفعيل")
 else
  gg.refineNumber(CrAzY[3]["value"], CrAzY[3]["type"])
  gg.refineNumber(CrAzY[3]["value"], CrAzY[3]["type"])
  gg.refineNumber(CrAzY[3]["value"], CrAzY[3]["type"])
  if gg.getResultCount() == 0 then
   gg.toast(CrAzY[2]["name"] .. "فشل التفعيل")
  else
   sl = gg.getResults(999999)
   sz = gg.getResultCount()
   xgsl = 0
   if sz > 999999 then
    sz = 999999
   end
   for i = 1, sz do
    pdsz = true
    for v = 4, #(CrAzY) do
     if pdsz == true then
      pysz = {}
      pysz[1] = {}
      pysz[1].address = sl[i].address + CrAzY[v]["offset"]
      pysz[1].flags = CrAzY[v]["type"]
      szpy = gg.getValues(pysz)
      pdpd = CrAzY[v]["lv"] .. ";" .. szpy[1].value
      szpd = split(pdpd, ";")
      tzszpd = szpd[1]
      pyszpd = szpd[2]
      if tzszpd == pyszpd then
       pdjg = true
       pdsz = true
      else
       pdjg = false
       pdsz = false
      end
     end
    end
    if pdjg == true then
     szpy = sl[i].address
     xgxc(szpy, qmxg)
     xgjg = true
    end
   end
   if xgjg == true then
    gg.toast(CrAzY[2]["name"] .. "Modified " .. xgsl .. " Values🔍")
   else
    gg.toast(CrAzY[2]["name"] .. "فشل التفعيل")
   end
  end
 end
end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) xgsl = xgsl + 1 end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) xgjg = true end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功,共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "开启失败") end end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find (szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len (szFullString)) break end nSplitArray[nSplitIndex] = string.sub (szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len (szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, qmxg) for x = 1, #(qmxg) do xgpy = szpy + qmxg[x]["offset"] xglx = qmxg[x]["type"] xgsz = qmxg[x]["value"] xgdj = qmxg[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function xqmnb(qmnb) gg.clearResults() gg.setRanges(qmnb[1]["memory"]) gg.searchNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) gg.refineNumber(qmnb[3]["value"], qmnb[3]["type"]) if gg.getResultCount() == 0 then gg.toast(qmnb[2]["name"] .. "开启失败") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(qmnb) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + qmnb[v]["offset"] pysz[1].flags = qmnb[v]["type"] szpy = gg.getValues(pysz) pdpd = qmnb[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, qmxg) end end if xgjg == true then gg.toast(qmnb[2]["name"] .. "开启成功，一共修改" .. xgsl .. "条数据") else gg.toast(qmnb[2]["name"] .. "未搜索到数据，开启失败") end end end end function SearchWrite(Search, Write, Type) gg.clearResults() gg.setVisible(false) gg.searchNumber(Search[1][1], Type) local count = gg.getResultCount() local result = gg.getResults(count) gg.clearResults() local data = {} local base = Search[1][2] if (count > 0) then for i, v in ipairs(result) do v.isUseful = true end for k=2, #Search do local tmp = {} local offset = Search[k][2] - base local num = Search[k][1] for i, v in ipairs(result) do tmp[#tmp+1] = {} tmp[#tmp].address = v.address + offset tmp[#tmp].flags = v.flags end tmp = gg.getValues(tmp) for i, v in ipairs(tmp) do if ( tostring(v.value) ~= tostring(num) ) then result[i].isUseful = false end end end for i, v in ipairs(result) do if (v.isUseful) then data[#data+1] = v.address end end if (#data > 0) then local t = {} local base = Search[1][2] for i=1, #data do for k, w in ipairs(Write) do offset = w[2] - base t[#t+1] = {} t[#t].address = data[i] + offset t[#t].flags = Type t[#t].value = w[1] if (w[3] == true) then local item = {} item[#item+1] = t[#t] item[#item].freeze = true gg.addListItems(item) end end end gg.setValues(t) gg.toast("开启成功，一共修改"..#t.."条数据") gg.addListItems(t) else gg.toast("未搜索到数据，开启失败", false) return false end else gg.toast("Not Found") return false end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then 
end end end end

function edit(orig,ret)_om=orig[1].memory or orig[1][1]_ov=orig[3].value or orig[3][1]_on=orig[2].name or orig[2][1]
gg.clearResults()gg.setRanges(_om)gg.searchNumber(_ov,orig[3].type or orig[3][2])sz=gg.getResultCount()if sz<1 then gg.toast(_on.." 开启失败")else sl=gg.getResults(50000)for i=1,sz do ist=true for v=4,#orig do if ist==true and sl[i].value==_ov then cd={{}}cd[1].address=sl[i].address+(orig[v].offset or orig[v][2])cd[1].flags=orig[v].type or orig[v][3]szpy=gg.getValues(cd)cdlv=orig[v].lv or orig[v][1]cdv=szpy[1].value if cdlv==cdv then pdjg=true ist=true else pdjg=false ist=false end end end if pdjg==true then szpy=sl[i].address for x=1,#(ret)do xgpy=szpy+(ret[x].offset or ret[x][2])xglx=ret[x].type or ret[x][3]xgsz=ret[x].value or ret[x][1]xgdj=ret[x].freeze or ret[x][4]xgsj={{address=xgpy,flags=xglx,value=xgsz}}if xgdj==true then xgsj[1].freeze=xgdj gg.addListItems(xgsj)else gg.setValues(xgsj)end end xgjg=true end end if xgjg==true then gg.toast(_on.." 开启成功")else gg.toast(_on.." 开启失败")end end end

function split(szFullString, szSeparator) local nFindStartIndex = 1 local nSplitIndex = 1 local nSplitArray = {} while true do local nFindLastIndex = string.find(szFullString, szSeparator, nFindStartIndex) if not nFindLastIndex then nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, string.len(szFullString)) break end nSplitArray[nSplitIndex] = string.sub(szFullString, nFindStartIndex, nFindLastIndex - 1) nFindStartIndex = nFindLastIndex + string.len(szSeparator) nSplitIndex = nSplitIndex + 1 end return nSplitArray end function xgxc(szpy, Loading1) for x = 1, #(Loading1) do xgpy = szpy + Loading1[x]["address"] xglx = Loading1[x]["flags"] xgsz = Loading1[x]["value"] xgdj = Loading1[x]["freeze"] if xgdj == nil or xgdj == "" then gg.setValues({[1] = {address = xgpy, flags = xglx, value = xgsz}}) else gg.addListItems({[1] = {address = xgpy, flags = xglx, freeze = xgdj, value = xgsz}}) end xgsl = xgsl + 1 xgjg = true end end function LoadingQ(Loading) gg.setRanges(Loading[1]["memory"]) gg.searchNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) gg.refineNumber(Loading[3]["value"], Loading[3]["flags"]) if gg.getResultCount() == 0 then gg.toast(Loading[2]["Projects"] .. "Load失败❌") else sl = gg.getResults(999999) sz = gg.getResultCount() xgsl = 0 if sz > 999999 then sz = 999999 end for i = 1, sz do pdsz = true for v = 4, #(Loading) do if pdsz == true then pysz = {} pysz[1] = {} pysz[1].address = sl[i].address + Loading[v]["address"] pysz[1].flags = Loading[v]["flags"] szpy = gg.getValues(pysz) pdpd = Loading[v]["lv"] .. ";" .. szpy[1].value szpd = split(pdpd, ";") tzszpd = szpd[1] pyszpd = szpd[2] if tzszpd == pyszpd then pdjg = true pdsz = true else pdjg = false pdsz = false end end end if pdjg == true then szpy = sl[i].address xgxc(szpy, Loading1) end end if xgjg == true then
end end end end

-- -- -- -- -- -- -- -- -- --Check Files-- -- -- -- -- -- -- -- -- --
DATA = io.open("/storage/emulated/0/Android/data/jok/facr.dat", "rb")
DATATWO = io.open("/storage/emulated/0/Android/data/jok/jkr.dat", "rb")

if DATA==nil or DATATWO==nil then
gg.alert("Please Start The Antiban First ❗\n\nلفتح السكربت قم بتشغيل الحماية اولاً ❗")
os.exit()
end

local PKGNAME = DATA:read()
local ANDID = DATATWO:read()

-- -- -- -- -- -- -- -- -- --Check Package-- -- -- -- -- -- -- -- -- -- --

First = gg.isPackageInstalled("me.jagar.jokerantiban") if First == false then gg.alert("السكربت خاص لمشتركيين الجوكر") os.exit() end

-- -- -- -- -- -- -- -- -- --Check open-- -- -- -- -- -- -- -- -- -- --

ProgressBar = "║░░░░░░░░░░░░░░░║"
for _FORV_3_ = 1, 15 do
gg.sleep(200)
ProgressBar = ProgressBar:gsub("░", "▓", 1)
gg.toast(ProgressBar)
end
gg.setVisible(false)
gg.alert(os.date(" 🤡ALJOKER🇦🇪⁩ＶＩＰ🤡⁦⁦⁦ \n  لاتنسى تفعل حماية لوبي"))
HOME = 1
function HOME()
MN = gg.choice({
"『🔄 ترسيت سريع 『』",
"『⁩⁦🛡️⁩قائمة حمايات لوبي سيرفرات『』",
"『🚦 قـائـمـة ولهاك والوان 『』",
"『✔️ ثـبـات سـلاح 75 لوبي 『』",
"『🗃️⁩ التفعيلات الامنه بالقيم ⁦『』",
"⁦⁩⁩『⁦🗃️⁩قائمة التفعيلات غير امنه بالقيم 『』",
"『🗃️⁩ قائمة الست سكوب بالقيم 『』",
"『🚀قائمة السرعات بالقيم ⁩⁦『』",
"『🔚 خروج 『』",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if MN ==nil then else 
if MN == 1 then DATAONOFF() end
if MN == 2 then ABAN() end
if MN == 3 then wlhack() end
if MN == 4 then thbatv2() end
if MN == 5 then gam() end
if MN == 6 then gam2() end
if MN == 7 then standsco() end
if MN == 8 then speed() end
if MN == 9 then exit() end
end
PUBGMH = -1
end


function thbatv2()
gg["clearResults"]()
gg["setRanges"](gg["REGION_ANONYMOUS"])
gg.searchNumber("1,348,759,109;1,953,067,887;1,634,692,166;1,920,287,604:512", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg.searchNumber("1,634,692,166", gg["TYPE_DWORD"], false, gg["SIGN_EQUAL"], 0, -1)
gg["getResults"](10)
gg["editAll"]("0", gg["TYPE_DWORD"])
gg["clearResults"]()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4;1.09375::5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2~4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡⁦")
end



function DATAONOFF()
gg.clearResults()                   
gg.setRanges(gg.REGION_CODE_APP)                 
gg.searchNumber('220676386071773185', gg.TYPE_QWORD)                  
gg.getResults(69)                 
gg.editAll('220676386036121600', gg.TYPE_QWORD)          
gg.toast("📵 ɪɴᴛᴇʀɴᴇᴛ ᴅɪsᴄᴏɴɴᴇᴄᴛᴇᴅ 📵")        
gg.sleep(6000)                 
gg.editAll('220676386071773185', gg.TYPE_QWORD)                 
gg.clearResults()
gg.toast("✅ ɪɴᴛᴇʀɴᴇᴛ ᴄᴏɴɴᴇᴄᴛᴇᴅ ✅")
end






function ABAN()
SN=gg.multiChoice({
"『 حماية لوبي سيرفر العالمية رقم1 🛡️⁩』",
"『 حماية لوبي جميع سيرفرات العالمية رقم2 🛡️⁩』", 
"『 حماية لوبي جميع سيرفرات العالمية رقم3 🛡️⁩』",
"『 حماية لوبي جميع سيرفرات العالمية رقم4 🛡️⁩』",
"『 حماية لوبي جميع سيرفرات العالمية رقم5 🛡️⁩』",
"『 حماية لوبي جميع سيرفرات كوريه فيتناميه رقم1🔑 』",
"『 حماية لوبي جميع سيرفرات كوريه فيتناميه رقم2🔑 』",
"『 حماية لوبي جميع سيرفرات كوريه فيتناميه رقم3🔑 』",
"⁦⁦ 🤸 رجوع للخلف 🤸 ",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if SN ==nil then else 
if SN[1]== true then AAL3() end
if SN[2]== true then AL2() end
if SN[3]== true then AL3() end
if SN[4]== true then AL4() end
if SN[5]== true then AL5() end
if SN[6]== true then krr1() end
if SN[7]== true then krr2() end
if SN[8]== true then krr3() end
if SN[9]== true then HOME() end
end
PUBGMH = -1
end



function clearlog()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud/*")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog/tbslog.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs/ShadowTrackerExtra-backup-2019.04.15-05.04.17.log")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Match")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Loading")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifsbk")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/ODPaks")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Activity")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/GEM")
os.remove("/storage/emulated/0/Tencent")
os.remove("/storage/emulated/0/.backups/com.tencent.ig")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/Store/")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/LobbyBubble/")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/SaveGames/loginInfoFile.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.tencent.ig/app_appcache")
os.remove("/data/data/com.tencent.ig/app_bugly")
os.remove("/data/data/com.tencent.ig/app_crashrecord")
os.remove("/data/data/com.tencent.ig/cache")
os.remove("/data/data/com.tencent.ig/code_cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.pubg.krmobile/app_appcache")
os.remove("/data/data/com.pubg.krmobile/app_bugly")
os.remove("/data/data/com.pubg.krmobile/app_crashrecord")
os.remove("/data/data/com.pubg.krmobile/cache")
os.remove("/data/data/com.pubg.krmobile/code_cache")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.vng.pubgmobile/app_appcache")
os.remove("/data/data/com.vng.pubgmobile/app_bugly")
os.remove("/data/data/com.vng.pubgmobile/app_crashrecord")
os.remove("/data/data/com.vng.pubgmobile/cache")
os.remove("/data/data/com.vng.pubgmobile/code_cache")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/cache")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ca-bundle.pem")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/ProgramBinaryCache")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_temp")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_47_0.13.0.11098_20190617165748_1981158817_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/UpdateInfo")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/PufferTmpDir")
os.remove("/data/data/com.rekoo.pubgm/app_appcache")
os.remove("/data/data/com.rekoo.pubgm/app_bugly")
os.remove("/data/data/com.rekoo.pubgm/app_crashrecord")
os.remove("/data/data/com.rekoo.pubgm/cache")
os.remove("/data/data/com.rekoo.pubgm/code_cache")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.pubgmhd/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.pubgmhd/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.rekoo.pubgm/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.DecByExad/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.tmgp.DecByExad/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.tmgp.DecByExad/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.DecByExad/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.tmgp.DecByExad/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.igce/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/mnt/shell/0/emulated/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/cache/GCloud.ini")
os.remove("/sdcard/Android/data/com.tencent.iglite/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/cache")
os.remove("/storage/emulated/0/tencent")
os.remove("/storage/emulated/0/MidasOverse")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/tbslog")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/login-identifier.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/cacheFile.txt")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/vmpcloudconfig.json")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/GameErrorNoRecords")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/AntiCheat.ini")
os.remove("/storage/emulated/0/Android/data/com.vng.pubgmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Config/Android/IGH5CachePluginConfig.ini")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations")
os.remove("src/main/java/com/google/errorprone/annotations/concurrent")
os.remove("third_party.java_src.error_prone.project.annotations.Google_internal")
gg.toast("joker")
end



function AAL3()
clearlog()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", 4, false, 536870912, 0, -1)
gg.refineNumber("67109377", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633", 4, false, 536870912, 0, -1)
gg.refineNumber("67109633", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({[1] = {address = 3153762356,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762372,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762376,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762536,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762540,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762544,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762638,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = 3153762738,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762788,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762808,flags = 4,freeze = true,value = 4451}})
gg.addListItems({[1] = {address = 3153762908,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = 3153762918,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762968,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763058,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763258,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763408,flags = 4,freeze = true,value = 70086}})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("4452", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
gg.setVisible(false)
gg.alert("الجوكر تم كسر الحماية")
clearlog()
end
end
end




function AL2()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", 4, false, 536870912, 0, -1)
gg.refineNumber("67109377", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌")
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("Failed Restart Game And Try , لم يتم التفعيل !! ❌")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
n = gg.getResultCount()
jz = gg.getResults(n)
for i = 1, n do
gg.addListItems({[1] = {address = jz[i].address - 252,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address - 236,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address - 232,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address - 72,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address - 68,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address - 64,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 30,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = jz[i].address + 130,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 180,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 200,flags = 4,freeze = true,value = 4451}})
gg.addListItems({[1] = {address = jz[i].address + 300,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = jz[i].address + 310,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 360,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 450,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 650,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = jz[i].address + 800,flags = 4,freeze = true,value = 70086}})
end
gg.clearResults()
end
gg.clearResults()
gg.clearResults()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({[1] = {address = 3153762356,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762372,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762376,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762536,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762540,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762544,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762638,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = 3153762738,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762788,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762808,flags = 4,freeze = true,value = 4451}})
gg.addListItems({[1] = {address = 3153762908,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = 3153762918,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762968,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763058,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763258,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763408,flags = 4,freeze = true,value = 70086}})
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633", 4, false, 536870912, 0, -1)
gg.refineNumber("67109633", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌")
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("4452", gg.TYPE_DWORD)
gg.clearResults()
gg.alert("الجوكر تم كسر الحماية")
clearlog()
end
end
end





function AL3()
clearlog()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", 4, false, 536870912, 0, -1)
gg.refineNumber("67109377", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633", 4, false, 536870912, 0, -1)
gg.refineNumber("67109633", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1.3039565e21;-3.6907917e20;-1.3620364e28;-3.6893509e20:13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.3620364e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-5.8454592e27;-5.7318526e27;-1.3620364e28:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.3620364e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("136,303", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67,109,633;196,867:50", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("67,109,377;70,658:200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("70,658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("132,098", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("131,586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("65,536;458,752;393,216:521", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("19,507", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("19,168", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("550292,01", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("131586", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(13122002)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.clearResults()
gg.searchNumber("67598982", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("67598981", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
revert = gg.getResults(50000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("262,403", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
revert = gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil)
for i, i in ipairs((gg.getResults(100000, nil, nil, nil, nil, nil, nil, nil, nil))) do
if i.flags == gg.TYPE_DWORD then
i.value = "0"
i.freeze = true
end
end
gg.clearResults()
gg.alert("الجوكر تم كسر الحماية")
end
end
end







function AL4()
clearlog()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("7085", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({[1] = {address = 3153762356,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762372,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762376,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762536,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762540,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762544,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762638,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = 3153762738,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762788,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762808,flags = 4,freeze = true,value = 4451}})
gg.addListItems({[1] = {address = 3153762908,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = 3153762918,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762968,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763058,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763258,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763408,flags = 4,freeze = true,value = 70086}})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("4452", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
gg.setVisible(false)
gg.alert("الجوكر تم كسر الحماية")
clearlog()
end



function AL5()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", 16, false, 536870912, 0, -1)
if gg["getResultCount"]() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg["searchNumber"]("2.2958874e-41", 16, false, 536870912, 0, -1)
n = gg["getResultCount"]()
jz = gg["getResults"](n)
for i = 1, n do
gg["addListItems"]({[1] = {address = jz[i].address + 4,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 8,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 12,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 16,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 0,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 64,flags = 4,freeze = true,value = 0}})
gg["addListItems"]({[1] = {address = jz[i].address - 128,flags = 4,freeze = true,value = 177777}})
gg["addListItems"]({[1] = {address = jz[i].address - 132,flags = 4,freeze = true,value = 177777}})
gg["toast"]("JOKER 50% 注入成功")
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["getResults"](100)
gg["searchNumber"]("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["getResults"](100)
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.6", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.7", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.5;0.4::60", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["editAll"]("5", 64)
gg["editAll"]("9", 64)
gg["editAll"]("4.66", 64)
gg["editAll"]("5.5", 64)
gg["clearResults"]()
gg["toast"]("JOKER 70% 注入成功")
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("0.00000268536;6.66435296e-10", 16)
gg["getResults"](999)
gg["editAll"]("7.69856500626", 16)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("909391408", 4)
gg["getResults"](999)
gg["editAll"]("1089886885", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("67109377", 4)
gg["getResults"](50000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", 16, false, 536870912, 0, -1)
gg["searchNumber"]("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", 16, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("0.00000268536;6.66435296e-10", 16)
gg["getResults"](999)
gg["editAll"]("7.69856500626", 16)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("909391408", 4)
gg["getResults"](999)
gg["editAll"]("1089886885", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.5047707e-36", 16)
gg["getResults"](50000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.50472478e-36", 16)
gg["getResults"](50000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["searchNumber"]("131586", 4, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["searchNumber"]("12547", 4, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", 4, false, 536870912, 0, -1)
jg = gg["getResults"](100)
sl = gg["getResultCount"]()
if 100 < sl then
sl = 100
end
for i = 1, sl do
dzy = jg[i].address
gg["addListItems"]({[1] = {address = dzy,flags = 16,freeze = true,value = -1}})
end
gg["toast"]("JOKER 100% 注入成功")
gg["clearResults"]()
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/cache/GCloud.ini")
os["remove"]("/sdcard/Android/data/com.tencent.ig/cache/GCloud.ini")
os["remove"]("/sdcard/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os["remove"]("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
gg.alert("الجوكر تم كسر الحماية")
end
end
end



--نسخ الكوريه


function krr1()
clearlog()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109377", 4, false, 536870912, 0, -1)
gg.refineNumber("67109377", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("67109633", 4, false, 536870912, 0, -1)
gg.refineNumber("67109633", 4, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
local searchCount = gg.getResultCount()
local searchResults = gg.getResults(searchCount)
for i, v in ipairs(searchResults) do
  v.freeze = true
  v.flags = 4
  v.value = 0
end
gg.addListItems(searchResults)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.searchNumber("2.2958874e-41", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.getResults(1)
gg.addListItems({[1] = {address = 3153762356,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762372,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762376,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762536,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762540,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762544,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762638,flags = 4,freeze = true,value = 119}})
gg.addListItems({[1] = {address = 3153762738,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762788,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762808,flags = 4,freeze = true,value = 4451}})
gg.addListItems({[1] = {address = 3153762908,flags = 4,freeze = true,value = 0}})
gg.addListItems({[1] = {address = 3153762918,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153762968,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763058,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763258,flags = 4,freeze = true,value = 70086}})
gg.addListItems({[1] = {address = 3153763408,flags = 4,freeze = true,value = 70086}})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD)
gg.getResults(50000)
gg.editAll("4452", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1801989935;1768710958;1920233061;1919905893::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1801989935;1768710958;1920233061;1919905893", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1130852172;1852139884::14", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1130852172;1852139884", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(140701)
gg.getResults(140701)
gg.addListItems({})
gg.clearResults()
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/RoleInfo/RoleInfo.json")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Pandora")
os.remove("/storage/emulated/0/Android/data/com.tencent.ig/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Intermediate/SaveGames/JKGuestRegisterCnt.json")
gg.setVisible(false)
gg.alert("الجوكر تم كسر الحماية")
clearlog()
end
end
end





function krr2()
clearlog()
 gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("1401", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_QWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_QWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.sleep(1401)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_QWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("70658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("133378", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("67109633", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_QWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134658", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setRanges(gg.REGION_C_ALLOC)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.searchNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("134914", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    local xJOKER10x = gg.getResults(140701)
    for i, v in ipairs(xJOKER10x) do
        xJOKER10x[i].flags = gg.TYPE_DWORD
        xJOKER10x[i].value = '0'
        xJOKER10x[i].freeze = true
    end
    gg.addListItems(xJOKER10x)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
    gg.setVisible(false)
    gg.clearResults()
gg.alert("الجوكر تم كسر الحماية")
clearlog()
end


function krr3()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("2.2958874e-41;16384D;16384D;16384D;16384D;16384D::24", 16, false, 536870912, 0, -1)
if gg["getResultCount"]() == 0 then
gg.alert("❌❌ فشل اغلق اللعبه وحاول مره أخرى ❌❌\n تأكد  من العبه جهازك اندرويد 10 نزل لعبه 32bit")
gg.setVisible(true)
gg.processKill()
os.exit()
else
gg["searchNumber"]("2.2958874e-41", 16, false, 536870912, 0, -1)
n = gg["getResultCount"]()
jz = gg["getResults"](n)
for i = 1, n do
gg["addListItems"]({[1] = {address = jz[i].address + 4,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 8,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 12,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 16,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 0,flags = 4,freeze = true,value = 70086}})
gg["addListItems"]({[1] = {address = jz[i].address + 64,flags = 4,freeze = true,value = 0}})
gg["addListItems"]({[1] = {address = jz[i].address - 128,flags = 4,freeze = true,value = 177777}})
gg["addListItems"]({[1] = {address = jz[i].address - 132,flags = 4,freeze = true,value = 177777}})
gg["toast"]("JOKER 50% 注入成功")
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["getResults"](100)
gg["searchNumber"]("1.2F;1.8F:9::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1F;1.4F:3::1", 64, false, 536870912, 0, -1)
gg["searchNumber"]("1.1D;1.4D:2::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["getResults"](100)
gg["searchNumber"]("5001;1.1;1F::10", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("5001", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.6", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.7", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["clearResults"]()
gg["searchNumber"]("1.5;0.4::60", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["searchNumber"]("1.5", 64, false, 536870912, 0, -1)
gg["getResults"](10)
gg["editAll"]("5", 64)
gg["editAll"]("9", 64)
gg["editAll"]("4.66", 64)
gg["editAll"]("5.5", 64)
gg["clearResults"]()
gg["toast"]("JOKER 70% 注入成功")
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("0.00000268536;6.66435296e-10", 16)
gg["getResults"](999)
gg["editAll"]("7.69856500626", 16)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("909391408", 4)
gg["getResults"](999)
gg["editAll"]("1089886885", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("67109377", 4)
gg["getResults"](50000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F;2.52466305e-29F:13", 16, false, 536870912, 0, -1)
gg["searchNumber"]("1.43492963e-42F;2.2958874e-41F;1.40129846e-45F", 16, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("0.00000268536;6.66435296e-10", 16)
gg["getResults"](999)
gg["editAll"]("7.69856500626", 16)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("909391408", 4)
gg["getResults"](999)
gg["editAll"]("1089886885", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.5047707e-36", 16)
gg["getResults"](50000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1.50472478e-36", 16)
gg["getResults"](50000)
gg["editAll"]("0",16)
gg["clearResults"]()
gg["searchNumber"]("131586", 4, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["searchNumber"]("12547", 4, false, 536870912, 0, -1)
gg["getResults"](15000)
gg["editAll"]("0", 4)
gg["clearResults"]()
gg["setRanges"](4)
gg["searchNumber"]("1D;4,736D;-945,406,912D;65,535D;0D;-1,073,741,824D;1,150,199,959D;1,118,291,034D;1,752,132,736D;-393,244,672D:37", 4, false, 536870912, 0, -1)
jg = gg["getResults"](100)
sl = gg["getResultCount"]()
if 100 < sl then
sl = 100
end
for i = 1, sl do
dzy = jg[i].address
gg["addListItems"]({[1] = {address = dzy,flags = 16,freeze = true,value = -1}})
end--ʙʏ ᴇᴀʀʟ
gg["toast"]("JOKER 100% 注入成功")
gg["clearResults"]()
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os["remove"]("/sdcard/Android/data/com.pubg.krmobile/cache/GCloud.ini")
os["remove"]("/sdcard/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Logs")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer-temp")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/1375135419_117_0.12.5.11041_20190515120925_1255231495_cures.ifs.res")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/apollo_reslist.flist")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/filelist.json")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/puffer_res.eifs")
os["remove"]("/storage/emulated/0/Android/data/com.pubg.krmobile/files/UE4Game/ShadowTrackerExtra/ShadowTrackerExtra/Saved/Paks/PufferFileList.json")
gg.alert("الجوكر تم كسر الحماية")
end
end
end



function gam()
JOK12 = gg.multiChoice({
"❰⚪50%هيدشوت (بالقيم)🥇❱",
"❰🔵75%هيدشوت (بالقيم)🥈❱",
"🔴تصغير مؤشر الرمي 🔴",
"🎥 تشغيل كاميرة الايباد 🎥",
" 🌲اخفاء الشجر والعشب 🌱",
"⁦🌫️⁩ ازالة الضباب ⁦🌫️⁩",
"❰⬛ سماء سوداء ⬛❱",
"❰🦕 الانتينا 🦕❱",
"⁦⁦ 🤸 رجوع للخلف 🤸 ",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")if JOK12 == nil then
else
if JOK12[1] == true then HS50() end
if JOK12[2] == true then HS75() end
if JOK12[3] == true then puls() end
if JOK12[4] == true then camera360on() end
if JOK12[5] == true then nogras() end
if JOK12[6] == true then nofog() end
if JOK12[7] == true then blacksky() end
if JOK12[8] == true then ANTENAL() end
if JOK12[9] == true then HOME() end
end
PUBGMH = -1
end




function HS50()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120;150", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ALJOKER🇦🇪⁩ＶＩＰ🤡")
end

function HS75()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-89999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-99999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("75", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("200", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("290", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("ALJOKER🇦🇪⁩ＶＩＰ🤡") 
end


function camera360on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.clearResults()
gg.searchNumber('220;178;15 ', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('220', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll('350', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('ᴄᴀᴍᴇʀᴀ ᴘʟᴀʏᴇʀ x5')
end




function nogras()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("0.00390625;1;0.99900001287;2", gg.TYPE_FLOAT, false)
gg.searchNumber("1", gg.TYPE_FLOAT, false)
gg.getResults(40000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('🌿🍀🌱No Grass Engel ✔')
end


function nofog()
gg.clearResults()              
gg.setRanges(gg.REGION_CODE_APP)               
gg.searchNumber('-1759781550398895551', gg.TYPE_QWORD)              
gg.getResults(69)               
gg.editAll('-1759781550398895550', gg.TYPE_QWORD)              
gg.clearResults()             
gg.toast("سماء صافيه")
end


function blacksky()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('2,316,057,506,595,471,460', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('2,316,057,506,595,471,460', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineAddress('008', -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('2,316,057,506,595,471,460', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll('2,316,057,506,595,471,459', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("black Sky Activated") 
end


function ANTENAL()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("88.50576019287F;87.27782440186F;-100.91194152832F;1F::13", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("88.50576019287F;87.27782440186F;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("1.96875;1.96875;999;1.96875;1.96875;999", gg.TYPE_FLOAT)
end


function puls() 
gg.setRanges(32)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", 16)
gg.clearResults()
gg.toast("Small Crosshair Activated") 
end


function gam2()
JOK12 = gg.multiChoice({
"❰🎯 %ثبات سلاح 100 🎯❱",
"❰🤡 طلقة الجوكر بالقيم🤡❱",
"❰ 1 SHOT JOKER ⁩️❱",
"❰🤡خلطة ابو عليＶＩＰ🤡❱",
"❰⁦ 🇦🇪  خلطة مشتركين الجوكر VIP 🇦🇪⁩❱",
"❰ هيد شوت 100 (بالقيم)❱",
"❰هيد شووت 600❱",
"❰✂️انستا هيد ⁩️❱",
"❰✂️أيم بوت 360 ⁩️❱",
"❰ايم بوت 50 ❱",
"❰⚓أيم لوك ⚓⁩️❱",
"❰💣️⁩ ماجيك ⁦💣⁩️❱",  
"❰🤾تشغيل نقزه للامام 🤾⁩️❱",
"❰🤾ايقاف نقزه للامام 🤾⁩️❱",
"⁦⁦ 🤸 رجوع للخلف 🤸 ",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")if JOK12 == nil then
else
if JOK12[1]  == true then NOREC() end
if JOK12[2]  == true then HS95() end
if JOK12[3]  == true then shot() end
if JOK12[4]  == true then mixhead() end
if JOK12[5]  == true then mixhead22() end
if JOK12[6]  == true then HS100() end
if JOK12[7]  == true then HSHOT600() end
if JOK12[8]  == true then instanthit() end
if JOK12[9]  == true then aimbotv1() end
if JOK12[10]  == true then aimbotv2() end
if JOK12[11]  == true then aimluck() end
if JOK12[12]  == true then magicv1() end
if JOK12[13] == true then jumptojump()end
if JOK12[14] == true then jumptojump1()end
if JOK12[15] == true then HOME() end
end
PUBGMH = -1
end


function NOREC()
gg.clearResults()
gg.setRanges(8)
gg.setVisible(false)
gg.searchNumber("-2.2673448e24;-1.36203639e28", 16, false, 536870912, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
gg.searchNumber("-1.36203639e28", 16, false, 536870912, 0, -1)
gg.setVisible(false)
gg.setVisible(false)
gg.getResults(99)
gg.editAll("0", 16)
gg.clearResults()
gg.setVisible(false)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("3.8126822e-21;-1.1144502e28;-2.0291021e20:9", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("328")
gg.getResults(551)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.2~0.3;53;30;1::", 16, false, 536870912, 0, -1)
gg.searchNumber("0.2~0.3;1::", 16, false, 536870912, 0, -1)
gg.getResults(200)
gg.editAll("0", 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.2673448e24;-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1.36203639e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-2.8111605e28;-3.7444097e28;-1.1144502e28;128.0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-6.1549454e27;1.8638966e-20;-1.1144502e28;0::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1.1144502e28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1903895931231645696", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("-1281263098870628352", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("2~4;1.09375;1;18;3.5::25", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4;1.09375::5", 16, false, 536870912, 0, -1)
gg.searchNumber("2~4", 16, false, 536870912, 0, -1)
gg.getResults(50)
gg.editAll("-0.5", 16)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡⁦")
end





function HS100()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber('"0.10000000149;64.50088500977"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.10000000149"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡⁦") 
end


function HS95()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-89999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-99999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("245", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡⁦") 
end


function instanthit()
  gg.clearResults()
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
  gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  
  gg.getResults(99)
  gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
  gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡⁦") 
end


function mixhead()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-89999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-99999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("245", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.sleep(500)
gg.setRanges(16384)
gg.searchNumber('-5.72943416e27;-1.36203639e28:5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-1.36203639e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('-1.36204147e28', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-1.11445016E28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('7B8', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(891)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1903895931231645696", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1281263098870628352", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99) 
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1903895931231645696", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1281263098870628352", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99) 
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber('"0.10000000149;64.50088500977"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.10000000149"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("69.5;35;33", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("200", 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)  
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡 تم تفعيل الخلطه ") 
end



function mixhead22()
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-89999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("28", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(92)
gg.editAll("-99999960", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;20.51941871643;2.04908943176;-86.45767974854;-92.2311706543;16.0", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("16", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("100", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("245", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber("150;85;45;-129;-85", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("400", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.sleep(500)
gg.setRanges(16384)
gg.searchNumber('-5.72943416e27;-1.36203639e28:5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-1.36203639e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('-1.36204147e28', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-1.11445016E28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('7B8', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(891)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1903895931231645696", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1281263098870628352", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99) 
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1903895931231645696", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1281263098870628352", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99) 
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber('"0.10000000149;64.50088500977"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('"0.10000000149"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("8", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.201618;30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("30.5;25", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("220", gg.TYPE_FLOAT)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP)
gg.searchNumber("-298284466;-1.304566e23F", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("-298284466", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(99)
gg.editAll("0", gg.TYPE_DWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA | gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("69.5;35;33", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("200", 16)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("10;45", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("10", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("9999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡 تم تفعيل الخلطه ") 
end



function HSHOT600() -- 0.19.0
gg.clearResults()
gg.setRanges(gg.REGION_BAD)
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.getResults(99)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.toast("جاري التفعيل 🤡") 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("33000~99999;30D;10D::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("33000~99999", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1000000", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1F;-8.6457681e12F;15F;28F;16F;26F;8F;18F:512",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("15.0F;28.0F;16.0F;26.0F;8.0F;18.0F:512",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(500)
gg.editAll("95",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Headshot 600% Activated")
end



function aimbotv1()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('"2015175168"', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
revert = gg.getResults(100, nil, nil, nil, nil, nil, nil, nil, nil)                                                                                      --BBB 
gg.editAll('"0"', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Aimbot activated!")
end




function aimbotv2()
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-290,174,237', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-290,174,237', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('E00', -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('0', gg.TYPE_DWORD)
gg.clearResults()
gg.toast("تم تفعيل ايمبوت ٥٠ متر")
end



function aimluck()
gg.clearResults()
gg.setRanges(gg.REGION_C_DATA)
gg.searchNumber("-1,387,800,265,460,020,720", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-1,387,800,268,334,956,544", gg.TYPE_QWORD)
gg.clearResults()
gg.toast(" ايم لوك ") 
end


function magicv1()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("69.5;35;33", 16, false, 536870912, 0, -1)
gg.getResults(6)
gg.editAll("200", 16)
gg.clearResults()
gg.toast("Magic Bullet activated!")
end




function jumptojump()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16;4,575,657,222,473,777,152;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,575,657,222,473,777,152", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,575,657,222,488,624,988", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,133,903,872;4,611,686,019,455,831,245;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,611,686,019,455,831,245", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,611,686,019,501,674,988", gg.TYPE_QWORD) 
gg.clearResults()
gg.toast("تم تفعيل النقزه للأمام ")
end


function jumptojump1()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("16;4,575,657,222,488,624,988;1,065,353,216;17,179,869,188:37", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,575,657,222,488,624,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,575,657,222,473,777,152", gg.TYPE_QWORD)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1,133,903,872;4,611,686,019,501,674,988;1,103,626,240;4,575,657,222,517,817,344:25", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(1000)
gg.searchNumber("4,611,686,019,501,674,988", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("4,611,686,019,455,831,245", gg.TYPE_QWORD) 
gg.clearResults()
gg.toast("تم الغاء النقزه للأمام ")
end






function shot()
gg.clearResults()
gg.searchNumber("-88.66608428955;26:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("26", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-460", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("-88.73961639404;28:512", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(2)
gg.editAll("-560", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("9.20161819458;23;25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("25;30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.searchNumber("30.5", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("260", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;1F", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("0.07", gg.TYPE_FLOAT)
gg.clearResults()
gg.sleep(500)
gg.setRanges(16384)
gg.searchNumber('-5.72943416e27;-1.36203639e28:5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber('-1.36203639e28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll('-1.36204147e28', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(16384)
gg.searchNumber('-1.11445016E28', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress('7B8', -1, gg.TYPE_FLOAT, gg.SIGN_EQUAL, 0, -1)
gg.getResults(891)
gg.editAll('130', gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("740", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1903895931231645695", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1903895931231645696", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.refineAddress("7B0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1) 
gg.refineNumber("-1281263094875551231", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(1401) 
gg.editAll("-1281263098870628352", gg.TYPE_QWORD) 
gg.clearResults() 
gg.clearResults() 
gg.setRanges(gg.REGION_CODE_APP) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.searchNumber("-1,883,348,481,058,764,210", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1) 
gg.getResults(99) 
gg.editAll("-1,883,348,485,055,444,540", gg.TYPE_QWORD)
gg.toast("⁦ALJOKER🇦🇪⁩ＶＩＰ🤡🤡  ") 
end


function wlhack()
BDYMN = gg.choice({
"❰⁦📱 قائمة الول هاك 📱❱",
"❰⁦⁦❤️⁩قائمة الألوان 💛❱",
"❰ ⁦⬅️ [Back - رجوع]⬅️❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if BDYMN == nil then
else
if BDYMN == 1 then
WH()
end
if BDYMN == 2 then
CLR()
end
if BDYMN == 5 then
HOME()
end
end
PUBGMH = -1
end



function WH()
WHMN = gg.choice({
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 425 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 430 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 625 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 625 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 636 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 660 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 675 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 675 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 710 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 810 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 820 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 835 🔴❱",
"❰🔵 sɴᴀᴘᴅʀᴀɢᴏɴ 845 🔵❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 855 🔴❱",
"❰🔴 sɴᴀᴘᴅʀᴀɢᴏɴ 865 🔴❱",
"❰⬅️ [Back - رجوع]⬅️❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if WHMN == nil then
else
if WHMN == 1 then
WH425()
end
if WHMN == 2 then
WH430()
end
if WHMN == 3 then
WH625()
end
if WHMN == 4 then
WH6252()
end
if WHMN == 5 then
WH636()
end
if WHMN == 6 then
WH660()
end
if WHMN == 7 then
WH675()
end
if WHMN == 8 then
WH6752()
end
if WHMN == 9 then
WH710()
end
if WHMN == 10 then
WH810()
end
if WHMN == 11 then
WH820()
end
if WHMN == 12 then
WH835()
end
if WHMN == 13 then
WH845()
end
if WHMN == 14 then
WH855()
end
if WHMN == 15 then
wh865()
end
if WHMN == 16 then
HOME()
end
end
PUBGMH = -1
end




function wh865()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.12020508e-19;3.76158192e-37;2.0;0.24022650719;0.69314718246::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
jg=gg.getResults(100)
sl=gg.getResultCount()
if sl>100 then sl=100 end
for i = 1, sl do
dzy=jg[i].address
gg.addListItems({[1] = {address = dzy,flags = gg.TYPE_FLOAT,freeze = true,value = 120}})
end
gg.toast("865")
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("1.25414346e-19;1.7506772e-39;2.0;1.8425141e-39;1.74488844e-39::\n", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("120", gg.TYPE_FLOAT)
gg.toast("865V2")
gg.clearResults()
end


 
function twef()
gg.setRanges(8)
gg.searchNumber("1.1754945e-37", 16, false, 536870912, 0, -1)
gg.refineAddress("4E8")
gg.getResults(30)
gg.editAll("0", 16)
gg.sleep(5000)
gg.searchNumber("0", 16)
gg.refineAddress("4E8")
gg.getResults(30)
gg.editAll("1.1754945e-37", 16)
end


function WH425()
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("2.9427268e-44;2.0;3.0828566e-44;-1.0;3.2229865e-44;3.3631163e-44;3.643376e-44:97", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.searchNumber("3.1529215e-43;2.0F;3.1669345e-43F;3.1809475e-43:49", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("120", 16)
gg.clearResults()
gg.setRanges(4)
gg.searchNumber("227;1,073,741,824;1,073,741,824;-1,082,130,432;1,073,741,824:49", 4, false, 536870912, 0, -1)
gg.searchNumber("1,073,741,824", 4, false, 536870912, 0, -1)
gg.getResults(100)
gg.editAll("1,123,024,896", 4)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 425] Activated")
CLR425()
end

function WH430()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 430] Activated")
CLR()
end

function WH625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("135,215D;4,140D;3.7615819e-37;2::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("194D;3.7615819e-37;2;-1;1;-127::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("130", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 625] Activated")
CLR()
end

function WH6252()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.79227989e21;-5.56955884e-40;2.0;1.39125666e-19;2.0:9285", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 625] Activated")
CLR()
end

function WH636()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5.1097599e21;2.0;1.6623071e-19;3.6734297e-39;1.66433e10::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.0;-1.0;0.0;1.0;-127.0::17", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(30)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 636] Activated")
CLR()
end

function WH660()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 660] Activated")
CLR()
end

function WH675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("274,677,779D;2.25000452995;2;1.6623054e-19", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(20)
gg.editAll("130", 16)
gg.toast("25%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("218D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.toast("50%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("95D;2;9.2194229e-41", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(15)
gg.editAll("130", 16)
gg.toast("75%")
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("206D;3.7615819e-37;2;-1;1", 16, false, 536870912, 0, -1)
gg.searchNumber("2", 16, false, 536870912, 0, -1)
gg.getResults(10)
gg.editAll("130", 16)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 675] Activated")
CLR675()
end

function WH6752()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("200")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("930")
gg.getResults(20)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(330, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("14", gg.TYPE_DWORD)
gg.clearResults()
end

function WH710()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 710] Activated")
CLR()
end

function WH810()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 810] Activated")
gg.clearResults()
CLR()
end

function WH820()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 820] Activated")
CLR()
end

function WH835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 835] Activated")
CLR()
end

function WH845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 845] Activated")
CLR845()
end

function WH855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("-2 145 644 340", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("7E0", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.searchNumber("-2 147 483 636", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("4F8", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
gg.getResults(100)
gg.editAll("1 168 777 216", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("WALLHACK [SnapDragon 855] Activated")
CLR855()
end

function ALLD()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("2;1.8947657e-40;5.8013756e-42", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("2.718519e-43;3.7615819e-37;2;-1;1;-127", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("2", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("120", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("WALLHACK [All Devices] Activated")
CLR()
end

function CLR425()

CLRMN425 = gg.choice({
"❰🔴ʀᴇᴅ ʙᴏᴅʏ 425 🔴❱",
"❰☣️ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 425 ☣️ ❱",
"❰⬅️[Back - رجوع] ⬅️ ❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if CLRMN425 == nil then
else
if CLRMN425 == 1 then
RED425()
end
if CLRMN425 == 2 then
YELL425()
end
if CLRMN425 == 3 then
HOME()
end
end
PUBGMH = -1
end



function CLR675()
 
CLRMN675 = gg.choice({
"❰⚪ ᴡʜɪᴛᴇ ʙᴏᴅʏ 675 ⚪ ❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 675 🔵 ❱",
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 675 ♎ ❱",
"❰⬅️ [Back - رجوع]⬅️ ❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if CLRMN675 == nil then
else
if CLRMN675 == 1 then
WHITE675()
end
if CLRMN675 == 2 then
BLUE675()
end
if CLRMN675 == 3 then
GREEN675()
end
if CLRMN675 == 4 then
HOME()
end
end
PUBGMH = -1
end


function CLR845()
 
CLRMN845 = gg.choice({
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 845 🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 845 ☣️❱",
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 845 ♎ ❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 845🔵 ❱",
"❰⬅️ [Back - رجوع] ⬅️ ❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if CLRMN845 == nil then
else
if CLRMN845 == 1 then
RED845()
end
if CLRMN845 == 2 then
YELL845()
end
if CLRMN845 == 3 then
GREEN845()
end
if CLRMN845 == 4 then
BLUE845()
end
if CLRMN845 == 5 then
HOME()
end
end
PUBGMH = -1
end



function CLR855()
 
CLRMN855 = gg.choice({
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 855 ♎❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 855☣️❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 855 🔵❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 855 🔴❱",
"❰⬅️ [Back - رجوع]⬅️❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if CLRMN855 == nil then
else
if CLRMN855 == 1 then
GREEN845()
end
if CLRMN855 == 2 then
YELL855()
end
if CLRMN855 == 3 then
BLUE845()
end
if CLRMN855 == 4 then
RED855()
end
if CLRMN855 == 5 then
HOME()
end
end
PUBGMH = -1
end




function CLR()
 
CLRMN = gg.choice({
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 425 🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 425☣️❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 625🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 625 ☣️❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 660🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 660☣️❱",
"❰⚪ ᴡʜɪᴛᴇ ʙᴏᴅʏ 675⚪❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 675🔵❱",
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 675♎❱",
"❰⚪ ᴡʜɪᴛᴇ ʙᴏᴅʏ ᴀʟʟ⚪❱",
"❰⚫ ʙʟᴀᴄᴋ ʙᴏᴅʏ ᴀʟʟ⚫❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 835 🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835☣️❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 845 🔴❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 845☣️❱",
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 845♎❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 845🔵❱",
"❰♎ ɢʀᴇᴇɴ ʙᴏᴅʏ 855♎❱",
"❰☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 855 ☣️❱",
"❰🔵 ʙʟᴜᴇ ʙᴏᴅʏ 855🔵❱",
"❰🔴 ʀᴇᴅ ʙᴏᴅʏ 855🔴❱",
"❰🔴 ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 865 🔴❱",
"❰⬅️ [Back - رجوع]⬅️❱"
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if CLRMN == nil then
else
if CLRMN == 1 then
RED425()
end
if CLRMN == 2 then
YELL425()
end
if CLRMN == 3 then
RED625()
end
if CLRMN == 4 then
YELL625()
end
if CLRMN == 5 then
RED625()
end
if CLRMN == 6 then
YELL625()
end
if CLRMN == 7 then
WHITE675()
end
if CLRMN == 8 then
BLUE675()
end
if CLRMN == 9 then
GREEN675()
end
if CLRMN == 10 then
WHITEALL()
end
if CLRMN == 11 then
BLACKALL()
end
if CLRMN == 12 then
RED835()
end
if CLRMN == 13 then
YELL835()
end
if CLRMN == 14 then
RED845()
end
if CLRMN == 15 then
YELL845()
end
if CLRMN == 16 then
GREEN845()
end
if CLRMN == 17 then
BLUE845()
end
if CLRMN == 18 then
GREEN845()
end
if CLRMN == 19 then
YELL855()
end
if CLRMN == 20 then
BLUE845()
end
if CLRMN == 21 then
RED855()
end
if CLRMN == 22 then
RED865()
end
if CLRMN == 23 then
HOME()
end
end
PUBGMH = -1
end
 


function RED865()
qmnb = {
{["memory"] = 1048576},
{["name"] = "Yellow"},
{["value"] = 8204, ["type"] = 4},
{["lv"] = 8192, ["offset"] = 8, ["type"] = 4},
{["lv"] = 8196, ["offset"] = 16, ["type"] = 4},
{["lv"] = 8199, ["offset"] = 24, ["type"] = 4},
{["lv"] = 8200, ["offset"] = 32, ["type"] = 4},
{["lv"] = 1080035353, ["offset"] = 132, ["type"] = 4},
}
qmxg = {
{["value"] = 6, ["offset"] = 32, ["type"] = 4},
{["value"] = 120, ["offset"] = -15328, ["type"] = 16},
{["value"] = 120, ["offset"] = -6240, ["type"] = 16},

}
xqmnb(qmnb)
end


function GREEN675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("69,897;147,457;69,739", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("Color 675 Green ")
gg.clearResults()
end

function WHITE675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8202", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(330)
gg.editAll("14", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Body HD White Activated")
end

function BLUE675()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineAddress("2D0", -1, gg.TYPE_QWORD, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("5,129,821,174,980,681,738", gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll("5,129,821,174,980,673,543", gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Blue Body Activated")
end

function RED425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("408", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("96", gg.TYPE_DWORD)
gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.toast("Red Body Activated")
end

function YELL425()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8204", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.processResume()
gg.refineAddress("408", -1, gg.TYPE_DWORD, gg.SIGN_EQUAL, 0, -1)
revert = gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("95", gg.TYPE_DWORD)
gg.addListItems((gg.getResults(10, nil, nil, nil, nil, nil, nil, nil, nil)))
gg.clearResults()
gg.toast("Yellow Body Activated")
end

function RED625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Body Activated")
end

function YELL845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8201", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.refineAddress("0A0")
gg.getResults(10)
gg.editAll("8199", gg.TYPE_DWORD)
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow Body Activated")
end

function YELL625()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("1,080,033,292D;786,441D;8,200D:21::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("8198", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Yellow Body Activated")
end

function WHITEALL()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("White Body Activated")
end

function BLACKALL()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("573.70306396484;0.05499718338;1::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1)
gg.editAll("-999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("Black Body Activated")
end

function RED835()
gg.clearResults()
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("🔴 ʀᴇᴅ ʙᴏᴅʏ 835 Activated")
end

function YELL835()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5129822240132571145', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll('5129822240132571143', gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("لون اصفر")
gg.clearResults()
gg.toast("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 835 Activated")
end

function RED845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Color Activated")
end


function YELL855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5129822240132571145', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll('5129822240132571143', gg.TYPE_QWORD)
gg.clearResults()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.toast("لون اصفر")
gg.clearResults()
gg.toast("☣️ ʏᴇʟʟᴏᴡ ʙᴏᴅʏ 855 Activated")
end

function GREEN845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5129822240132571145', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll('5129822240132571143', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Green Body Activated")
end

function BLUE845()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO)
gg.searchNumber('5129822240132571145', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(69)
gg.editAll('5129822240132571142', gg.TYPE_QWORD)
gg.clearResults()
gg.toast("Blue Body Activated")
end



function RED855()
gg.clearResults()
gg.setRanges(gg.REGION_VIDEO or gg.REGION_BAD)
gg.searchNumber("8,196D;8,192D;8,200D::", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("8200", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(10)
gg.editAll("7", gg.TYPE_DWORD)
gg.clearResults()
gg.toast("Red Body Activated")
end


function standsco()
standhadiM = gg.multiChoice({
" ⬆️⁩ تشغيل سيت سكوب ⁦⬆️ ⁩⁩",
" 🔽 ايقاف سيت سكوب ⁦🔽 ⁩⁩",
" ⬆️⁩ تشغيل ستاند سكوب ⁦⬆️ ⁩⁩",
" 🔽 ايقاف ستاند سكوب ⁦🔽 ⁩⁩",
" ⬆️⁩ تشغيل ستاند شوت ⁦⬆️ ⁩⁩",
" 🔽 ايقاف ستاند شوت ⁦🔽 ⁩⁩",
"⁦⁦ 🤸 رجوع للخلف 🤸 ",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if standhadiM == nil then else
if standhadiM[1] == true then SITONESCOP() end
if standhadiM[2] == true then SITSCOPEOFF() end
if standhadiM[3] == true then STANDSCOPEON() end
if standhadiM[4] == true then STANDSCOPEOFF() end
if standhadiM[5] == true then SOON() end
if standhadiM[6] == true then SOFF() end
if standhadiM[7] == true then HOME() end
end
PUBGMH = -1
end


function SITONESCOP()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;9.49029350281;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(0)
gg.searchNumber("9.49029350281", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("124", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("  تم  تشغيل الست سكوب ")
end


function SITSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("-0.67914116382599;-0.20633073151112;-0.68966287374496;124;0.0064272880554199", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(0)
gg.searchNumber("124", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
local t = gg.getResults(500)
gg.editAll("9.49029350281", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast(" تم  ايقاف الست سكوب ")
end


function STANDSCOPEON()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4138667321167981973', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4848124999984742400', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Sit Scope Front activated!')
end


function STANDSCOPEOFF()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.sleep(140)
gg.refineNumber('4848124999984742400', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(1401)
gg.editAll('4138667321167981973', gg.TYPE_QWORD)
gg.clearResults()
gg.toast('Stand Scope Deactivated!')
end

function SOON()
gg.clearResults()              
gg.setRanges(gg.REGION_C_BSS)            
gg.searchNumber('3497450139768418399', gg.TYPE_QWORD)            
gg.getResults(69)             
gg.editAll('9074961892185783746', gg.TYPE_QWORD)            
gg.clearResults()               
gg.toast('on!')
end


function SOFF()
gg.clearResults()               
gg.setRanges(gg.REGION_C_BSS)              
gg.searchNumber('9074961892185783746', gg.TYPE_QWORD)              
gg.getResults(69)              
gg.editAll('3497450139768418399', gg.TYPE_QWORD)               
gg.clearResults()               
gg.toast('off!')
end



function speed()
speedM = gg.choice({
"🔧 『 اصلاح دمج الاسلحه 』",
	" 『 تشغيل سبيد فلاش 』",
	" 『 ايقاف سبيد فلاش  』",
    " 『 تشغيل سرعة لاعب متوسط 』",
    " 『 تشغيل سبيد نوك    』",
    " 『🚙 تفعيل سرعة الجيب  』",
    " 『🚗ايقاف سرعة الداسيا   』",
    " 『🚀 نزول سريع PC    』",
    " 『 ⁦☂️⁩نزول سريع بارشوت    』",
    " 『🚙 سرعة الجيب بنزين لاينتهي  』",
     "『🚙  طيران الجيب 』",
     "『🚙  طيران داسيا 』",
	"✘ رجوع ✘",
}, nil, "╔─━━━━━━━━░░ 🇦🇪  ░░━━━━━━━━─╗\n             🔹🔹〘 ALJOKER114 〙🔹\n🔹 Telegram ⟮ @ALKING114 ⟯ للتواصل 🔹 \n╚─━━━━━━━━░░ 🇦🇪   ░░━━━━━━━━─╝")
if speedM == nil then else
if speedM == 1 then FIXDMG() end
if speedM == 2 then speedon() end
if speedM == 3 then speedof() end
if speedM == 4 then speedmedium() end
if speedM == 5 then speednock() end
if speedM == 6 then speedjeeb() end
if speedM == 7 then speeddacia() end
if speedM == 8 then nzoll() end
if speedM == 9 then fastparashot() end
if speedM == 10 then app2() end
if speedM == 11 then appgap() end
if speedM == 12 then DACIAJUMP() end
if speedM == 13 then HOME() end
end
PUBGMH = -1
end



function FIXDMG()
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("50000~100000;0;1;5D~100D::13", 16, false, 536870912, 0, -1)
if gg.getResultCount() == 0 then
gg.toast("قم بالتفعيل مرة ثانية")
else
gg.searchNumber("50000~100000", 16, false, 536870912, 0, -1)
RFSSMG1 = gg.getResults(210)
gg.editAll("32465", 16)
gg.clearResults()
gg.toast("تم إصلاح دمج الأسلحة")
end 
gg.clearResults()
end


function speedon()
gg.clearResults()                                
gg.setRanges(gg.REGION_CODE_APP)                                 
gg.searchNumber('-1292522026557240760', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)                                   --USHACKS0
gg.getResults(69)                                 
gg.editAll('-1292522029219577856', gg.TYPE_QWORD)                                  
gg.clearResults()                                 
gg.toast('Flash Speed Activated!')
end


function speedof()
gg.clearResults()                                  
gg.setRanges(gg.REGION_CODE_APP)                                  
gg.searchNumber('-1292522029219577856', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)                                   --USHACKS0
gg.getResults(69)                                  
gg.editAll('-1292522026557240760', gg.TYPE_QWORD)                                
gg.clearResults()          
gg.clearResults()                                  
gg.setRanges(gg.REGION_CODE_APP)                                  
gg.searchNumber('-1292522029219577856', gg.TYPE_QWORD, false, gg.SIGN_EQUAL, 0, -1)                                   --USHACKS0
gg.getResults(69)                                  
gg.editAll('-1292522026557240760', gg.TYPE_QWORD)                                
gg.clearResults()                       
gg.toast('Flash Speed Deactivated!')
end




function speedmedium() -- 0.19.0
gg.clearResults() 
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1;1;1;0.0001;20;0.0005;0.4::50", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(300)
gg.editAll("1.06", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Medium Speed activated!')
end



function speednock()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0;7.0064923e-45;1;100;1;2,500,000,000.0;0.10000000149;88",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.searchNumber("1",gg.TYPE_FLOAT,false,gg.SIGN_EQUAL,0,-1)
gg.getResults(100)
gg.editAll("9999",gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("نووك سريع تفعيل")
end

function speedjeeb()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('0.647058857;0.30000001192;0.94117647409::9', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.647058857;0.30000001192::5', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(50)
gg.editAll('50.241295', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Jeep Speed activated!')
end 

function speeddacia()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1000;10;4D;4D;50;5;2;0.03::', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.searchNumber('0.03', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(280)
gg.editAll('-0.23', gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Speed Dacia activated!')
end


function app2() 
gg.clearResults()
gg.setRanges(32)
gg.searchNumber("0.647058857", 16, false, 536870912, 0, -1)--LemonaHack
gg.getResults(30)
gg.editAll("-180", 16)
gg.clearResults()
gg.toast(" تم تفعيل سرعة الجيب وبنزين لا ينتهي ")
end



function nzoll()
gg.clearResults()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber("2048D;4D;1F;1F;1D:30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResultsCount()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("3000;5000;1024;1000::", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(3472849)
gg.editAll("999999", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("تم تفعيل النزول السريع🛬🤡")
end



function fastparashot()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.75;150;1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("1", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("30", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("0.75;150;30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.refineNumber("0.75", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
gg.getResults(999)
gg.editAll("0", gg.TYPE_FLOAT)
gg.clearResults()
gg.toast("تم تفعيل النزول السريع🛬🤡")
end


function DACIAJUMP()
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("30;6;22050", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("999", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
end





function appgap() 
gg.clearResults()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
gg.refineNumber("45;20;2500", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1, 0)
revert = gg.getResults(61, nil, nil, nil, nil, nil, nil, nil, nil)
gg.editAll("955", gg.TYPE_FLOAT)
gg.sleep(1000)
if revert ~= nil then gg.setValues(revert) end
gg.clearResults()
gg.toast("🚀 Activated! 🚀")
end


function exit()
print('⁦ALJOKER🇦🇪⁩ＶＩＰ🤡')
gg.skipRestoreState()
gg.setVisible(true)
os.exit()
end
while true do
if gg.isVisible(true) then
PUBGMH = 1
gg.setVisible(false)
end
gg.clearResults()
if PUBGMH == 1 then
HOME()
end
end