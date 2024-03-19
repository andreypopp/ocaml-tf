(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type encryption_configuration__cloudwatch_encryption = {
  cloudwatch_encryption_mode : string prop option; [@option]
      (** cloudwatch_encryption_mode *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** encryption_configuration__cloudwatch_encryption *)

type encryption_configuration__job_bookmarks_encryption = {
  job_bookmarks_encryption_mode : string prop option; [@option]
      (** job_bookmarks_encryption_mode *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** encryption_configuration__job_bookmarks_encryption *)

type encryption_configuration__s3_encryption = {
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
  s3_encryption_mode : string prop option; [@option]
      (** s3_encryption_mode *)
}
[@@deriving yojson_of]
(** encryption_configuration__s3_encryption *)

type encryption_configuration = {
  cloudwatch_encryption :
    encryption_configuration__cloudwatch_encryption list;
  job_bookmarks_encryption :
    encryption_configuration__job_bookmarks_encryption list;
  s3_encryption : encryption_configuration__s3_encryption list;
}
[@@deriving yojson_of]
(** encryption_configuration *)

type aws_glue_security_configuration = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  encryption_configuration : encryption_configuration list;
}
[@@deriving yojson_of]
(** aws_glue_security_configuration *)

let encryption_configuration__cloudwatch_encryption
    ?cloudwatch_encryption_mode ?kms_key_arn () :
    encryption_configuration__cloudwatch_encryption =
  { cloudwatch_encryption_mode; kms_key_arn }

let encryption_configuration__job_bookmarks_encryption
    ?job_bookmarks_encryption_mode ?kms_key_arn () :
    encryption_configuration__job_bookmarks_encryption =
  { job_bookmarks_encryption_mode; kms_key_arn }

let encryption_configuration__s3_encryption ?kms_key_arn
    ?s3_encryption_mode () : encryption_configuration__s3_encryption
    =
  { kms_key_arn; s3_encryption_mode }

let encryption_configuration ~cloudwatch_encryption
    ~job_bookmarks_encryption ~s3_encryption () :
    encryption_configuration =
  { cloudwatch_encryption; job_bookmarks_encryption; s3_encryption }

let aws_glue_security_configuration ?id ~name
    ~encryption_configuration () : aws_glue_security_configuration =
  { id; name; encryption_configuration }

type t = { id : string prop; name : string prop }

let register ?tf_module ?id ~name ~encryption_configuration
    __resource_id =
  let __resource_type = "aws_glue_security_configuration" in
  let __resource =
    aws_glue_security_configuration ?id ~name
      ~encryption_configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_security_configuration __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
