(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_security_center_workspace__timeouts
type azurerm_security_center_workspace

type t = private {
  id : string prop;
  scope : string prop;
  workspace_id : string prop;
}

val azurerm_security_center_workspace :
  ?id:string prop ->
  ?timeouts:azurerm_security_center_workspace__timeouts ->
  scope:string prop ->
  workspace_id:string prop ->
  string ->
  t
