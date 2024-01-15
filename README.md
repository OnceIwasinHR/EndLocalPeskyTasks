# EndLocalPeskyTasks - problem

I use some applications like STEAM, Discord and etc. They start during windows startup. Sure, i can make sure they do not do that at all. However, when my laptop is in battery mode, that is the only time i have issues with them running.

When it is in charing mode, i dont have issue as power is constant and connected to wallcharger.

Also, during exams via PearsonVue this issue occurs where i need to run system check and end all applications that are triggered by Pearsonvue Checker application.

# Solution

Use a vanilla Powershell script. Run it on demand and ensure to update with application and tasks name as needed. You can also ensure that windowns store app can be shut off via this method as well.
