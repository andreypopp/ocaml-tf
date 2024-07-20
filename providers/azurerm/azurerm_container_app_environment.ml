(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type workload_profile = {
  maximum_count : float prop option; [@option]
  minimum_count : float prop option; [@option]
  name : string prop;
  workload_profile_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : workload_profile) -> ()

let yojson_of_workload_profile =
  (function
   | {
       maximum_count = v_maximum_count;
       minimum_count = v_minimum_count;
       name = v_name;
       workload_profile_type = v_workload_profile_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_workload_profile_type
         in
         ("workload_profile_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_minimum_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "minimum_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_maximum_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "maximum_count", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : workload_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_workload_profile

[@@@deriving.end]

type azurerm_container_app_environment = {
  dapr_application_insights_connection_string : string prop option;
      [@option]
  id : string prop option; [@option]
  infrastructure_resource_group_name : string prop option; [@option]
  infrastructure_subnet_id : string prop option; [@option]
  internal_load_balancer_enabled : bool prop option; [@option]
  location : string prop;
  log_analytics_workspace_id : string prop option; [@option]
  mutual_tls_enabled : bool prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  zone_redundancy_enabled : bool prop option; [@option]
  timeouts : timeouts option;
  workload_profile : workload_profile list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_environment) -> ()

let yojson_of_azurerm_container_app_environment =
  (function
   | {
       dapr_application_insights_connection_string =
         v_dapr_application_insights_connection_string;
       id = v_id;
       infrastructure_resource_group_name =
         v_infrastructure_resource_group_name;
       infrastructure_subnet_id = v_infrastructure_subnet_id;
       internal_load_balancer_enabled =
         v_internal_load_balancer_enabled;
       location = v_location;
       log_analytics_workspace_id = v_log_analytics_workspace_id;
       mutual_tls_enabled = v_mutual_tls_enabled;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       zone_redundancy_enabled = v_zone_redundancy_enabled;
       timeouts = v_timeouts;
       workload_profile = v_workload_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_workload_profile then bnds
         else
           let arg =
             (yojson_of_list yojson_of_workload_profile)
               v_workload_profile
           in
           let bnd = "workload_profile", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_zone_redundancy_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "zone_redundancy_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mutual_tls_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "mutual_tls_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_log_analytics_workspace_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "log_analytics_workspace_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_internal_load_balancer_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "internal_load_balancer_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "infrastructure_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_infrastructure_resource_group_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "infrastructure_resource_group_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_dapr_application_insights_connection_string with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd =
               "dapr_application_insights_connection_string", arg
             in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let workload_profile ?maximum_count ?minimum_count ~name
    ~workload_profile_type () : workload_profile =
  { maximum_count; minimum_count; name; workload_profile_type }

let azurerm_container_app_environment
    ?dapr_application_insights_connection_string ?id
    ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id
    ?mutual_tls_enabled ?tags ?zone_redundancy_enabled ?timeouts
    ~location ~name ~resource_group_name ~workload_profile () :
    azurerm_container_app_environment =
  {
    dapr_application_insights_connection_string;
    id;
    infrastructure_resource_group_name;
    infrastructure_subnet_id;
    internal_load_balancer_enabled;
    location;
    log_analytics_workspace_id;
    mutual_tls_enabled;
    name;
    resource_group_name;
    tags;
    zone_redundancy_enabled;
    timeouts;
    workload_profile;
  }

type t = {
  tf_name : string;
  custom_domain_verification_id : string prop;
  dapr_application_insights_connection_string : string prop;
  default_domain : string prop;
  docker_bridge_cidr : string prop;
  id : string prop;
  infrastructure_resource_group_name : string prop;
  infrastructure_subnet_id : string prop;
  internal_load_balancer_enabled : bool prop;
  location : string prop;
  log_analytics_workspace_id : string prop;
  mutual_tls_enabled : bool prop;
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
    ?internal_load_balancer_enabled ?log_analytics_workspace_id
    ?mutual_tls_enabled ?tags ?zone_redundancy_enabled ?timeouts
    ~location ~name ~resource_group_name ~workload_profile __id =
  let __type = "azurerm_container_app_environment" in
  let __attrs =
    ({
       tf_name = __id;
       custom_domain_verification_id =
         Prop.computed __type __id "custom_domain_verification_id";
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
       mutual_tls_enabled =
         Prop.computed __type __id "mutual_tls_enabled";
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
           ?log_analytics_workspace_id ?mutual_tls_enabled ?tags
           ?zone_redundancy_enabled ?timeouts ~location ~name
           ~resource_group_name ~workload_profile ());
    attrs = __attrs;
  }

let register ?tf_module ?dapr_application_insights_connection_string
    ?id ?infrastructure_resource_group_name ?infrastructure_subnet_id
    ?internal_load_balancer_enabled ?log_analytics_workspace_id
    ?mutual_tls_enabled ?tags ?zone_redundancy_enabled ?timeouts
    ~location ~name ~resource_group_name ~workload_profile __id =
  let (r : _ Tf_core.resource) =
    make ?dapr_application_insights_connection_string ?id
      ?infrastructure_resource_group_name ?infrastructure_subnet_id
      ?internal_load_balancer_enabled ?log_analytics_workspace_id
      ?mutual_tls_enabled ?tags ?zone_redundancy_enabled ?timeouts
      ~location ~name ~resource_group_name ~workload_profile __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
