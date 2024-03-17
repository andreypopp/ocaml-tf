(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_chaos_studio_target__timeouts
type azurerm_chaos_studio_target

type t = private {
  id : string prop;
  location : string prop;
  target_resource_id : string prop;
  target_type : string prop;
}

val azurerm_chaos_studio_target :
  ?id:string prop ->
  ?timeouts:azurerm_chaos_studio_target__timeouts ->
  location:string prop ->
  target_resource_id:string prop ->
  target_type:string prop ->
  string ->
  t
