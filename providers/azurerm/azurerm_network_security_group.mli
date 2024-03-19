(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type security_rule = {
  access : string prop;  (** access *)
  description : string prop;  (** description *)
  destination_address_prefix : string prop;
      (** destination_address_prefix *)
  destination_address_prefixes : string prop list;
      (** destination_address_prefixes *)
  destination_application_security_group_ids : string prop list;
      (** destination_application_security_group_ids *)
  destination_port_range : string prop;
      (** destination_port_range *)
  destination_port_ranges : string prop list;
      (** destination_port_ranges *)
  direction : string prop;  (** direction *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  protocol : string prop;  (** protocol *)
  source_address_prefix : string prop;  (** source_address_prefix *)
  source_address_prefixes : string prop list;
      (** source_address_prefixes *)
  source_application_security_group_ids : string prop list;
      (** source_application_security_group_ids *)
  source_port_range : string prop;  (** source_port_range *)
  source_port_ranges : string prop list;  (** source_port_ranges *)
}

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_network_security_group

val azurerm_network_security_group :
  ?id:string prop ->
  ?security_rule:security_rule list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_network_security_group

val yojson_of_azurerm_network_security_group :
  azurerm_network_security_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  security_rule : security_rule list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?security_rule:security_rule list ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t
