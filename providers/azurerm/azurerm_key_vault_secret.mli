(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_key_vault_secret__timeouts
type azurerm_key_vault_secret

type t = private {
  content_type : string prop;
  expiration_date : string prop;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  not_before_date : string prop;
  resource_id : string prop;
  resource_versionless_id : string prop;
  tags : (string * string) list prop;
  value : string prop;
  version : string prop;
  versionless_id : string prop;
}

val azurerm_key_vault_secret :
  ?content_type:string prop ->
  ?expiration_date:string prop ->
  ?id:string prop ->
  ?not_before_date:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_key_vault_secret__timeouts ->
  key_vault_id:string prop ->
  name:string prop ->
  value:string prop ->
  string ->
  t
