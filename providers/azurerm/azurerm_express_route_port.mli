(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity

val identity :
  identity_ids:string prop list ->
  type_:string prop ->
  unit ->
  identity

type link1

val link1 :
  ?admin_enabled:bool prop ->
  ?macsec_cak_keyvault_secret_id:string prop ->
  ?macsec_cipher:string prop ->
  ?macsec_ckn_keyvault_secret_id:string prop ->
  ?macsec_sci_enabled:bool prop ->
  unit ->
  link1

type link2

val link2 :
  ?admin_enabled:bool prop ->
  ?macsec_cak_keyvault_secret_id:string prop ->
  ?macsec_cipher:string prop ->
  ?macsec_ckn_keyvault_secret_id:string prop ->
  ?macsec_sci_enabled:bool prop ->
  unit ->
  link2

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_express_route_port

val azurerm_express_route_port :
  ?billing_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  bandwidth_in_gbps:float prop ->
  encapsulation:string prop ->
  location:string prop ->
  name:string prop ->
  peering_location:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  link1:link1 list ->
  link2:link2 list ->
  unit ->
  azurerm_express_route_port

val yojson_of_azurerm_express_route_port :
  azurerm_express_route_port -> json

(** RESOURCE REGISTRATION *)

type t = private {
  bandwidth_in_gbps : float prop;
  billing_type : string prop;
  encapsulation : string prop;
  ethertype : string prop;
  guid : string prop;
  id : string prop;
  location : string prop;
  mtu : string prop;
  name : string prop;
  peering_location : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?billing_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  bandwidth_in_gbps:float prop ->
  encapsulation:string prop ->
  location:string prop ->
  name:string prop ->
  peering_location:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  link1:link1 list ->
  link2:link2 list ->
  string ->
  t

val make :
  ?billing_type:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  bandwidth_in_gbps:float prop ->
  encapsulation:string prop ->
  location:string prop ->
  name:string prop ->
  peering_location:string prop ->
  resource_group_name:string prop ->
  identity:identity list ->
  link1:link1 list ->
  link2:link2 list ->
  string ->
  t Tf_core.resource
