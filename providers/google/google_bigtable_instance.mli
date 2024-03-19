(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type cluster__autoscaling_config

val cluster__autoscaling_config :
  ?storage_target:float prop ->
  cpu_target:float prop ->
  max_nodes:float prop ->
  min_nodes:float prop ->
  unit ->
  cluster__autoscaling_config

type cluster

val cluster :
  ?kms_key_name:string prop ->
  ?num_nodes:float prop ->
  ?storage_type:string prop ->
  ?zone:string prop ->
  cluster_id:string prop ->
  autoscaling_config:cluster__autoscaling_config list ->
  unit ->
  cluster

type timeouts

val timeouts :
  ?create:string prop ->
  ?read:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_bigtable_instance

val google_bigtable_instance :
  ?deletion_protection:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  cluster:cluster list ->
  unit ->
  google_bigtable_instance

val yojson_of_google_bigtable_instance :
  google_bigtable_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  deletion_protection : bool prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  instance_type : string prop;
  labels : (string * string) list prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  cluster:cluster list ->
  string ->
  t
