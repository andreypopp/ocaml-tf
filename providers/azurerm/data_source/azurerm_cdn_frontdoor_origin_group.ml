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

type health_probe = {
  interval_in_seconds : float prop;
  path : string prop;
  protocol : string prop;
  request_type : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : health_probe) -> ()

let yojson_of_health_probe =
  (function
   | {
       interval_in_seconds = v_interval_in_seconds;
       path = v_path;
       protocol = v_protocol;
       request_type = v_request_type;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_request_type in
         ("request_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
       `Assoc bnds
    : health_probe -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_health_probe

[@@@deriving.end]

type load_balancing = {
  additional_latency_in_milliseconds : float prop;
  sample_size : float prop;
  successful_samples_required : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : load_balancing) -> ()

let yojson_of_load_balancing =
  (function
   | {
       additional_latency_in_milliseconds =
         v_additional_latency_in_milliseconds;
       sample_size = v_sample_size;
       successful_samples_required = v_successful_samples_required;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_successful_samples_required
         in
         ("successful_samples_required", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_sample_size in
         ("sample_size", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_float
             v_additional_latency_in_milliseconds
         in
         ("additional_latency_in_milliseconds", arg) :: bnds
       in
       `Assoc bnds
    : load_balancing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancing

[@@@deriving.end]

type azurerm_cdn_frontdoor_origin_group = {
  id : string prop option; [@option]
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_origin_group) -> ()

let yojson_of_azurerm_cdn_frontdoor_origin_group =
  (function
   | {
       id = v_id;
       name = v_name;
       profile_name = v_profile_name;
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
         let arg = yojson_of_prop yojson_of_string v_profile_name in
         ("profile_name", arg) :: bnds
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
    : azurerm_cdn_frontdoor_origin_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_origin_group

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_cdn_frontdoor_origin_group ?id ?timeouts ~name
    ~profile_name ~resource_group_name () :
    azurerm_cdn_frontdoor_origin_group =
  { id; name; profile_name; resource_group_name; timeouts }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  health_probe : health_probe list prop;
  id : string prop;
  load_balancing : load_balancing list prop;
  name : string prop;
  profile_name : string prop;
  resource_group_name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

let make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
    =
  let __type = "azurerm_cdn_frontdoor_origin_group" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       health_probe = Prop.computed __type __id "health_probe";
       id = Prop.computed __type __id "id";
       load_balancing = Prop.computed __type __id "load_balancing";
       name = Prop.computed __type __id "name";
       profile_name = Prop.computed __type __id "profile_name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       restore_traffic_time_to_healed_or_new_endpoint_in_minutes =
         Prop.computed __type __id
           "restore_traffic_time_to_healed_or_new_endpoint_in_minutes";
       session_affinity_enabled =
         Prop.computed __type __id "session_affinity_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_cdn_frontdoor_origin_group
        (azurerm_cdn_frontdoor_origin_group ?id ?timeouts ~name
           ~profile_name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~profile_name
    ~resource_group_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~profile_name ~resource_group_name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
