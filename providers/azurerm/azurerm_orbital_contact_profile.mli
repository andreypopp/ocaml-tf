(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_contact_profile__links__channels__end_point
type azurerm_orbital_contact_profile__links__channels
type azurerm_orbital_contact_profile__links
type azurerm_orbital_contact_profile__timeouts
type azurerm_orbital_contact_profile

type t = private {
  auto_tracking : string prop;
  event_hub_uri : string prop;
  id : string prop;
  location : string prop;
  minimum_elevation_degrees : float prop;
  minimum_variable_contact_duration : string prop;
  name : string prop;
  network_configuration_subnet_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_orbital_contact_profile :
  ?event_hub_uri:string prop ->
  ?id:string prop ->
  ?minimum_elevation_degrees:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_orbital_contact_profile__timeouts ->
  auto_tracking:string prop ->
  location:string prop ->
  minimum_variable_contact_duration:string prop ->
  name:string prop ->
  network_configuration_subnet_id:string prop ->
  resource_group_name:string prop ->
  links:azurerm_orbital_contact_profile__links list ->
  string ->
  t
