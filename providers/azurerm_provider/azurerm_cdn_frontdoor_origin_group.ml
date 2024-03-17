(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_cdn_frontdoor_origin_group__health_probe = {
  interval_in_seconds : float;  (** interval_in_seconds *)
  path : string option; [@option]  (** path *)
  protocol : string;  (** protocol *)
  request_type : string option; [@option]  (** request_type *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__health_probe *)

type azurerm_cdn_frontdoor_origin_group__load_balancing = {
  additional_latency_in_milliseconds : float option; [@option]
      (** additional_latency_in_milliseconds *)
  sample_size : float option; [@option]  (** sample_size *)
  successful_samples_required : float option; [@option]
      (** successful_samples_required *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__load_balancing *)

type azurerm_cdn_frontdoor_origin_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group__timeouts *)

type azurerm_cdn_frontdoor_origin_group = {
  cdn_frontdoor_profile_id : string;  (** cdn_frontdoor_profile_id *)
  name : string;  (** name *)
  restore_traffic_time_to_healed_or_new_endpoint_in_minutes :
    float option;
      [@option]
      (** restore_traffic_time_to_healed_or_new_endpoint_in_minutes *)
  session_affinity_enabled : bool option; [@option]
      (** session_affinity_enabled *)
  health_probe :
    azurerm_cdn_frontdoor_origin_group__health_probe list;
  load_balancing :
    azurerm_cdn_frontdoor_origin_group__load_balancing list;
  timeouts : azurerm_cdn_frontdoor_origin_group__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_cdn_frontdoor_origin_group *)

let azurerm_cdn_frontdoor_origin_group
    ?restore_traffic_time_to_healed_or_new_endpoint_in_minutes
    ?session_affinity_enabled ?timeouts ~cdn_frontdoor_profile_id
    ~name ~health_probe ~load_balancing __resource_id =
  let __resource_type = "azurerm_cdn_frontdoor_origin_group" in
  let __resource =
    {
      cdn_frontdoor_profile_id;
      name;
      restore_traffic_time_to_healed_or_new_endpoint_in_minutes;
      session_affinity_enabled;
      health_probe;
      load_balancing;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_cdn_frontdoor_origin_group __resource);
  ()
