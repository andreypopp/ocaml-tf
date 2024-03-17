(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_route_filter__timeouts

type azurerm_route_filter__rule = {
  access : string prop;  (** access *)
  communities : string prop list;  (** communities *)
  name : string prop;  (** name *)
  rule_type : string prop;  (** rule_type *)
}

type azurerm_route_filter

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  rule : azurerm_route_filter__rule list prop;
  tags : (string * string) list prop;
}

val azurerm_route_filter :
  ?id:string prop ->
  ?rule:azurerm_route_filter__rule list ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_route_filter__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
