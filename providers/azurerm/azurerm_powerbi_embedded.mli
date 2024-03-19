(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_powerbi_embedded

val azurerm_powerbi_embedded :
  ?id:string prop ->
  ?mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  administrators:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  unit ->
  azurerm_powerbi_embedded

val yojson_of_azurerm_powerbi_embedded :
  azurerm_powerbi_embedded -> json

(** RESOURCE REGISTRATION *)

type t = private {
  administrators : string list prop;
  id : string prop;
  location : string prop;
  mode : string prop;
  name : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  administrators:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
