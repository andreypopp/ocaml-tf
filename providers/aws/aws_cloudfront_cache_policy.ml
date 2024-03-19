(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies *)

type parameters_in_cache_key_and_forwarded_to_origin__cookies_config = {
  cookie_behavior : string prop;  (** cookie_behavior *)
  cookies :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    list;
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__cookies_config *)

type parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers *)

type parameters_in_cache_key_and_forwarded_to_origin__headers_config = {
  header_behavior : string prop option; [@option]
      (** header_behavior *)
  headers :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    list;
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__headers_config *)

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings = {
  items : string prop list option; [@option]  (** items *)
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings *)

type parameters_in_cache_key_and_forwarded_to_origin__query_strings_config = {
  query_string_behavior : string prop;  (** query_string_behavior *)
  query_strings :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    list;
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin__query_strings_config *)

type parameters_in_cache_key_and_forwarded_to_origin = {
  enable_accept_encoding_brotli : bool prop option; [@option]
      (** enable_accept_encoding_brotli *)
  enable_accept_encoding_gzip : bool prop option; [@option]
      (** enable_accept_encoding_gzip *)
  cookies_config :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    list;
  headers_config :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config
    list;
  query_strings_config :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    list;
}
[@@deriving yojson_of]
(** parameters_in_cache_key_and_forwarded_to_origin *)

type aws_cloudfront_cache_policy = {
  comment : string prop option; [@option]  (** comment *)
  default_ttl : float prop option; [@option]  (** default_ttl *)
  id : string prop option; [@option]  (** id *)
  max_ttl : float prop option; [@option]  (** max_ttl *)
  min_ttl : float prop option; [@option]  (** min_ttl *)
  name : string prop;  (** name *)
  parameters_in_cache_key_and_forwarded_to_origin :
    parameters_in_cache_key_and_forwarded_to_origin list;
}
[@@deriving yojson_of]
(** aws_cloudfront_cache_policy *)

let parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config__cookies
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__cookies_config
    ~cookie_behavior ~cookies () :
    parameters_in_cache_key_and_forwarded_to_origin__cookies_config =
  { cookie_behavior; cookies }

let parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config__headers
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__headers_config
    ?header_behavior ~headers () :
    parameters_in_cache_key_and_forwarded_to_origin__headers_config =
  { header_behavior; headers }

let parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    ?items () :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config__query_strings
    =
  { items }

let parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    ~query_string_behavior ~query_strings () :
    parameters_in_cache_key_and_forwarded_to_origin__query_strings_config
    =
  { query_string_behavior; query_strings }

let parameters_in_cache_key_and_forwarded_to_origin
    ?enable_accept_encoding_brotli ?enable_accept_encoding_gzip
    ~cookies_config ~headers_config ~query_strings_config () :
    parameters_in_cache_key_and_forwarded_to_origin =
  {
    enable_accept_encoding_brotli;
    enable_accept_encoding_gzip;
    cookies_config;
    headers_config;
    query_strings_config;
  }

let aws_cloudfront_cache_policy ?comment ?default_ttl ?id ?max_ttl
    ?min_ttl ~name ~parameters_in_cache_key_and_forwarded_to_origin
    () : aws_cloudfront_cache_policy =
  {
    comment;
    default_ttl;
    id;
    max_ttl;
    min_ttl;
    name;
    parameters_in_cache_key_and_forwarded_to_origin;
  }

type t = {
  comment : string prop;
  default_ttl : float prop;
  etag : string prop;
  id : string prop;
  max_ttl : float prop;
  min_ttl : float prop;
  name : string prop;
}

let register ?tf_module ?comment ?default_ttl ?id ?max_ttl ?min_ttl
    ~name ~parameters_in_cache_key_and_forwarded_to_origin
    __resource_id =
  let __resource_type = "aws_cloudfront_cache_policy" in
  let __resource =
    aws_cloudfront_cache_policy ?comment ?default_ttl ?id ?max_ttl
      ?min_ttl ~name ~parameters_in_cache_key_and_forwarded_to_origin
      ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudfront_cache_policy __resource);
  let __resource_attributes =
    ({
       comment =
         Prop.computed __resource_type __resource_id "comment";
       default_ttl =
         Prop.computed __resource_type __resource_id "default_ttl";
       etag = Prop.computed __resource_type __resource_id "etag";
       id = Prop.computed __resource_type __resource_id "id";
       max_ttl =
         Prop.computed __resource_type __resource_id "max_ttl";
       min_ttl =
         Prop.computed __resource_type __resource_id "min_ttl";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
