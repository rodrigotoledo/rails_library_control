every 1.minute do
  rake "book:import"
  rake "book:read"
end