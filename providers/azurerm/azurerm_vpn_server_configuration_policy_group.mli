(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type policy

val policy :
  name:string prop ->
  type_:string prop ->
  value:string prop ->
  unit ->
  policy

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_vpn_server_configuration_policy_group

val azurerm_vpn_server_configuration_policy_group :
  ?id:string prop ->
  ?is_default:bool prop ->
  ?priority:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vpn_server_configuration_id:string prop ->
  policy:policy list ->
  unit ->
  azurerm_vpn_server_configuration_policy_group

val yojson_of_azurerm_vpn_server_configuration_policy_group :
  azurerm_vpn_server_configuration_policy_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  is_default : bool prop;
  name : string prop;
  priority : float prop;
  vpn_server_configuration_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?is_default:bool prop ->
  ?priority:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vpn_server_configuration_id:string prop ->
  policy:policy list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?is_default:bool prop ->
  ?priority:float prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  vpn_server_configuration_id:string prop ->
  policy:policy list ->
  string ->
  t Tf_core.resource
