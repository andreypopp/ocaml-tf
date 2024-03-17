(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_powerbi_embedded__timeouts
type azurerm_powerbi_embedded

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

val azurerm_powerbi_embedded :
  ?id:string prop ->
  ?mode:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_powerbi_embedded__timeouts ->
  administrators:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  sku_name:string prop ->
  string ->
  t
