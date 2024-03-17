(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_container_app_environment_certificate__timeouts
type azurerm_container_app_environment_certificate

type t = private {
  certificate_blob_base64 : string prop;
  certificate_password : string prop;
  container_app_environment_id : string prop;
  expiration_date : string prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  name : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val azurerm_container_app_environment_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_container_app_environment_certificate__timeouts ->
  certificate_blob_base64:string prop ->
  certificate_password:string prop ->
  container_app_environment_id:string prop ->
  name:string prop ->
  string ->
  t
