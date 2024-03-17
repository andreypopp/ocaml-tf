(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codegurureviewer_repository_association__kms_key_details

type aws_codegurureviewer_repository_association__repository__bitbucket

type aws_codegurureviewer_repository_association__repository__codecommit

type aws_codegurureviewer_repository_association__repository__github_enterprise_server

type aws_codegurureviewer_repository_association__repository__s3_bucket

type aws_codegurureviewer_repository_association__repository
type aws_codegurureviewer_repository_association__timeouts

type aws_codegurureviewer_repository_association__s3_repository_details__code_artifacts = {
  build_artifacts_object_key : string prop;
      (** build_artifacts_object_key *)
  source_code_artifacts_object_key : string prop;
      (** source_code_artifacts_object_key *)
}

type aws_codegurureviewer_repository_association__s3_repository_details = {
  bucket_name : string prop;  (** bucket_name *)
  code_artifacts :
    aws_codegurureviewer_repository_association__s3_repository_details__code_artifacts
    list;
      (** code_artifacts *)
}

type aws_codegurureviewer_repository_association

val aws_codegurureviewer_repository_association :
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_codegurureviewer_repository_association__timeouts ->
  kms_key_details:
    aws_codegurureviewer_repository_association__kms_key_details list ->
  repository:
    aws_codegurureviewer_repository_association__repository list ->
  string ->
  unit
