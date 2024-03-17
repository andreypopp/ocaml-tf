(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_workspace__timeouts

type azurerm_healthcare_workspace__private_endpoint_connection = {
  id : string;  (** id *)
  name : string;  (** name *)
}

type azurerm_healthcare_workspace

val azurerm_healthcare_workspace :
  ?id:string ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_healthcare_workspace__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  string ->
  unit
