(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_dashboard__timeouts
type azurerm_dashboard

type t = private {
  dashboard_properties : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_dashboard :
  ?dashboard_properties:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_dashboard__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
