(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_codeartifact_domain

val aws_codeartifact_domain :
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain:string prop ->
  unit ->
  aws_codeartifact_domain

val yojson_of_aws_codeartifact_domain :
  aws_codeartifact_domain -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arn : string prop;
  asset_size_bytes : string prop;
  created_time : string prop;
  domain : string prop;
  encryption_key : string prop;
  id : string prop;
  owner : string prop;
  repository_count : float prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain:string prop ->
  string ->
  t

val make :
  ?encryption_key:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  domain:string prop ->
  string ->
  t Tf_core.resource
