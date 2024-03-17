(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_elastictranscoder_pipeline__content_config = {
  bucket : string prop option; [@option]  (** bucket *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline__content_config *)

type aws_elastictranscoder_pipeline__content_config_permissions = {
  access : string prop list option; [@option]  (** access *)
  grantee : string prop option; [@option]  (** grantee *)
  grantee_type : string prop option; [@option]  (** grantee_type *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline__content_config_permissions *)

type aws_elastictranscoder_pipeline__notifications = {
  completed : string prop option; [@option]  (** completed *)
  error : string prop option; [@option]  (** error *)
  progressing : string prop option; [@option]  (** progressing *)
  warning : string prop option; [@option]  (** warning *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline__notifications *)

type aws_elastictranscoder_pipeline__thumbnail_config = {
  bucket : string prop option; [@option]  (** bucket *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline__thumbnail_config *)

type aws_elastictranscoder_pipeline__thumbnail_config_permissions = {
  access : string prop list option; [@option]  (** access *)
  grantee : string prop option; [@option]  (** grantee *)
  grantee_type : string prop option; [@option]  (** grantee_type *)
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline__thumbnail_config_permissions *)

type aws_elastictranscoder_pipeline = {
  aws_kms_key_arn : string prop option; [@option]
      (** aws_kms_key_arn *)
  id : string prop option; [@option]  (** id *)
  input_bucket : string prop;  (** input_bucket *)
  name : string prop option; [@option]  (** name *)
  output_bucket : string prop option; [@option]  (** output_bucket *)
  role : string prop;  (** role *)
  content_config :
    aws_elastictranscoder_pipeline__content_config list;
  content_config_permissions :
    aws_elastictranscoder_pipeline__content_config_permissions list;
  notifications : aws_elastictranscoder_pipeline__notifications list;
  thumbnail_config :
    aws_elastictranscoder_pipeline__thumbnail_config list;
  thumbnail_config_permissions :
    aws_elastictranscoder_pipeline__thumbnail_config_permissions list;
}
[@@deriving yojson_of]
(** aws_elastictranscoder_pipeline *)

let aws_elastictranscoder_pipeline ?aws_kms_key_arn ?id ?name
    ?output_bucket ~input_bucket ~role ~content_config
    ~content_config_permissions ~notifications ~thumbnail_config
    ~thumbnail_config_permissions __resource_id =
  let __resource_type = "aws_elastictranscoder_pipeline" in
  let __resource =
    {
      aws_kms_key_arn;
      id;
      input_bucket;
      name;
      output_bucket;
      role;
      content_config;
      content_config_permissions;
      notifications;
      thumbnail_config;
      thumbnail_config_permissions;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_elastictranscoder_pipeline __resource);
  ()
