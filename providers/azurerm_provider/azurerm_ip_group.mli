(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_ip_group__timeouts
type azurerm_ip_group

type t = private {
  cidrs : string list prop;
  firewall_ids : string list prop;
  firewall_policy_ids : string list prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_ip_group :
  ?cidrs:string prop list ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_ip_group__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
