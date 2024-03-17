(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles__items = {
  content_type : string prop;  (** content_type *)
  format : string prop;  (** format *)
  profile_id : string prop option; [@option]  (** profile_id *)
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles__items *)

type aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles = {
  items :
    aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles__items
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles *)

type aws_cloudfront_field_level_encryption_config__content_type_profile_config = {
  forward_when_content_type_is_unknown : bool prop;
      (** forward_when_content_type_is_unknown *)
  content_type_profiles :
    aws_cloudfront_field_level_encryption_config__content_type_profile_config__content_type_profiles
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__content_type_profile_config *)

type aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles__items = {
  profile_id : string prop;  (** profile_id *)
  query_arg : string prop;  (** query_arg *)
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles__items *)

type aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles = {
  items :
    aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles__items
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles *)

type aws_cloudfront_field_level_encryption_config__query_arg_profile_config = {
  forward_when_query_arg_profile_is_unknown : bool prop;
      (** forward_when_query_arg_profile_is_unknown *)
  query_arg_profiles :
    aws_cloudfront_field_level_encryption_config__query_arg_profile_config__query_arg_profiles
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config__query_arg_profile_config *)

type aws_cloudfront_field_level_encryption_config = {
  comment : string prop option; [@option]  (** comment *)
  id : string prop option; [@option]  (** id *)
  content_type_profile_config :
    aws_cloudfront_field_level_encryption_config__content_type_profile_config
    list;
  query_arg_profile_config :
    aws_cloudfront_field_level_encryption_config__query_arg_profile_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_field_level_encryption_config *)

type t = {
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
}

let aws_cloudfront_field_level_encryption_config ?comment ?id
    ~content_type_profile_config ~query_arg_profile_config
    __resource_id =
  let __resource_type =
    "aws_cloudfront_field_level_encryption_config"
  in
  let __resource =
    ({
       comment;
       id;
       content_type_profile_config;
       query_arg_profile_config;
     }
      : aws_cloudfront_field_level_encryption_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_field_level_encryption_config
       __resource);
  let __resource_attributes =
    ({
       caller_reference =
         Prop.computed __resource_type __resource_id
           "caller_reference";
       comment =
         Prop.computed __resource_type __resource_id "comment";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
     }
      : t)
  in
  __resource_attributes
