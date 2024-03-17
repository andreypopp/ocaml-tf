(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_endpoint_authorization

type t = private {
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

val aws_redshift_endpoint_authorization :
  ?force_delete:bool prop ->
  ?id:string prop ->
  ?vpc_ids:string prop list ->
  account:string prop ->
  cluster_identifier:string prop ->
  string ->
  t
