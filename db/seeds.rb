# Roles
puts '# Roles'
regra_admin = Role.create!(name: "admin", description: "Administrator", value: "Administrator")
regra_editor = Role.create!(name: "editor", description: "Editor", value: "Editor")
regra_client = Role.create!(name: "client", description: "Cliente", value: "Client")