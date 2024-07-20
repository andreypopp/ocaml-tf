(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_snapshot_copy

val aws_redshift_snapshot_copy :
  ?manual_snapshot_retention_period:float prop ->
  ?retention_period:float prop ->
  ?snapshot_copy_grant_name:string prop ->
  cluster_identifier:string prop ->
  destination_region:string prop ->
  unit ->
  aws_redshift_snapshot_copy

val yojson_of_aws_redshift_snapshot_copy :
  aws_redshift_snapshot_copy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_identifier : string prop;
  destination_region : string prop;
  id : string prop;
  manual_snapshot_retention_period : float prop;
  retention_period : float prop;
  snapshot_copy_grant_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?manual_snapshot_retention_period:float prop ->
  ?retention_period:float prop ->
  ?snapshot_copy_grant_name:string prop ->
  cluster_identifier:string prop ->
  destination_region:string prop ->
  string ->
  t

val make :
  ?manual_snapshot_retention_period:float prop ->
  ?retention_period:float prop ->
  ?snapshot_copy_grant_name:string prop ->
  cluster_identifier:string prop ->
  destination_region:string prop ->
  string ->
  t Tf_core.resource
