(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_endpoint_authorization

val aws_redshift_endpoint_authorization :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?vpc_ids:string prop list ->
  account:string prop ->
  cluster_identifier:string prop ->
  unit ->
  aws_redshift_endpoint_authorization

val yojson_of_aws_redshift_endpoint_authorization :
  aws_redshift_endpoint_authorization -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account : string prop;
  allowed_all_vpcs : bool prop;
  cluster_identifier : string prop;
  endpoint_count : float prop;
  force_delete : bool prop;
  grantee : string prop;
  grantor : string prop;
  id : string prop;
  vpc_ids : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?vpc_ids:string prop list ->
  account:string prop ->
  cluster_identifier:string prop ->
  string ->
  t

val make :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?vpc_ids:string prop list ->
  account:string prop ->
  cluster_identifier:string prop ->
  string ->
  t Tf_core.resource
