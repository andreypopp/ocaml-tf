(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type links__channels__end_point

val links__channels__end_point :
  ?ip_address:string prop ->
  end_point_name:string prop ->
  port:string prop ->
  protocol:string prop ->
  unit ->
  links__channels__end_point

type links__channels

val links__channels :
  ?demodulation_configuration:string prop ->
  ?modulation_configuration:string prop ->
  bandwidth_mhz:float prop ->
  center_frequency_mhz:float prop ->
  name:string prop ->
  end_point:links__channels__end_point list ->
  unit ->
  links__channels

type links

val links :
  direction:string prop ->
  name:string prop ->
  polarization:string prop ->
  channels:links__channels list ->
  unit ->
  links

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_orbital_contact_profile

val azurerm_orbital_contact_profile :
  ?event_hub_uri:string prop ->
  ?id:string prop ->
  ?minimum_elevation_degrees:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  auto_tracking:string prop ->
  location:string prop ->
  minimum_variable_contact_duration:string prop ->
  name:string prop ->
  network_configuration_subnet_id:string prop ->
  resource_group_name:string prop ->
  links:links list ->
  unit ->
  azurerm_orbital_contact_profile

val yojson_of_azurerm_orbital_contact_profile :
  azurerm_orbital_contact_profile -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auto_tracking : string prop;
  event_hub_uri : string prop;
  id : string prop;
  location : string prop;
  minimum_elevation_degrees : float prop;
  minimum_variable_contact_duration : string prop;
  name : string prop;
  network_configuration_subnet_id : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?event_hub_uri:string prop ->
  ?id:string prop ->
  ?minimum_elevation_degrees:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  auto_tracking:string prop ->
  location:string prop ->
  minimum_variable_contact_duration:string prop ->
  name:string prop ->
  network_configuration_subnet_id:string prop ->
  resource_group_name:string prop ->
  links:links list ->
  string ->
  t

val make :
  ?event_hub_uri:string prop ->
  ?id:string prop ->
  ?minimum_elevation_degrees:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  auto_tracking:string prop ->
  location:string prop ->
  minimum_variable_contact_duration:string prop ->
  name:string prop ->
  network_configuration_subnet_id:string prop ->
  resource_group_name:string prop ->
  links:links list ->
  string ->
  t Tf_core.resource
