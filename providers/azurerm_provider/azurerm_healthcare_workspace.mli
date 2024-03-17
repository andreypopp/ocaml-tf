(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_healthcare_workspace__timeouts

type azurerm_healthcare_workspace__private_endpoint_connection = {
  id : string prop;  (** id *)
  name : string prop;  (** name *)
}

type azurerm_healthcare_workspace

val azurerm_healthcare_workspace :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_healthcare_workspace__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  unit
