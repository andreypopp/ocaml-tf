(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_managed_certificate__timeouts
type azurerm_app_service_managed_certificate

type t = private {
  canonical_name : string prop;
  custom_hostname_binding_id : string prop;
  expiration_date : string prop;
  friendly_name : string prop;
  host_names : string list prop;
  id : string prop;
  issue_date : string prop;
  issuer : string prop;
  subject_name : string prop;
  tags : (string * string) list prop;
  thumbprint : string prop;
}

val azurerm_app_service_managed_certificate :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_service_managed_certificate__timeouts ->
  custom_hostname_binding_id:string prop ->
  string ->
  t
