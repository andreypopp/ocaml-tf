(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_virtual_wan__timeouts
type azurerm_virtual_wan

val azurerm_virtual_wan :
  ?allow_branch_to_branch_traffic:bool ->
  ?disable_vpn_encryption:bool ->
  ?id:string ->
  ?office365_local_breakout_category:string ->
  ?tags:(string * string) list ->
  ?type_:string ->
  ?timeouts:azurerm_virtual_wan__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
