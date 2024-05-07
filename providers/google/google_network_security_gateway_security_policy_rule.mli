(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_network_security_gateway_security_policy_rule

val google_network_security_gateway_security_policy_rule :
  ?application_matcher:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?tls_inspection_enabled:bool prop ->
  ?timeouts:timeouts ->
  basic_profile:string prop ->
  enabled:bool prop ->
  gateway_security_policy:string prop ->
  location:string prop ->
  name:string prop ->
  priority:float prop ->
  session_matcher:string prop ->
  unit ->
  google_network_security_gateway_security_policy_rule

val yojson_of_google_network_security_gateway_security_policy_rule :
  google_network_security_gateway_security_policy_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  application_matcher : string prop;
  basic_profile : string prop;
  create_time : string prop;
  description : string prop;
  enabled : bool prop;
  gateway_security_policy : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  priority : float prop;
  project : string prop;
  self_link : string prop;
  session_matcher : string prop;
  tls_inspection_enabled : bool prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?application_matcher:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?tls_inspection_enabled:bool prop ->
  ?timeouts:timeouts ->
  basic_profile:string prop ->
  enabled:bool prop ->
  gateway_security_policy:string prop ->
  location:string prop ->
  name:string prop ->
  priority:float prop ->
  session_matcher:string prop ->
  string ->
  t

val make :
  ?application_matcher:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?tls_inspection_enabled:bool prop ->
  ?timeouts:timeouts ->
  basic_profile:string prop ->
  enabled:bool prop ->
  gateway_security_policy:string prop ->
  location:string prop ->
  name:string prop ->
  priority:float prop ->
  session_matcher:string prop ->
  string ->
  t Tf_core.resource
