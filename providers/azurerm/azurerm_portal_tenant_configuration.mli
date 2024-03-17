(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_portal_tenant_configuration__timeouts
type azurerm_portal_tenant_configuration

type t = private {
  id : string prop;
  private_markdown_storage_enforced : bool prop;
}

val azurerm_portal_tenant_configuration :
  ?id:string prop ->
  ?timeouts:azurerm_portal_tenant_configuration__timeouts ->
  private_markdown_storage_enforced:bool prop ->
  string ->
  t
