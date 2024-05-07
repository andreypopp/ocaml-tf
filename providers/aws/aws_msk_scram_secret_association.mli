(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_scram_secret_association

val aws_msk_scram_secret_association :
  ?id:string prop ->
  cluster_arn:string prop ->
  secret_arn_list:string prop list ->
  unit ->
  aws_msk_scram_secret_association

val yojson_of_aws_msk_scram_secret_association :
  aws_msk_scram_secret_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_arn : string prop;
  id : string prop;
  secret_arn_list : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_arn:string prop ->
  secret_arn_list:string prop list ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_arn:string prop ->
  secret_arn_list:string prop list ->
  string ->
  t Tf_core.resource
