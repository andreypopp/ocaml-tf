(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_cluster_policy

type t = private {
  cluster_arn : string prop;
  current_version : string prop;
  id : string prop;
  policy : string prop;
}

val aws_msk_cluster_policy :
  ?id:string prop ->
  cluster_arn:string prop ->
  policy:string prop ->
  string ->
  t
