local kong = require("kong")

local ListServicesHandler = {}

ListServicesHandler.PRIORITY = 1000
ListServicesHandler.VERSION = "1.0.0"

function ListServicesHandler:access(conf)
    local services, err = kong.db.services:select_all()
    
    if err then
        return kong.response.exit(500, { error = "Failed to fetch services", details = err })
    end
    
    local services_list = {}
    for _, service in ipairs(services) do
        table.insert(services_list, {
            id = service.id,
            name = service.name,
            host = service.host,
            path = service.path,
            port = service.port,
            protocol = service.protocol
        })
    end

    return kong.response.exit(200, services_list)
end

return ListServicesHandler
