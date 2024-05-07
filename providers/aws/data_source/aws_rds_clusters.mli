(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter

val filter :
  name:string prop -> values:string prop list -> unit -> filter

type aws_rds_clusters

val aws_rds_clusters :
  ?id:string prop -> filter:filter list -> unit -> aws_rds_clusters

val yojson_of_aws_rds_clusters : aws_rds_clusters -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_arns : string list prop;
  cluster_identifiers : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  filter:filter list ->
  string ->
  t

val make :
  ?id:string prop ->
  filter:filter list ->
  string ->
  t Tf_core.resource
