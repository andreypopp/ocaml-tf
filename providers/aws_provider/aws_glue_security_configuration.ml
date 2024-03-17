(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption = {
  cloudwatch_encryption_mode : string option; [@option]
      (** cloudwatch_encryption_mode *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption *)

type aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption = {
  job_bookmarks_encryption_mode : string option; [@option]
      (** job_bookmarks_encryption_mode *)
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption *)

type aws_glue_security_configuration__encryption_configuration__s3_encryption = {
  kms_key_arn : string option; [@option]  (** kms_key_arn *)
  s3_encryption_mode : string option; [@option]
      (** s3_encryption_mode *)
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration__s3_encryption *)

type aws_glue_security_configuration__encryption_configuration = {
  cloudwatch_encryption :
    aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption
    list;
  job_bookmarks_encryption :
    aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption
    list;
  s3_encryption :
    aws_glue_security_configuration__encryption_configuration__s3_encryption
    list;
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration *)

type aws_glue_security_configuration = {
  name : string;  (** name *)
  encryption_configuration :
    aws_glue_security_configuration__encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_glue_security_configuration *)

let aws_glue_security_configuration ~name ~encryption_configuration
    __resource_id =
  let __resource_type = "aws_glue_security_configuration" in
  let __resource = { name; encryption_configuration } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_security_configuration __resource);
  ()
