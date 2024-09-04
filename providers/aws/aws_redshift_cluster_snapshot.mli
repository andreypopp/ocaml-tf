(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_cluster_snapshot

val aws_redshift_cluster_snapshot :
  ?id:string prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  snapshot_identifier:string prop ->
  unit ->
  aws_redshift_cluster_snapshot

val yojson_of_aws_redshift_cluster_snapshot :
  aws_redshift_cluster_snapshot -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  cluster_identifier : string prop;
  id : string prop;
  kms_key_id : string prop;
  manual_snapshot_retention_period : float prop;
  owner_account : string prop;
  snapshot_identifier : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  snapshot_identifier:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?manual_snapshot_retention_period:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  cluster_identifier:string prop ->
  snapshot_identifier:string prop ->
  string ->
  t Tf_core.resource
