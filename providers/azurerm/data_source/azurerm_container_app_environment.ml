(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_container_app_environment = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_container_app_environment) -> ()

let yojson_of_azurerm_container_app_environment =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_container_app_environment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_container_app_environment

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_container_app_environment ?id ?timeouts ~name
    ~resource_group_name () : azurerm_container_app_environment =
  { id; name; resource_group_name; timeouts }

type t = {
  default_domain : string prop;
  docker_bridge_cidr : string prop;
  id : string prop;
  infrastructure_subnet_id : string prop;
  internal_load_balancer_enabled : bool prop;
  location : string prop;
  log_analytics_workspace_name : string prop;
  name : string prop;
  platform_reserved_cidr : string prop;
  platform_reserved_dns_ip_address : string prop;
  resource_group_name : string prop;
  static_ip_address : string prop;
  tags : (string * string) list prop;
}

let make ?id ?timeouts ~name ~resource_group_name __id =
  let __type = "azurerm_container_app_environment" in
  let __attrs =
    ({
       default_domain = Prop.computed __type __id "default_domain";
       docker_bridge_cidr =
         Prop.computed __type __id "docker_bridge_cidr";
       id = Prop.computed __type __id "id";
       infrastructure_subnet_id =
         Prop.computed __type __id "infrastructure_subnet_id";
       internal_load_balancer_enabled =
         Prop.computed __type __id "internal_load_balancer_enabled";
       location = Prop.computed __type __id "location";
       log_analytics_workspace_name =
         Prop.computed __type __id "log_analytics_workspace_name";
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_container_app_environment
        (azurerm_container_app_environment ?id ?timeouts ~name
           ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
