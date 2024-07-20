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

type google_network_security_tls_inspection_policy

val google_network_security_tls_inspection_policy :
  ?custom_tls_features:string prop list ->
  ?description:string prop ->
  ?exclude_public_ca_set:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?min_tls_version:string prop ->
  ?project:string prop ->
  ?tls_feature_profile:string prop ->
  ?trust_config:string prop ->
  ?timeouts:timeouts ->
  ca_pool:string prop ->
  name:string prop ->
  unit ->
  google_network_security_tls_inspection_policy

val yojson_of_google_network_security_tls_inspection_policy :
  google_network_security_tls_inspection_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  ca_pool : string prop;
  create_time : string prop;
  custom_tls_features : string list prop;
  description : string prop;
  exclude_public_ca_set : bool prop;
  id : string prop;
  location : string prop;
  min_tls_version : string prop;
  name : string prop;
  project : string prop;
  tls_feature_profile : string prop;
  trust_config : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_tls_features:string prop list ->
  ?description:string prop ->
  ?exclude_public_ca_set:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?min_tls_version:string prop ->
  ?project:string prop ->
  ?tls_feature_profile:string prop ->
  ?trust_config:string prop ->
  ?timeouts:timeouts ->
  ca_pool:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?custom_tls_features:string prop list ->
  ?description:string prop ->
  ?exclude_public_ca_set:bool prop ->
  ?id:string prop ->
  ?location:string prop ->
  ?min_tls_version:string prop ->
  ?project:string prop ->
  ?tls_feature_profile:string prop ->
  ?trust_config:string prop ->
  ?timeouts:timeouts ->
  ca_pool:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
