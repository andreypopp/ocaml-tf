(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_filter__timeouts

type azurerm_route_filter__rule = {
  access : string;  (** access *)
  communities : string list;  (** communities *)
  name : string;  (** name *)
  rule_type : string;  (** rule_type *)
}

type azurerm_route_filter

val azurerm_route_filter :
  ?id:string ->
  ?rule:azurerm_route_filter__rule list ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_route_filter__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
