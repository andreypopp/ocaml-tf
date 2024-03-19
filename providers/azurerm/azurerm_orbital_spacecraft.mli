(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type links

val links :
  bandwidth_mhz:float prop ->
  center_frequency_mhz:float prop ->
  direction:string prop ->
  name:string prop ->
  polarization:string prop ->
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

type azurerm_orbital_spacecraft

val azurerm_orbital_spacecraft :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  norad_id:string prop ->
  resource_group_name:string prop ->
  title_line:string prop ->
  two_line_elements:string prop list ->
  links:links list ->
  unit ->
  azurerm_orbital_spacecraft

val yojson_of_azurerm_orbital_spacecraft :
  azurerm_orbital_spacecraft -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  norad_id : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  title_line : string prop;
  two_line_elements : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  norad_id:string prop ->
  resource_group_name:string prop ->
  title_line:string prop ->
  two_line_elements:string prop list ->
  links:links list ->
  string ->
  t
