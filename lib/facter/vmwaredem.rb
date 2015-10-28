#!/usr/bin/ruby
#
# author: Andreas Wilke
#
# Written to send the current name of the VMware DEM Worker Service as fact to master.
#
Facter.add('vmwaredem') do
  confine :kernel => :windows

  vmwaredem = 'unknown'
  begin

    if RUBY_PLATFORM.downcase.include?('mswin') or RUBY_PLATFORM.downcase.include?('mingw32')
      require 'win32/registry'

      Win32::Registry::HKEY_LOCAL_MACHINE.open('SYSTEM\CurrentControlSet\services') do |reg|
        reg.each_key do |key|
		  if key =~ /DEM-Worker/
            vmwaredem = key
          end
        end
      end
    end
  rescue

  end

  setcode do
    vmwaredem
  end
end
