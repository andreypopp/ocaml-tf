(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_service_certificate_binding__timeouts
type azurerm_app_service_certificate_binding

type t = private {
  app_service_name : string prop;
  certificate_id : string prop;
  hostname : string prop;
  hostname_binding_id : string prop;
  id : string prop;
  ssl_state : string prop;
  thumbprint : string prop;
}

val azurerm_app_service_certificate_binding :
  ?id:string prop ->
  ?timeouts:azurerm_app_service_certificate_binding__timeouts ->
  certificate_id:string prop ->
  hostname_binding_id:string prop ->
  ssl_state:string prop ->
  string ->
  t
