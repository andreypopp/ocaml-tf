(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_snapshot_schedule_association

val aws_redshift_snapshot_schedule_association :
  ?id:string prop ->
  cluster_identifier:string prop ->
  schedule_identifier:string prop ->
  unit ->
  aws_redshift_snapshot_schedule_association

val yojson_of_aws_redshift_snapshot_schedule_association :
  aws_redshift_snapshot_schedule_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_identifier : string prop;
  id : string prop;
  schedule_identifier : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_identifier:string prop ->
  schedule_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_identifier:string prop ->
  schedule_identifier:string prop ->
  string ->
  t Tf_core.resource
