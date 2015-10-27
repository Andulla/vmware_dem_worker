Facter.add(:vmwaredemworker) do
  confine :kernel => 'windows'
  setcode do
    Facter::Core::Execution.exec("sc queryex type= service state= all")
  end
end
