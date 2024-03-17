(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_vmware_express_route_authorization__timeouts
type azurerm_vmware_express_route_authorization

type t = private {
  express_route_authorization_id : string prop;
  express_route_authorization_key : string prop;
  id : string prop;
  name : string prop;
  private_cloud_id : string prop;
}

val azurerm_vmware_express_route_authorization :
  ?id:string prop ->
  ?timeouts:azurerm_vmware_express_route_authorization__timeouts ->
  name:string prop ->
  private_cloud_id:string prop ->
  string ->
  t
