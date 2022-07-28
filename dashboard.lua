tbMemory = System.GetMemoryInfo();
display = System.GetDisplayInfo();
bits = System.Is64BitOS();
Label.SetText("total_ram", ""..tbMemory.TotalRAM.." MB");
Label.SetText("status", tbMemory.MemoryLoad);
Label.SetText("av_ram", ""..tbMemory.AvailableRAM.." MB");
Label.SetText("display_info", ""..display.Width.." X " ..display.Height.."");

if bits then
Label.SetText("64Bots", "YES");
else
Label.SetText("64Bots", "NO");
end

Page.StartTimer(250, 10);
Page.StartTimer(2500, 20);
Page.StartTimer(500, 99);
d_counter=0;


if e_ID == 10 then
--memoryload = System.GetMemoryInfo(MemoryLoad)
refresh = System.GetMemoryInfo();
Label.SetText("status", ""..refresh.MemoryLoad.."%");
end

if e_ID == 20 then
--memoryload = System.GetMemoryInfo(MemoryLoad)
refresh = System.GetMemoryInfo();
Label.SetText("av_ram", ""..refresh.AvailableRAM.." MB");
end

if e_ID == 2 then
Progress.SetCurrentPos("logs_progress", 100);
Progress.SetText("logs_progress", "All logs deleted!");
end


--btn_1
Progress.SetVisible("clear_ram", true);
Progress.SetCurrentPos("clear_ram", 15);
Progress.SetText("clear_ram", "CLEANING RAM...")
Progress.SetCurrentPos("clear_ram", 50);
File.Run("AutoPlay\\temp\\ram_speed_1.bat", "", "", SW_HIDE, true);
File.Run("AutoPlay\\temp\\ram_speed_2.bat", "", "", SW_HIDE, true);
Progress.SetCurrentPos("clear_ram", 100);
Progress.SetText("clear_ram", "RAM CLEARED!");

--btn_2
Progress.SetVisible("logs_progress", true);
Progress.SetCurrentPos("logs_progress", 15);
Progress.SetText("logs_progress", "Deleting Logs...")
Progress.SetCurrentPos("logs_progress", 50);
File.Run("AutoPlay\\temp\\delete_logs.bat", "", "", SW_HIDE, false);
Page.StartTimer(6000, 2);

--btn_3
Progress.SetVisible("delete_tempfiles", true);
Progress.SetCurrentPos("delete_tempfiles", 15);
Progress.SetText("delete_tempfiles", "Deleting TempFiles...")
Progress.SetCurrentPos("delete_tempfiles", 50);
File.Run("AutoPlay\\temp\\ram_speed_1.bat", "", "", SW_HIDE, true);
Progress.SetCurrentPos("delete_tempfiles", 100);
Progress.SetText("delete_tempfiles", "TempFiles cleared")

--btn_4
Progress.SetVisible("gpu_priority_progress", true);
Progress.SetCurrentPos("gpu_priority_progress", 15);
Progress.SetText("gpu_priority_progress", "GPU Tweaking...")
Progress.SetCurrentPos("gpu_priority_progress", 50);
-- FUNC
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\GraphicsDrivers","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\GraphicsDrivers\\Power","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm\\NVAPI","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm\\Global\\NVTweak","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Progress.SetCurrentPos("gpu_priority_progress", 100);
Progress.SetText("gpu_priority_progress", "GPU Tweaked!")
-- FUNC


--btn_5
Progress.SetVisible("gpu_tweaks_pr", true);
Progress.SetCurrentPos("gpu_tweaks_pr", 15);
Progress.SetText("gpu_tweaks_pr", "GPU Tweaking...")
Progress.SetCurrentPos("gpu_tweaks_pr", 50);
-- FUNC

Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\GraphicsDrivers","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\GraphicsDrivers\\Power","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm\\NVAPI","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\nvlddmkm\\Global\\NVTweak","RmGpsPsEnablePerCpuCoreDpc","1",REG_DWORD);
Progress.SetCurrentPos("gpu_tweaks_pr", 100);
Progress.SetText("gpu_tweaks_pr", "GPU Tweaked!")


