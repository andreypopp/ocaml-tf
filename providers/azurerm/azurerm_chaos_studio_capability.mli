(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_chaos_studio_capability__timeouts
type azurerm_chaos_studio_capability

type t = private {
  capability_type : string prop;
  chaos_studio_target_id : string prop;
  id : string prop;
  urn : string prop;
}

val azurerm_chaos_studio_capability :
  ?id:string prop ->
  ?timeouts:azurerm_chaos_studio_capability__timeouts ->
  capability_type:string prop ->
  chaos_studio_target_id:string prop ->
  string ->
  t
