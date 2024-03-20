(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type health_probe = {
  interval_in_seconds : float prop;  (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  protocol : string prop;  (** protocol *)
  request_type : string prop option; [@option]  (** request_type *)
}
[@@deriving yojson_of]
(** health_probe *)

type load_balancing = {
  additional_latency_in_milliseconds : float prop option; [@option]
      (** additional_latency_in_milliseconds *)
  sample_size : float prop option; [@option]  (** sample_size *)
  successful_samples_required : float prop option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** load_balancing *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_cdn_frontdoor_origin_group = {
  cdn_frontdoor_profile_id : string prop;
      (** cdn_frontdoor_profile_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop option;
      [@option]
      (** restore_traffic_time_to_healed_or_new_endpoint_in_minutes *)
  session_affinity_enabled : bool prop option; [@option]
      (** session_affinity_enabled *)
  health_probe : health_probe list;
  load_balancing : load_balancing list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group *)

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
    ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
    ~name ~health_probe ~load_balancing () :
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
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

let make ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
    ~name ~health_probe ~load_balancing __id =
  let __type = "azurerm_cdn_frontdoor_origin_group" in
  let __attrs =
    ({
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
           ?session_affinity_enabled ?timeouts
           ~cdn_frontdoor_profile_id ~name ~health_probe
           ~load_balancing ());
    attrs = __attrs;
  }

let register ?tf_module ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
    ~name ~health_probe ~load_balancing __id =
  let (r : _ Tf_core.resource) =
    make ?id
      ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
      ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
      ~name ~health_probe ~load_balancing __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
