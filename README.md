# OptIn

Wrapper to OptIn service.

## Usage

```ruby
opt_ins = OptIn::Client.new("http://localhost:9292")

companies = opt_ins.companies
permission_types = opt_ins.permission_types
channels = opt_ins.channels

params = {
  first_name: "some_name",
  last_name: "last_name",
  email: "some@email.com",
  mobile: "066-666-66-66",
  company_id: companies.first["id"],
  permission_type_id: permission_types.first["id"],
  channel_id: channels.first["id"]
}

response = opt_ins.create(params)

opt_ins.update(id: response["id"], first_name: 'new_name')

opt_ins.deactivate(response["id"])
```
