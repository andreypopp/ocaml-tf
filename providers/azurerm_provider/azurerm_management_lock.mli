(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_management_lock__timeouts
type azurerm_management_lock

type t = private {
  id : string prop;
  lock_level : string prop;
  name : string prop;
  notes : string prop;
  scope : string prop;
}

val azurerm_management_lock :
  ?id:string prop ->
  ?notes:string prop ->
  ?timeouts:azurerm_management_lock__timeouts ->
  lock_level:string prop ->
  name:string prop ->
  scope:string prop ->
  string ->
  t
