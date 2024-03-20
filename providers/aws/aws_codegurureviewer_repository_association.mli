(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type s3_repository_details__code_artifacts = {
  build_artifacts_object_key : string prop;
      (** build_artifacts_object_key *)
  source_code_artifacts_object_key : string prop;
      (** source_code_artifacts_object_key *)
}

type s3_repository_details = {
  bucket_name : string prop;  (** bucket_name *)
  code_artifacts : s3_repository_details__code_artifacts list;
      (** code_artifacts *)
}

type kms_key_details

val kms_key_details :
  ?encryption_option:string prop ->
  ?kms_key_id:string prop ->
  unit ->
  kms_key_details

type repository__bitbucket

val repository__bitbucket :
  connection_arn:string prop ->
  name:string prop ->
  owner:string prop ->
  unit ->
  repository__bitbucket

type repository__codecommit

val repository__codecommit :
  name:string prop -> unit -> repository__codecommit

type repository__github_enterprise_server

val repository__github_enterprise_server :
  connection_arn:string prop ->
  name:string prop ->
  owner:string prop ->
  unit ->
  repository__github_enterprise_server

type repository__s3_bucket

val repository__s3_bucket :
  bucket_name:string prop ->
  name:string prop ->
  unit ->
  repository__s3_bucket

type repository

val repository :
  bitbucket:repository__bitbucket list ->
  codecommit:repository__codecommit list ->
  github_enterprise_server:repository__github_enterprise_server list ->
  s3_bucket:repository__s3_bucket list ->
  unit ->
  repository

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_codegurureviewer_repository_association

val aws_codegurureviewer_repository_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  kms_key_details:kms_key_details list ->
  repository:repository list ->
  unit ->
  aws_codegurureviewer_repository_association

val yojson_of_aws_codegurureviewer_repository_association :
  aws_codegurureviewer_repository_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  association_id : string prop;
  connection_arn : string prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  provider_type : string prop;
  s3_repository_details : s3_repository_details list prop;
  state : string prop;
  state_reason : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  kms_key_details:kms_key_details list ->
  repository:repository list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  kms_key_details:kms_key_details list ->
  repository:repository list ->
  string ->
  t Tf_core.resource
