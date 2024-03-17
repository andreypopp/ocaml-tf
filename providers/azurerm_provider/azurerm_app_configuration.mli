(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration__encryption
type azurerm_app_configuration__identity
type azurerm_app_configuration__replica
type azurerm_app_configuration__timeouts

type azurerm_app_configuration__primary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type azurerm_app_configuration__primary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type azurerm_app_configuration__secondary_read_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type azurerm_app_configuration__secondary_write_key = {
  connection_string : string prop;  (** connection_string *)
  id : string prop;  (** id *)
  secret : string prop;  (** secret *)
}

type azurerm_app_configuration

val azurerm_app_configuration :
  ?id:string prop ->
  ?local_auth_enabled:bool prop ->
  ?public_network_access:string prop ->
  ?purge_protection_enabled:bool prop ->
  ?sku:string prop ->
  ?soft_delete_retention_days:float prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:azurerm_app_configuration__timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  encryption:azurerm_app_configuration__encryption list ->
  identity:azurerm_app_configuration__identity list ->
  replica:azurerm_app_configuration__replica list ->
  string ->
  unit
