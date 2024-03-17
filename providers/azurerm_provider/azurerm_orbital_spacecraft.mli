(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_spacecraft__links
type azurerm_orbital_spacecraft__timeouts
type azurerm_orbital_spacecraft

val azurerm_orbital_spacecraft :
  ?tags:(string * string) list ->
  ?timeouts:azurerm_orbital_spacecraft__timeouts ->
  location:string ->
  name:string ->
  norad_id:string ->
  resource_group_name:string ->
  title_line:string ->
  two_line_elements:string list ->
  links:azurerm_orbital_spacecraft__links list ->
  string ->
  unit
