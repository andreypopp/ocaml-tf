(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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
  ?autoscaling_config:cluster__autoscaling_config list ->
  cluster_id:string prop ->
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
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?cluster:cluster list ->
  ?timeouts:timeouts ->
  name:string prop ->
  unit ->
  google_bigtable_instance

val yojson_of_google_bigtable_instance :
  google_bigtable_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  deletion_protection : bool prop;
  display_name : string prop;
  effective_labels : string Tf_core.assoc prop;
  force_destroy : bool prop;
  id : string prop;
  instance_type : string prop;
  labels : string Tf_core.assoc prop;
  name : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?deletion_protection:bool prop ->
  ?display_name:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?cluster:cluster list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t

val make :
  ?deletion_protection:bool prop ->
  ?display_name:string prop ->
  ?force_destroy:bool prop ->
  ?id:string prop ->
  ?instance_type:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?cluster:cluster list ->
  ?timeouts:timeouts ->
  name:string prop ->
  string ->
  t Tf_core.resource
