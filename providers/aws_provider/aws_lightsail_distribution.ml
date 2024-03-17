(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lightsail_distribution__cache_behavior = {
  behavior : string;
      (** The cache behavior for the specified path. *)
  path : string;
      (** The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify wildcard directories (path/to/assets/\*\), and file types \(\*.html, *jpg, *js). Directories and file paths are case-sensitive. *)
}
[@@deriving yojson_of]
(** An array of objects that describe the per-path cache behavior of the distribution. *)

type aws_lightsail_distribution__cache_behavior_settings__forwarded_cookies = {
  cookies_allow_list : string list option; [@option]
      (** The specific cookies to forward to your distribution's origin. *)
  option : string option; [@option]
      (** Specifies which cookies to forward to the distribution's origin for a cache behavior: all, none, or allow-list to forward only the cookies specified in the cookiesAllowList parameter. *)
}
[@@deriving yojson_of]
(** An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded. *)

type aws_lightsail_distribution__cache_behavior_settings__forwarded_headers = {
  headers_allow_list : string list option; [@option]
      (** The specific headers to forward to your distribution's origin. *)
  option : string option; [@option]
      (** The headers that you want your distribution to forward to your origin and base caching on. *)
}
[@@deriving yojson_of]
(** An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded. *)

type aws_lightsail_distribution__cache_behavior_settings__forwarded_query_strings = {
  option : bool option; [@option]
      (** Indicates whether the distribution forwards and caches based on query strings. *)
  query_strings_allowed_list : string list option; [@option]
      (** The specific query strings that the distribution forwards to the origin. *)
}
[@@deriving yojson_of]
(** An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded. *)

type aws_lightsail_distribution__cache_behavior_settings = {
  allowed_http_methods : string option; [@option]
      (** The HTTP methods that are processed and forwarded to the distribution's origin. *)
  cached_http_methods : string option; [@option]
      (** The HTTP method responses that are cached by your distribution. *)
  default_ttl : float option; [@option]
      (** The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated. *)
  maximum_ttl : float option; [@option]
      (** The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. *)
  minimum_ttl : float option; [@option]
      (** The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. *)
  forwarded_cookies :
    aws_lightsail_distribution__cache_behavior_settings__forwarded_cookies
    list;
  forwarded_headers :
    aws_lightsail_distribution__cache_behavior_settings__forwarded_headers
    list;
  forwarded_query_strings :
    aws_lightsail_distribution__cache_behavior_settings__forwarded_query_strings
    list;
}
[@@deriving yojson_of]
(** An object that describes the cache behavior settings of the distribution. *)

type aws_lightsail_distribution__default_cache_behavior = {
  behavior : string;  (** The cache behavior of the distribution. *)
}
[@@deriving yojson_of]
(** An object that describes the default cache behavior of the distribution. *)

type aws_lightsail_distribution__origin = {
  name : string;  (** The name of the origin resource. *)
  protocol_policy : string option; [@option]
      (** The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content. *)
  region_name : string;
      (** The AWS Region name of the origin resource. *)
  resource_type : string;
      (** The resource type of the origin resource (e.g., Instance). *)
}
[@@deriving yojson_of]
(** An object that describes the origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. *)

type aws_lightsail_distribution__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lightsail_distribution__timeouts *)

type aws_lightsail_distribution__location = {
  availability_zone : string;  (** availability_zone *)
  region_name : string;  (** region_name *)
}
[@@deriving yojson_of]

type aws_lightsail_distribution = {
  bundle_id : string;
      (** The bundle ID to use for the distribution. *)
  certificate_name : string option; [@option]
      (** The name of the SSL/TLS certificate attached to the distribution, if any. *)
  ip_address_type : string option; [@option]
      (** The IP address type of the distribution. *)
  is_enabled : bool option; [@option]
      (** Indicates whether the distribution is enabled. *)
  name : string;  (** The name of the distribution. *)
  tags : (string * string) list option; [@option]  (** tags *)
  cache_behavior : aws_lightsail_distribution__cache_behavior list;
  cache_behavior_settings :
    aws_lightsail_distribution__cache_behavior_settings list;
  default_cache_behavior :
    aws_lightsail_distribution__default_cache_behavior list;
  origin : aws_lightsail_distribution__origin list;
  timeouts : aws_lightsail_distribution__timeouts option;
}
[@@deriving yojson_of]
(** aws_lightsail_distribution *)

let aws_lightsail_distribution ?certificate_name ?ip_address_type
    ?is_enabled ?tags ?timeouts ~bundle_id ~name ~cache_behavior
    ~cache_behavior_settings ~default_cache_behavior ~origin
    __resource_id =
  let __resource_type = "aws_lightsail_distribution" in
  let __resource =
    {
      bundle_id;
      certificate_name;
      ip_address_type;
      is_enabled;
      name;
      tags;
      cache_behavior;
      cache_behavior_settings;
      default_cache_behavior;
      origin;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_distribution __resource);
  ()
