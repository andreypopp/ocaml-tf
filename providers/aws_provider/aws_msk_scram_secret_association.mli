(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_msk_scram_secret_association

type t = private {
  cluster_arn : string prop;
  id : string prop;
  secret_arn_list : string list prop;
}

val aws_msk_scram_secret_association :
  ?id:string prop ->
  cluster_arn:string prop ->
  secret_arn_list:string prop list ->
  string ->
  t
