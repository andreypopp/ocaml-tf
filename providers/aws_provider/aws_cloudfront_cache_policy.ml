(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies = {
  items : string list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config = {
  cookie_behavior : string;  (** cookie_behavior *)
  cookies :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers = {
  items : string list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config = {
  header_behavior : string option; [@option]  (** header_behavior *)
  headers :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings = {
  items : string list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config = {
  query_string_behavior : string;  (** query_string_behavior *)
  query_strings :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config *)

type aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin = {
  enable_accept_encoding_brotli : bool option; [@option]
      (** enable_accept_encoding_brotli *)
  enable_accept_encoding_gzip : bool option; [@option]
      (** enable_accept_encoding_gzip *)
  cookies_config :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list;
  headers_config :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list;
  query_strings_config :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin *)

type aws_cloudfront_cache_policy = {
  comment : string option; [@option]  (** comment *)
  default_ttl : float option; [@option]  (** default_ttl *)
  max_ttl : float option; [@option]  (** max_ttl *)
  min_ttl : float option; [@option]  (** min_ttl *)
  name : string;  (** name *)
  parameters_in_cache_key_and_forwarded_to_origin :
    aws_cloudfront_cache_policy__parameters_in_cache_key_and_forwarded_to_origin
    list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy *)

let aws_cloudfront_cache_policy ?comment ?default_ttl ?max_ttl
    ?min_ttl ~name ~parameters_in_cache_key_and_forwarded_to_origin
    __resource_id =
  let __resource_type = "aws_cloudfront_cache_policy" in
  let __resource =
    {
      comment;
      default_ttl;
      max_ttl;
      min_ttl;
      name;
      parameters_in_cache_key_and_forwarded_to_origin;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_cache_policy __resource);
  ()