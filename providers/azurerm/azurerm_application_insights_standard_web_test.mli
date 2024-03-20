(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type request__header

val request__header :
  name:string prop -> value:string prop -> unit -> request__header

type request

val request :
  ?body:string prop ->
  ?follow_redirects_enabled:bool prop ->
  ?http_verb:string prop ->
  ?parse_dependent_requests_enabled:bool prop ->
  url:string prop ->
  header:request__header list ->
  unit ->
  request

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type validation_rules__content

val validation_rules__content :
  ?ignore_case:bool prop ->
  ?pass_if_text_found:bool prop ->
  content_match:string prop ->
  unit ->
  validation_rules__content

type validation_rules

val validation_rules :
  ?expected_status_code:float prop ->
  ?ssl_cert_remaining_lifetime:float prop ->
  ?ssl_check_enabled:bool prop ->
  content:validation_rules__content list ->
  unit ->
  validation_rules

type azurerm_application_insights_standard_web_test

val azurerm_application_insights_standard_web_test :
  ?description:string prop ->
  ?enabled:bool prop ->
  ?frequency:float prop ->
  ?id:string prop ->
  ?retry_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?timeout:float prop ->
  ?timeouts:timeouts ->
  application_insights_id:string prop ->
  geo_locations:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  request:request list ->
  validation_rules:validation_rules list ->
  unit ->
  azurerm_application_insights_standard_web_test

val yojson_of_azurerm_application_insights_standard_web_test :
  azurerm_application_insights_standard_web_test -> json

(** RESOURCE REGISTRATION *)

type t = private {
  application_insights_id : string prop;
  description : string prop;
  enabled : bool prop;
  frequency : float prop;
  geo_locations : string list prop;
  id : string prop;
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
  geo_locations:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  request:request list ->
  validation_rules:validation_rules list ->
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
  geo_locations:string prop list ->
  location:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  request:request list ->
  validation_rules:validation_rules list ->
  string ->
  t Tf_core.resource
