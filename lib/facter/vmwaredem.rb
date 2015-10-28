#!/usr/bin/ruby
#
#
# author: Liam Bennett
#
# Written to work out the version of windows that the client is currently being run on.
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