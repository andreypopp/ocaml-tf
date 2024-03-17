(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_desktop_host_pool_registration_info__timeouts
type azurerm_virtual_desktop_host_pool_registration_info

type t = private {
  expiration_date : string prop;
  hostpool_id : string prop;
  id : string prop;
  token : string prop;
}

val azurerm_virtual_desktop_host_pool_registration_info :
  ?id:string prop ->
  ?timeouts:
    azurerm_virtual_desktop_host_pool_registration_info__timeouts ->
  expiration_date:string prop ->
  hostpool_id:string prop ->
  string ->
  t
