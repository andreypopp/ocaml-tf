(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_virtual_wan

val azurerm_virtual_wan :
  ?allow_branch_to_branch_traffic:bool prop ->
  ?disable_vpn_encryption:bool prop ->
  ?id:string prop ->
  ?office365_local_breakout_category:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_virtual_wan

val yojson_of_azurerm_virtual_wan : azurerm_virtual_wan -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  allow_branch_to_branch_traffic : bool prop;
  disable_vpn_encryption : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  office365_local_breakout_category : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_branch_to_branch_traffic:bool prop ->
  ?disable_vpn_encryption:bool prop ->
  ?id:string prop ->
  ?office365_local_breakout_category:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?allow_branch_to_branch_traffic:bool prop ->
  ?disable_vpn_encryption:bool prop ->
  ?id:string prop ->
  ?office365_local_breakout_category:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
