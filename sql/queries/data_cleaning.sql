--Table: major_resource_projects
--Objective: removing the comma from development_region attributes

update table major_resource_project
set development_region =
left(development_region, position(',' in development_region) - 1) || right(development_region, length(development_region) - position(',' in development_region))


