(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type replicas

val replicas :
  ?default_leader_location:bool prop ->
  ?location:string prop ->
  ?type_:string prop ->
  unit ->
  replicas

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_spanner_instance_config

val google_spanner_instance_config :
  ?base_config:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  replicas:replicas list ->
  unit ->
  google_spanner_instance_config

val yojson_of_google_spanner_instance_config :
  google_spanner_instance_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  base_config : string prop;
  config_type : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_config:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  replicas:replicas list ->
  string ->
  t

val make :
  ?base_config:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?name:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  display_name:string prop ->
  replicas:replicas list ->
  string ->
  t Tf_core.resource
