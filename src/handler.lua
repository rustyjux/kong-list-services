local kong = require("kong")

local ListServicesHandler = {}

ListServicesHandler.PRIORITY = 1000
ListServicesHandler.VERSION = "1.0.0"

function ListServicesHandler:init_worker()
    kong.log.info("🔹 [init_worker] Plugin initialized successfully.")
end

function ListServicesHandler:certificate(conf)
    kong.log.info("🔹 [certificate] kong.log is working.")
end

function ListServicesHandler:rewrite(conf)
    kong.log.info("🔹 [rewrite] kong.log is working.")
end

function ListServicesHandler:access(conf)
    kong.log.info("🚀 [access] Plugin executing...")
end

function ListServicesHandler:header_filter(conf)
    kong.log.info("🔹 [header_filter] kong.log is working.")
end

function ListServicesHandler:body_filter(conf)
    kong.log.info("🔹 [body_filter] kong.log is working.")
end

function ListServicesHandler:log(conf)
    kong.log.info("📝 [log] kong.log is working.")
end

return ListServicesHandler
