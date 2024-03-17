(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_lightsail_distribution__cache_behavior

type aws_lightsail_distribution__cache_behavior_settings__forwarded_cookies

type aws_lightsail_distribution__cache_behavior_settings__forwarded_headers

type aws_lightsail_distribution__cache_behavior_settings__forwarded_query_strings

type aws_lightsail_distribution__cache_behavior_settings
type aws_lightsail_distribution__default_cache_behavior
type aws_lightsail_distribution__origin
type aws_lightsail_distribution__timeouts

type aws_lightsail_distribution__location = {
  availability_zone : string prop;  (** availability_zone *)
  region_name : string prop;  (** region_name *)
}

type aws_lightsail_distribution

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
  location : aws_lightsail_distribution__location list prop;
  name : string prop;
  origin_public_dns : string prop;
  resource_type : string prop;
  status : string prop;
  support_code : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_lightsail_distribution :
  ?certificate_name:string prop ->
  ?id:string prop ->
  ?ip_address_type:string prop ->
  ?is_enabled:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  ?timeouts:aws_lightsail_distribution__timeouts ->
  bundle_id:string prop ->
  name:string prop ->
  cache_behavior:aws_lightsail_distribution__cache_behavior list ->
  cache_behavior_settings:
    aws_lightsail_distribution__cache_behavior_settings list ->
  default_cache_behavior:
    aws_lightsail_distribution__default_cache_behavior list ->
  origin:aws_lightsail_distribution__origin list ->
  string ->
  t