--btn_6
Progress.SetVisible("gpuoptimization", true);
Progress.SetCurrentPos("gpuoptimization", 15);
Progress.SetText("gpuoptimization", "Increasing FPS...")
Progress.SetCurrentPos("gpuoptimization", 50);
Registry.CreateKey(HKEY_LOCAL_MACHINE,"SYSTEM\\ControlSet001\\Control\\PriorityControl");Registry.CreateKey(HKEY_LOCAL_MACHINE,"SYSTEM\\ControlSet001\\Control\\PriorityControl");
Progress.SetCurrentPos("gpuoptimization", 100);
Progress.SetText("gpuoptimization", "FPS Increased!")


--btn_7
Progress.SetVisible("cpuoptimization", true);
Progress.SetCurrentPos("cpuoptimization", 15);
Progress.SetText("cpuoptimization", "Increasing FPS...")
Progress.SetCurrentPos("cpuoptimization", 50);

Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\Spooler","Start","4",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\PrintNotify","Start","4",REG_DWORD);
Registry.CreateKey(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\PrintWorkflowUserSvc");
Progress.SetCurrentPos("cpuoptimization", 100);
Progress.SetText("cpuoptimization", "FPS Increased!")

--btn_8
Progress.SetVisible("cpuoptimi", true);
Progress.SetCurrentPos("cpuoptimi", 15);
Progress.SetText("cpuoptimi", "Setting CPU Priority")
Progress.SetCurrentPos("cpuoptimi", 50);

Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\Spooler","Start","4",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\PrintNotify","Start","4",REG_DWORD);
Registry.CreateKey(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Services\\PrintWorkflowUserSvc");
Progress.SetCurrentPos("cpuoptimi", 100);
Progress.SetText("cpuoptimi", "PU Priority Configured")

--btn_9
Progress.SetVisible("cputhort", true);
Progress.SetCurrentPos("cputhort", 15);
Progress.SetText("cputhort", "CPU Throtolling...")
Progress.SetCurrentPos("cputhort", 50);


Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\54533251-82be-4824-96c1-47b60b740d00\\943c8cb6-6f93-4227-ad87-e9a3feec08d1","Attributes","2",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\2a737441-1930-4402-8d77-b2bebba308a3\\d4e98f31-5ffe-4ce1-be31-1b38b384c009\\DefaultPowerSchemeValues\\381b4222-f694-41f0-9685-ff5bb260df2e","ACSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\2a737441-1930-4402-8d77-b2bebba308a3\\d4e98f31-5ffe-4ce1-be31-1b38b384c009\\DefaultPowerSchemeValues\\381b4222-f694-41f0-9685-ff5bb260df2e","DCSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\2a737441-1930-4402-8d77-b2bebba308a3\\d4e98f31-5ffe-4ce1-be31-1b38b384c009\\DefaultPowerSchemeValues\\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c","ACSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\54533251-82be-4824-96c1-47b60b740d00\\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\\DefaultPowerSchemeValues\\381b4222-f694-41f0-9685-ff5bb260df2e","ACSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\54533251-82be-4824-96c1-47b60b740d00\\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\\DefaultPowerSchemeValues\\381b4222-f694-41f0-9685-ff5bb260df2e","DCSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerSettings\\54533251-82be-4824-96c1-47b60b740d00\\3b04d4fd-1cc7-4f23-ab1c-d1337819c4bb\\DefaultPowerSchemeValues\\8c5e7fda-e8bf-4a96-9a85-a6e23a8c635c","ACSettingIndex","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\DriverSearching","SearchOrderConfig","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Session Manager\\Power","HiberbootEnabled","0",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power\\PowerThrottling","PowerThrottlingOff","1",REG_DWORD);
Registry.SetValue(HKEY_LOCAL_MACHINE,"SYSTEM\\CurrentControlSet\\Control\\Power","HibernateEnabledDefault","0",REG_DWORD);

Progress.SetCurrentPos("cputhort", 100);
Progress.SetText("cputhort", "CPU Throtolling Disabled!")




