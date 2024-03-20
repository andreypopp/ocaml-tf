(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type action

val action :
  ?connection_string:string prop ->
  ?trigger_url:string prop ->
  resource_id:string prop ->
  type_:string prop ->
  unit ->
  action

type source__rule_set__rule

val source__rule_set__rule :
  expected_value:string prop ->
  operator:string prop ->
  property_path:string prop ->
  property_type:string prop ->
  unit ->
  source__rule_set__rule

type source__rule_set

val source__rule_set :
  rule:source__rule_set__rule list -> unit -> source__rule_set

type source

val source :
  event_source:string prop ->
  rule_set:source__rule_set list ->
  unit ->
  source

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_security_center_automation

val azurerm_security_center_automation :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  source:source list ->
  unit ->
  azurerm_security_center_automation

val yojson_of_azurerm_security_center_automation :
  azurerm_security_center_automation -> json

(** RESOURCE REGISTRATION *)

type t = private {
  description : string prop;
  enabled : bool prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  scopes : string list prop;
  tags : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  source:source list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  scopes:string prop list ->
  action:action list ->
  source:source list ->
  string ->
  t Tf_core.resource
