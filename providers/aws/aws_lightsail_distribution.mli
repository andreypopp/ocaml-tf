(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type location = {
  availability_zone : string prop;  (** availability_zone *)
  region_name : string prop;  (** region_name *)
}

[@@@deriving.end]

type cache_behavior

val cache_behavior :
  behavior:string prop -> path:string prop -> unit -> cache_behavior

type cache_behavior_settings__forwarded_cookies

val cache_behavior_settings__forwarded_cookies :
  ?cookies_allow_list:string prop list ->
  ?option_:string prop ->
  unit ->
  cache_behavior_settings__forwarded_cookies

type cache_behavior_settings__forwarded_headers

val cache_behavior_settings__forwarded_headers :
  ?headers_allow_list:string prop list ->
  ?option_:string prop ->
  unit ->
  cache_behavior_settings__forwarded_headers

type cache_behavior_settings__forwarded_query_strings

val cache_behavior_settings__forwarded_query_strings :
  ?option_:bool prop ->
  ?query_strings_allowed_list:string prop list ->
  unit ->
  cache_behavior_settings__forwarded_query_strings

type cache_behavior_settings

val cache_behavior_settings :
  ?allowed_http_methods:string prop ->
  ?cached_http_methods:string prop ->
  ?default_ttl:float prop ->
  ?maximum_ttl:float prop ->
  ?minimum_ttl:float prop ->
  forwarded_cookies:cache_behavior_settings__forwarded_cookies list ->
  forwarded_headers:cache_behavior_settings__forwarded_headers list ->
  forwarded_query_strings:
    cache_behavior_settings__forwarded_query_strings list ->
  unit ->
  cache_behavior_settings

type default_cache_behavior

val default_cache_behavior :
  behavior:string prop -> unit -> default_cache_behavior

type origin

val origin :
  ?protocol_policy:string prop ->
  name:string prop ->
  region_name:string prop ->
  unit ->
  origin

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_lightsail_distribution

val aws_lightsail_distribution :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?is_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  bundle_id:string prop ->
  name:string prop ->
  cache_behavior:cache_behavior list ->
  cache_behavior_settings:cache_behavior_settings list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  unit ->
  aws_lightsail_distribution

val yojson_of_aws_lightsail_distribution :
  aws_lightsail_distribution -> json

(** RESOURCE REGISTRATION *)

type t = private {
  alternative_domain_names : string list prop;
  arn : string prop;
  bundle_id : string prop;
  certificate_name : string prop;
  created_at : string prop;
  domain_name : string prop;
  id : string prop;
  ip_address_type : string prop;
  is_enabled : bool prop;
  location : location list prop;
  name : string prop;
  origin_public_dns : string prop;
  resource_type : string prop;
  status : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?is_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  bundle_id:string prop ->
  name:string prop ->
  cache_behavior:cache_behavior list ->
  cache_behavior_settings:cache_behavior_settings list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  string ->
  t

val make :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?is_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:timeouts ->
  bundle_id:string prop ->
  name:string prop ->
  cache_behavior:cache_behavior list ->
  cache_behavior_settings:cache_behavior_settings list ->
  default_cache_behavior:default_cache_behavior list ->
  origin:origin list ->
  string ->
  t Tf_core.resource
