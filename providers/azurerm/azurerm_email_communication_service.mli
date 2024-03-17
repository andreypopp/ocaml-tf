(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_email_communication_service__timeouts
type azurerm_email_communication_service

type t = private {
  data_location : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

val azurerm_email_communication_service :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_email_communication_service__timeouts ->
  data_location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
