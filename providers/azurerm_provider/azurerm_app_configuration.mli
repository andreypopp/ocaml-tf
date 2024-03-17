(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type azurerm_app_configuration__encryption
type azurerm_app_configuration__identity
type azurerm_app_configuration__replica
type azurerm_app_configuration__timeouts

type azurerm_app_configuration__primary_read_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__primary_write_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_read_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration__secondary_write_key = {
  connection_string : string;  (** connection_string *)
  id : string;  (** id *)
  secret : string;  (** secret *)
}
[@@deriving yojson_of]

type azurerm_app_configuration

val azurerm_app_configuration :
  ?local_auth_enabled:bool ->
  ?public_network_access:string ->
  ?purge_protection_enabled:bool ->
  ?sku:string ->
  ?soft_delete_retention_days:float ->
  ?tags:(string * string) list ->
  ?timeouts:azurerm_app_configuration__timeouts ->
  location:string ->
  name:string ->
  resource_group_name:string ->
  encryption:azurerm_app_configuration__encryption list ->
  identity:azurerm_app_configuration__identity list ->
  replica:azurerm_app_configuration__replica list ->
  string ->
  unit
