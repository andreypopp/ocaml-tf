(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_contact_profile__links__channels__end_point
type azurerm_orbital_contact_profile__links__channels
type azurerm_orbital_contact_profile__links
type azurerm_orbital_contact_profile__timeouts
type azurerm_orbital_contact_profile

val azurerm_orbital_contact_profile :
  ?event_hub_uri:string ->
  ?id:string ->
  ?minimum_elevation_degrees:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_orbital_contact_profile__timeouts ->
  auto_tracking:string ->
  location:string ->
  minimum_variable_contact_duration:string ->
  name:string ->
  network_configuration_subnet_id:string ->
  resource_group_name:string ->
  links:azurerm_orbital_contact_profile__links list ->
  string ->
  unit
