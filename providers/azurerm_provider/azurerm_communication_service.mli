(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_communication_service__timeouts
type azurerm_communication_service

type t = private {
  data_location : string prop;
  id : string prop;
  name : string prop;
  primary_connection_string : string prop;
  primary_key : string prop;
  resource_group_name : string prop;
  secondary_connection_string : string prop;
  secondary_key : string prop;
  tags : (string * string) list prop;
}

val azurerm_communication_service :
  ?data_location:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_communication_service__timeouts ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
