(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_wan__timeouts
type azurerm_virtual_wan

type t = private {
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

val azurerm_virtual_wan :
  ?allow_branch_to_branch_traffic:bool prop ->
  ?disable_vpn_encryption:bool prop ->
  ?id:string prop ->
  ?office365_local_breakout_category:string prop ->
  ?tags:(string * string prop) list ->
  ?type_:string prop ->
  ?timeouts:azurerm_virtual_wan__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
