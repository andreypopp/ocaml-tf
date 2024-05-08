(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_probe = {
  interval_in_seconds : float prop;
  path : string prop option; [@option]
  protocol : string prop;
  request_type : string prop option; [@option]
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
         match v_request_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "request_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_protocol in
         ("protocol", arg) :: bnds
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
  additional_latency_in_milliseconds : float prop option; [@option]
  sample_size : float prop option; [@option]
  successful_samples_required : float prop option; [@option]
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
         match v_successful_samples_required with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "successful_samples_required", arg in
             bnd :: bnds
       in
       let bnds =
         match v_sample_size with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "sample_size", arg in
             bnd :: bnds
       in
       let bnds =
         match v_additional_latency_in_milliseconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "additional_latency_in_milliseconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : load_balancing -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_load_balancing

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

type azurerm_cdn_frontdoor_origin_group = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop option;
      [@option]
  session_affinity_enabled : bool prop option; [@option]
  health_probe : health_probe list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  load_balancing : load_balancing list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_cdn_frontdoor_origin_group) -> ()

let yojson_of_azurerm_cdn_frontdoor_origin_group =
  (function
   | {
       cdn_frontdoor_profile_id = v_cdn_frontdoor_profile_id;
       id = v_id;
       name = v_name;
       restore_traffic_time_to_healed_or_new_endpoint_in_minutes =
         v_restore_traffic_time_to_healed_or_new_endpoint_in_minutes;
       session_affinity_enabled = v_session_affinity_enabled;
       health_probe = v_health_probe;
       load_balancing = v_load_balancing;
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
         if Stdlib.( = ) [] v_load_balancing then bnds
         else
           let arg =
             (yojson_of_list yojson_of_load_balancing)
               v_load_balancing
           in
           let bnd = "load_balancing", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_health_probe then bnds
         else
           let arg =
             (yojson_of_list yojson_of_health_probe) v_health_probe
           in
           let bnd = "health_probe", arg in
           bnd :: bnds
       in
       let bnds =
         match v_session_affinity_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "session_affinity_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match
           v_restore_traffic_time_to_healed_or_new_endpoint_in_minutes
         with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd =
               ( "restore_traffic_time_to_healed_or_new_endpoint_in_minutes",
                 arg )
             in
             bnd :: bnds
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
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_cdn_frontdoor_profile_id
         in
         ("cdn_frontdoor_profile_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_cdn_frontdoor_origin_group ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_cdn_frontdoor_origin_group

[@@@deriving.end]

let health_probe ?path ?request_type ~interval_in_seconds ~protocol
    () : health_probe =
  { interval_in_seconds; path; protocol; request_type }

let load_balancing ?additional_latency_in_milliseconds ?sample_size
    ?successful_samples_required () : load_balancing =
  {
    additional_latency_in_milliseconds;
    sample_size;
    successful_samples_required;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_cdn_frontdoor_origin_group ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?(health_probe = []) ?timeouts
    ~cdn_frontdoor_profile_id ~name ~load_balancing () :
    azurerm_cdn_frontdoor_origin_group =
  {
    cdn_frontdoor_profile_id;
    id;
    name;
    restore_traffic_time_to_healed_or_new_endpoint_in_minutes;
    session_affinity_enabled;
    health_probe;
    load_balancing;
    timeouts;
  }

type t = {
  tf_name : string;
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

let make ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?(health_probe = []) ?timeouts
    ~cdn_frontdoor_profile_id ~name ~load_balancing __id =
  let __type = "azurerm_cdn_frontdoor_origin_group" in
  let __attrs =
    ({
       tf_name = __id;
       cdn_frontdoor_profile_id =
         Prop.computed __type __id "cdn_frontdoor_profile_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
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
        (azurerm_cdn_frontdoor_origin_group ?id
           ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
           ?session_affinity_enabled ~health_probe ?timeouts
           ~cdn_frontdoor_profile_id ~name ~load_balancing ());
    attrs = __attrs;
  }

let register ?tf_module ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?(health_probe = []) ?timeouts
    ~cdn_frontdoor_profile_id ~name ~load_balancing __id =
  let (r : _ Tf_core.resource) =
    make ?id
      ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
      ?session_affinity_enabled ~health_probe ?timeouts
      ~cdn_frontdoor_profile_id ~name ~load_balancing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
