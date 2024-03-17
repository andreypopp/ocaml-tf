(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_orbital_spacecraft__links
type azurerm_orbital_spacecraft__timeouts
type azurerm_orbital_spacecraft

val azurerm_orbital_spacecraft :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_orbital_spacecraft__timeouts ->
  location:string prop ->
  name:string prop ->
  norad_id:string prop ->
  resource_group_name:string prop ->
  title_line:string prop ->
  two_line_elements:string prop list ->
  links:azurerm_orbital_spacecraft__links list ->
  string ->
  unit
