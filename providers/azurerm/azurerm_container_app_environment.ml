(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type workload_profile = {
  maximum_count : float prop;  (** maximum_count *)
  minimum_count : float prop;  (** minimum_count *)
  name : string prop;  (** name *)
  workload_profile_type : string prop;  (** workload_profile_type *)
}
[@@deriving yojson_of]
(** workload_profile *)

type azurerm_container_app_environment = {
  dapr_application_insights_connection_string : string prop option;
      [@option]
      (** Application Insights connection string used by Dapr to export Service to Service communication telemetry. *)
  id : string prop option; [@option]  (** id *)
  infrastructure_resource_group_name : string prop option; [@option]
      (** Name of the platform-managed resource group created for the Managed Environment to host infrastructure resources. **Note:** Only valid if a `workload_profile` is specified. If `infrastructure_subnet_id` is specified, this resource group will be created in the same subscription as `infrastructure_subnet_id`. *)
  infrastructure_subnet_id : string prop option; [@option]
      (** The existing Subnet to use for the Container Apps Control Plane. **NOTE:** The Subnet must have a `/21` or larger address space. *)
  internal_load_balancer_enabled : bool prop option; [@option]
      (** Should the Container Environment operate in Internal Load Balancing Mode? Defaults to `false`. **Note:** can only be set to `true` if `infrastructure_subnet_id` is specified. *)
  location : string prop;  (** location *)
  log_analytics_workspace_id : string prop option; [@option]
      (** The ID for the Log Analytics Workspace to link this Container Apps Managed Environment to. *)
  name : string prop;
      (** The name of the Container Apps Managed Environment. *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  zone_redundancy_enabled : bool prop option; [@option]
      (** zone_redundancy_enabled *)
  timeouts : timeouts option;
  workload_profile : workload_profile list;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let workload_profile ~maximum_count ~minimum_count ~name
    ~workload_profile_type () : workload_profile =
  { maximum_count; minimum_count; name; workload_profile_type }

let azurerm_container_app_environment
    ?dapr_application_insights_connection_string ?id
    ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~workload_profile () :
    azurerm_container_app_environment =
  {
    dapr_application_insights_connection_string;
    id;
    infrastructure_resource_group_name;
    infrastructure_subnet_id;
    internal_load_balancer_enabled;
    location;
    log_analytics_workspace_id;
    name;
    resource_group_name;
    tags;
    zone_redundancy_enabled;
    timeouts;
    workload_profile;
  }

type t = {
  dapr_application_insights_connection_string : string prop;
  default_domain : string prop;
  docker_bridge_cidr : string prop;
  id : string prop;
  infrastructure_resource_group_name : string prop;
  infrastructure_subnet_id : string prop;
  internal_load_balancer_enabled : bool prop;
  location : string prop;
  log_analytics_workspace_id : string prop;
  name : string prop;
  platform_reserved_cidr : string prop;
  platform_reserved_dns_ip_address : string prop;
  resource_group_name : string prop;
  static_ip_address : string prop;
  tags : (string * string) list prop;
  zone_redundancy_enabled : bool prop;
}

let make ?dapr_application_insights_connection_string ?id
    ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~workload_profile __id =
  let __type = "azurerm_container_app_environment" in
  let __attrs =
    ({
       dapr_application_insights_connection_string =
         Prop.computed __type __id
           "dapr_application_insights_connection_string";
       default_domain = Prop.computed __type __id "default_domain";
       docker_bridge_cidr =
         Prop.computed __type __id "docker_bridge_cidr";
       id = Prop.computed __type __id "id";
       infrastructure_resource_group_name =
         Prop.computed __type __id
           "infrastructure_resource_group_name";
       infrastructure_subnet_id =
         Prop.computed __type __id "infrastructure_subnet_id";
       internal_load_balancer_enabled =
         Prop.computed __type __id "internal_load_balancer_enabled";
       location = Prop.computed __type __id "location";
       log_analytics_workspace_id =
         Prop.computed __type __id "log_analytics_workspace_id";
       name = Prop.computed __type __id "name";
       platform_reserved_cidr =
         Prop.computed __type __id "platform_reserved_cidr";
       platform_reserved_dns_ip_address =
         Prop.computed __type __id "platform_reserved_dns_ip_address";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       static_ip_address =
         Prop.computed __type __id "static_ip_address";
       tags = Prop.computed __type __id "tags";
       zone_redundancy_enabled =
         Prop.computed __type __id "zone_redundancy_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment
        (azurerm_container_app_environment
           ?dapr_application_insights_connection_string ?id
           ?infrastructure_resource_group_name
           ?infrastructure_subnet_id ?internal_load_balancer_enabled
           ?log_analytics_workspace_id ?tags ?zone_redundancy_enabled
           ?timeouts ~location ~name ~resource_group_name
           ~workload_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?dapr_application_insights_connection_string
    ?id ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id ?tags
    ?zone_redundancy_enabled ?timeouts ~location ~name
    ~resource_group_name ~workload_profile __id =
  let (r : _ Tf_core.resource) =
    make ?dapr_application_insights_connection_string ?id
      ?infrastructure_resource_group_name ?infrastructure_subnet_id
      ?internal_load_balancer_enabled ?log_analytics_workspace_id
      ?tags ?zone_redundancy_enabled ?timeouts ~location ~name
      ~resource_group_name ~workload_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
