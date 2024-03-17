(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_api_management_certificate__timeouts
type azurerm_api_management_certificate

type t = private {
  api_management_name : string prop;
  data : string prop;
  expiration : string prop;
  id : string prop;
  key_vault_identity_client_id : string prop;
  key_vault_secret_id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  subject : string prop;
  thumbprint : string prop;
}

val azurerm_api_management_certificate :
  ?data:string prop ->
  ?id:string prop ->
  ?key_vault_identity_client_id:string prop ->
  ?key_vault_secret_id:string prop ->
  ?password:string prop ->
  ?timeouts:azurerm_api_management_certificate__timeouts ->
  api_management_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
