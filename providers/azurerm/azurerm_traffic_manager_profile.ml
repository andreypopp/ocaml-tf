(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type dns_config = { relative_name : string prop; ttl : float prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : dns_config) -> ()

let yojson_of_dns_config =
  (function
   | { relative_name = v_relative_name; ttl = v_ttl } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_ttl in
         ("ttl", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_relative_name in
         ("relative_name", arg) :: bnds
       in
       `Assoc bnds
    : dns_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_dns_config

[@@@deriving.end]

type monitor_config__custom_header = {
  name : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor_config__custom_header) -> ()

let yojson_of_monitor_config__custom_header =
  (function
   | { name = v_name; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : monitor_config__custom_header ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor_config__custom_header

[@@@deriving.end]

type monitor_config = {
  expected_status_code_ranges : string prop list option; [@option]
  interval_in_seconds : float prop option; [@option]
  path : string prop option; [@option]
  port : float prop;
  protocol : string prop;
  timeout_in_seconds : float prop option; [@option]
  tolerated_number_of_failures : float prop option; [@option]
  custom_header : monitor_config__custom_header list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor_config) -> ()

let yojson_of_monitor_config =
  (function
   | {
       expected_status_code_ranges = v_expected_status_code_ranges;
       interval_in_seconds = v_interval_in_seconds;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       timeout_in_seconds = v_timeout_in_seconds;
       tolerated_number_of_failures = v_tolerated_number_of_failures;
       custom_header = v_custom_header;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_monitor_config__custom_header
             v_custom_header
         in
         ("custom_header", arg) :: bnds
       in
       let bnds =
         match v_tolerated_number_of_failures with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tolerated_number_of_failures", arg in
             bnd :: bnds
       in
       let bnds =
         match v_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "timeout_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_port in
         ("port", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       let bnds =
         match v_interval_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "interval_in_seconds", arg in
             bnd :: bnds
       in
       let bnds =
         match v_expected_status_code_ranges with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "expected_status_code_ranges", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : monitor_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor_config

[@@@deriving.end]

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

type azurerm_traffic_manager_profile = {
  id : string prop option; [@option]
  max_return : float prop option; [@option]
  name : string prop;
  profile_status : string prop option; [@option]
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop option; [@option]
  dns_config : dns_config list;
  monitor_config : monitor_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_traffic_manager_profile) -> ()

let yojson_of_azurerm_traffic_manager_profile =
  (function
   | {
       id = v_id;
       max_return = v_max_return;
       name = v_name;
       profile_status = v_profile_status;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       traffic_routing_method = v_traffic_routing_method;
       traffic_view_enabled = v_traffic_view_enabled;
       dns_config = v_dns_config;
       monitor_config = v_monitor_config;
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
           yojson_of_list yojson_of_monitor_config v_monitor_config
         in
         ("monitor_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_dns_config v_dns_config
         in
         ("dns_config", arg) :: bnds
       in
       let bnds =
         match v_traffic_view_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "traffic_view_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_traffic_routing_method
         in
         ("traffic_routing_method", arg) :: bnds
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
         match v_profile_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "profile_status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_max_return with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_return", arg in
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
       `Assoc bnds
    : azurerm_traffic_manager_profile ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_traffic_manager_profile

[@@@deriving.end]

let dns_config ~relative_name ~ttl () : dns_config =
  { relative_name; ttl }

let monitor_config__custom_header ~name ~value () :
    monitor_config__custom_header =
  { name; value }

let monitor_config ?expected_status_code_ranges ?interval_in_seconds
    ?path ?timeout_in_seconds ?tolerated_number_of_failures ~port
    ~protocol ~custom_header () : monitor_config =
  {
    expected_status_code_ranges;
    interval_in_seconds;
    path;
    port;
    protocol;
    timeout_in_seconds;
    tolerated_number_of_failures;
    custom_header;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_traffic_manager_profile ?id ?max_return ?profile_status
    ?tags ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config () :
    azurerm_traffic_manager_profile =
  {
    id;
    max_return;
    name;
    profile_status;
    resource_group_name;
    tags;
    traffic_routing_method;
    traffic_view_enabled;
    dns_config;
    monitor_config;
    timeouts;
  }

type t = {
  fqdn : string prop;
  id : string prop;
  max_return : float prop;
  name : string prop;
  profile_status : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop;
}

let make ?id ?max_return ?profile_status ?tags ?traffic_view_enabled
    ?timeouts ~name ~resource_group_name ~traffic_routing_method
    ~dns_config ~monitor_config __id =
  let __type = "azurerm_traffic_manager_profile" in
  let __attrs =
    ({
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       max_return = Prop.computed __type __id "max_return";
       name = Prop.computed __type __id "name";
       profile_status = Prop.computed __type __id "profile_status";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       tags = Prop.computed __type __id "tags";
       traffic_routing_method =
         Prop.computed __type __id "traffic_routing_method";
       traffic_view_enabled =
         Prop.computed __type __id "traffic_view_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_traffic_manager_profile
        (azurerm_traffic_manager_profile ?id ?max_return
           ?profile_status ?tags ?traffic_view_enabled ?timeouts
           ~name ~resource_group_name ~traffic_routing_method
           ~dns_config ~monitor_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?max_return ?profile_status ?tags
    ?traffic_view_enabled ?timeouts ~name ~resource_group_name
    ~traffic_routing_method ~dns_config ~monitor_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?max_return ?profile_status ?tags ?traffic_view_enabled
      ?timeouts ~name ~resource_group_name ~traffic_routing_method
      ~dns_config ~monitor_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
