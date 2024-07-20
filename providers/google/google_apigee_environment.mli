(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type node_config

val node_config :
  ?max_node_count:string prop ->
  ?min_node_count:string prop ->
  unit ->
  node_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_apigee_environment

val google_apigee_environment :
  ?api_proxy_type:string prop ->
  ?deployment_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?forward_proxy_uri:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  org_id:string prop ->
  unit ->
  google_apigee_environment

val yojson_of_google_apigee_environment :
  google_apigee_environment -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_proxy_type : string prop;
  deployment_type : string prop;
  description : string prop;
  display_name : string prop;
  forward_proxy_uri : string prop;
  id : string prop;
  name : string prop;
  org_id : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?api_proxy_type:string prop ->
  ?deployment_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?forward_proxy_uri:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t

val make :
  ?api_proxy_type:string prop ->
  ?deployment_type:string prop ->
  ?description:string prop ->
  ?display_name:string prop ->
  ?forward_proxy_uri:string prop ->
  ?id:string prop ->
  ?type_:string prop ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  name:string prop ->
  org_id:string prop ->
  string ->
  t Tf_core.resource
