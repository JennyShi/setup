start iexplore http://git-scm.com/downloads
pause
SET PATH=%PATH%;C:\Program Files\Git\bin;C:\Program Files\Git\cmd
set HOME=\Users\%username%
cd %HOME%
mkdir rallySetup
cd rallySetup
call git clone http://github.com/rohandalvi/pfs-feature
cd C:\Users\%username%\Downloads
@echo off
echo In Processing...
for %%a in (C:\Users\%username%\Downloads) do (
for /f %%i in ('dir /s /b "rally_api_emc_sso-1.0.0.gem"') do (
copy /y %%i "C:\Users\%username%\rallySetup\rally_api_emc_sso-1.0.0.gem"
))
cd %HOME%
cd rallySetup

@ECHO OFF
IF EXIST rally_api_emc_sso-1.0.0.gem (GOTO begin) else (GOTO fail)
PAUSE 

:begin
call gem install rally_api_emc_sso -l
call gem install nokogiri --source http://rubygems.org/
call gem install --version '=0.2.0' rubyntlm --source http://rubygems.org/
call gem install httpclient --source http://rubygems.org/
call gem install highline --source http://rubygems.org/
call gem install spreadsheet --source http://rubygems.org/
call gem install rspec --source http://rubygems.org/
call gem install logger --source http://rubygems.org/
call gem install document --source http://rubygems.org/
call gem install openwferu-scheduler --source http://rubygems.org/
pause

:fail
ECHO No such file rally_api_emc_sso-1.0.0.gem...
ECHO Setup fail!
PAUSE