(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption = {
  cloudwatch_encryption_mode : string prop option; [@option]
      (** cloudwatch_encryption_mode *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration__cloudwatch_encryption *)

type aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption = {
  job_bookmarks_encryption_mode : string prop option; [@option]
      (** job_bookmarks_encryption_mode *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** aws_glue_security_configuration__encryption_configuration__job_bookmarks_encryption *)

type aws_glue_security_configuration__encryption_configuration__s3_encryption = {
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  s3_encryption_mode : string prop option; [@option]
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
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  encryption_configuration :
    aws_glue_security_configuration__encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_glue_security_configuration *)

type t = { id : string prop; name : string prop }

let aws_glue_security_configuration ?id ~name
    ~encryption_configuration __resource_id =
  let __resource_type = "aws_glue_security_configuration" in
  let __resource =
    ({ id; name; encryption_configuration }
      : aws_glue_security_configuration)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_security_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
