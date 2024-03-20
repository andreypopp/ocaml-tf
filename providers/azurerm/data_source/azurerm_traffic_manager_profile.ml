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
  custom_header : monitor_config__custom_header list;
  expected_status_code_ranges : string prop list;
  interval_in_seconds : float prop;
  path : string prop;
  port : float prop;
  protocol : string prop;
  timeout_in_seconds : float prop;
  tolerated_number_of_failures : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : monitor_config) -> ()

let yojson_of_monitor_config =
  (function
   | {
       custom_header = v_custom_header;
       expected_status_code_ranges = v_expected_status_code_ranges;
       interval_in_seconds = v_interval_in_seconds;
       path = v_path;
       port = v_port;
       protocol = v_protocol;
       timeout_in_seconds = v_timeout_in_seconds;
       tolerated_number_of_failures = v_tolerated_number_of_failures;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_tolerated_number_of_failures
         in
         ("tolerated_number_of_failures", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_timeout_in_seconds
         in
         ("timeout_in_seconds", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_path in
         ("path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float v_interval_in_seconds
         in
         ("interval_in_seconds", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_expected_status_code_ranges
         in
         ("expected_status_code_ranges", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_monitor_config__custom_header
             v_custom_header
         in
         ("custom_header", arg) :: bnds
       in
       `Assoc bnds
    : monitor_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_monitor_config

[@@@deriving.end]

type azurerm_traffic_manager_profile = {
  id : string prop option; [@option]
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string prop) list option; [@option]
  traffic_view_enabled : bool prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_traffic_manager_profile) -> ()

let yojson_of_azurerm_traffic_manager_profile =
  (function
   | {
       id = v_id;
       name = v_name;
       resource_group_name = v_resource_group_name;
       tags = v_tags;
       traffic_view_enabled = v_traffic_view_enabled;
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
         match v_traffic_view_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "traffic_view_enabled", arg in
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

let timeouts ?read () : timeouts = { read }

let azurerm_traffic_manager_profile ?id ?tags ?traffic_view_enabled
    ?timeouts ~name ~resource_group_name () :
    azurerm_traffic_manager_profile =
  {
    id;
    name;
    resource_group_name;
    tags;
    traffic_view_enabled;
    timeouts;
  }

type t = {
  dns_config : dns_config list prop;
  fqdn : string prop;
  id : string prop;
  monitor_config : monitor_config list prop;
  name : string prop;
  profile_status : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  traffic_routing_method : string prop;
  traffic_view_enabled : bool prop;
}

let make ?id ?tags ?traffic_view_enabled ?timeouts ~name
    ~resource_group_name __id =
  let __type = "azurerm_traffic_manager_profile" in
  let __attrs =
    ({
       dns_config = Prop.computed __type __id "dns_config";
       fqdn = Prop.computed __type __id "fqdn";
       id = Prop.computed __type __id "id";
       monitor_config = Prop.computed __type __id "monitor_config";
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
        (azurerm_traffic_manager_profile ?id ?tags
           ?traffic_view_enabled ?timeouts ~name ~resource_group_name
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?traffic_view_enabled ?timeouts
    ~name ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?traffic_view_enabled ?timeouts ~name
      ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
