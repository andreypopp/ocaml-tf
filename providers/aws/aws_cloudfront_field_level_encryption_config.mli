(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type content_type_profile_config__content_type_profiles__items

val content_type_profile_config__content_type_profiles__items :
  ?profile_id:string prop ->
  content_type:string prop ->
  format:string prop ->
  unit ->
  content_type_profile_config__content_type_profiles__items

type content_type_profile_config__content_type_profiles

val content_type_profile_config__content_type_profiles :
  items:
    content_type_profile_config__content_type_profiles__items list ->
  unit ->
  content_type_profile_config__content_type_profiles

type content_type_profile_config

val content_type_profile_config :
  forward_when_content_type_is_unknown:bool prop ->
  content_type_profiles:
    content_type_profile_config__content_type_profiles list ->
  unit ->
  content_type_profile_config

type query_arg_profile_config__query_arg_profiles__items

val query_arg_profile_config__query_arg_profiles__items :
  profile_id:string prop ->
  query_arg:string prop ->
  unit ->
  query_arg_profile_config__query_arg_profiles__items

type query_arg_profile_config__query_arg_profiles

val query_arg_profile_config__query_arg_profiles :
  items:query_arg_profile_config__query_arg_profiles__items list ->
  unit ->
  query_arg_profile_config__query_arg_profiles

type query_arg_profile_config

val query_arg_profile_config :
  forward_when_query_arg_profile_is_unknown:bool prop ->
  query_arg_profiles:
    query_arg_profile_config__query_arg_profiles list ->
  unit ->
  query_arg_profile_config

type aws_cloudfront_field_level_encryption_config

val aws_cloudfront_field_level_encryption_config :
  ?comment:string prop ->
  ?id:string prop ->
  content_type_profile_config:content_type_profile_config list ->
  query_arg_profile_config:query_arg_profile_config list ->
  unit ->
  aws_cloudfront_field_level_encryption_config

val yojson_of_aws_cloudfront_field_level_encryption_config :
  aws_cloudfront_field_level_encryption_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  caller_reference : string prop;
  comment : string prop;
  etag : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  ?id:string prop ->
  content_type_profile_config:content_type_profile_config list ->
  query_arg_profile_config:query_arg_profile_config list ->
  string ->
  t

val make :
  ?comment:string prop ->
  ?id:string prop ->
  content_type_profile_config:content_type_profile_config list ->
  query_arg_profile_config:query_arg_profile_config list ->
  string ->
  t Tf_core.resource
