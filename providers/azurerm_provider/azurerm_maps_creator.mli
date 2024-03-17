(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_maps_creator__timeouts
type azurerm_maps_creator

type t = private {
  id : string prop;
  location : string prop;
  maps_account_id : string prop;
  name : string prop;
  storage_units : float prop;
  tags : (string * string) list prop;
}

val azurerm_maps_creator :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_maps_creator__timeouts ->
  location:string prop ->
  maps_account_id:string prop ->
  name:string prop ->
  storage_units:float prop ->
  string ->
  t
