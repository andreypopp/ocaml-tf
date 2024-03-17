(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin_group__health_probe = {
  interval_in_seconds : float prop;  (** interval_in_seconds *)
  path : string prop option; [@option]  (** path *)
  protocol : string prop;  (** protocol *)
  request_type : string prop option; [@option]  (** request_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__health_probe *)

type azurerm_cdn_frontdoor_origin_group__load_balancing = {
  additional_latency_in_milliseconds : float prop option; [@option]
      (** additional_latency_in_milliseconds *)
  sample_size : float prop option; [@option]  (** sample_size *)
  successful_samples_required : float prop option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__load_balancing *)

type azurerm_cdn_frontdoor_origin_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__timeouts *)

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
  health_probe :
    azurerm_cdn_frontdoor_origin_group__health_probe list;
  load_balancing :
    azurerm_cdn_frontdoor_origin_group__load_balancing list;
  timeouts : azurerm_cdn_frontdoor_origin_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group *)

type t = {
  cdn_frontdoor_profile_id : string prop;
  id : string prop;
  name : string prop;
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float prop;
  session_affinity_enabled : bool prop;
}

let azurerm_cdn_frontdoor_origin_group ?id
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
    ~name ~health_probe ~load_balancing __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_origin_group" in
  let __resource =
    ({
       cdn_frontdoor_profile_id;
       id;
       name;
       restore_traffic_time_to_healed_or_new_endpoint_in_minutes;
       session_affinity_enabled;
       health_probe;
       load_balancing;
       timeouts;
     }
      : azurerm_cdn_frontdoor_origin_group)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_origin_group __resource);
  let __resource_attributes =
    ({
       cdn_frontdoor_profile_id =
         Prop.computed __resource_type __resource_id
           "cdn_frontdoor_profile_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       restore_traffic_time_to_healed_or_new_endpoint_in_minutes =
         Prop.computed __resource_type __resource_id
           "restore_traffic_time_to_healed_or_new_endpoint_in_minutes";
       session_affinity_enabled =
         Prop.computed __resource_type __resource_id
           "session_affinity_enabled";
     }
      : t)
  in
  __resource_attributes
