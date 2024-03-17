(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_codegurureviewer_repository_association__kms_key_details = {
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__kms_key_details *)

type aws_codegurureviewer_repository_association__repository__bitbucket = {
  connection_arn : string prop;  (** connection_arn *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__repository__bitbucket *)

type aws_codegurureviewer_repository_association__repository__codecommit = {
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__repository__codecommit *)

type aws_codegurureviewer_repository_association__repository__github_enterprise_server = {
  connection_arn : string prop;  (** connection_arn *)
  name : string prop;  (** name *)
  owner : string prop;  (** owner *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__repository__github_enterprise_server *)

type aws_codegurureviewer_repository_association__repository__s3_bucket = {
  bucket_name : string prop;  (** bucket_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__repository__s3_bucket *)

type aws_codegurureviewer_repository_association__repository = {
  bitbucket :
    aws_codegurureviewer_repository_association__repository__bitbucket
    list;
  codecommit :
    aws_codegurureviewer_repository_association__repository__codecommit
    list;
  github_enterprise_server :
    aws_codegurureviewer_repository_association__repository__github_enterprise_server
    list;
  s3_bucket :
    aws_codegurureviewer_repository_association__repository__s3_bucket
    list;
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__repository *)

type aws_codegurureviewer_repository_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association__timeouts *)

type aws_codegurureviewer_repository_association__s3_repository_details__code_artifacts = {
  build_artifacts_object_key : string prop;
      (** build_artifacts_object_key *)
  source_code_artifacts_object_key : string prop;
      (** source_code_artifacts_object_key *)
}
[@@deriving yojson_of]

type aws_codegurureviewer_repository_association__s3_repository_details = {
  bucket_name : string prop;  (** bucket_name *)
  code_artifacts :
    aws_codegurureviewer_repository_association__s3_repository_details__code_artifacts
    list;
      (** code_artifacts *)
}
[@@deriving yojson_of]

type aws_codegurureviewer_repository_association = {
  id : string prop option; [@option]  (** id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  kms_key_details :
    aws_codegurureviewer_repository_association__kms_key_details list;
  repository :
    aws_codegurureviewer_repository_association__repository list;
  timeouts :
    aws_codegurureviewer_repository_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_codegurureviewer_repository_association *)

let aws_codegurureviewer_repository_association ?id ?tags ?tags_all
    ?timeouts ~kms_key_details ~repository __resource_id =
  let __resource_type =
    "aws_codegurureviewer_repository_association"
  in
  let __resource =
    { id; tags; tags_all; kms_key_details; repository; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_codegurureviewer_repository_association __resource);
  ()
