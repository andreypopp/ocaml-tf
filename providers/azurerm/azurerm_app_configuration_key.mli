(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration_key__timeouts
type azurerm_app_configuration_key

type t = private {
  configuration_store_id : string prop;
  content_type : string prop;
  etag : string prop;
  id : string prop;
  key : string prop;
  label : string prop;
  locked : bool prop;
  tags : (string * string) list prop;
  type_ : string prop;
  value : string prop;
  vault_key_reference : string prop;
}

val azurerm_app_configuration_key :
  ?content_type:string prop ->
  ?etag:string prop ->
  ?id:string prop ->
  ?label:string prop ->
  ?locked:bool prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?value:string prop ->
  ?vault_key_reference:string prop ->
  ?timeouts:azurerm_app_configuration_key__timeouts ->
  configuration_store_id:string prop ->
  key:string prop ->
  string ->
  t
