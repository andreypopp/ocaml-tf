(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type azurerm_application_insights_web_test

val azurerm_application_insights_web_test :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  configuration:string prop ->
  geo_locations:string prop list ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_application_insights_web_test

val yojson_of_azurerm_application_insights_web_test :
  azurerm_application_insights_web_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_insights_id : string prop;
  configuration : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  geo_locations : string list prop;
  id : string prop;
  kind : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  retry_enabled : bool prop;
  synthetic_monitor_id : string prop;
  tags : (string * string) list prop;
  timeout : float prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  configuration:string prop ->
  geo_locations:string prop list ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  configuration:string prop ->
  geo_locations:string prop list ->
  kind:string prop ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
