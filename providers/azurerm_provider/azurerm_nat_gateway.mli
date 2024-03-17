(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_nat_gateway__timeouts
type azurerm_nat_gateway

type t = private {
  id : string prop;
  idle_timeout_in_minutes : float prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  resource_guid : string prop;
  sku_name : string prop;
  tags : (string * string) list prop;
  zones : string list prop;
}

val azurerm_nat_gateway :
  ?id:string prop ->
  ?idle_timeout_in_minutes:float prop ->
  ?sku_name:string prop ->
  ?tags:(string * string prop) list ->
  ?zones:string prop list ->
  ?timeouts:azurerm_nat_gateway__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
