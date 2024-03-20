(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_behavior = {
  behavior : string prop;
      (** The cache behavior for the specified path. *)
  path : string prop;
      (** The path to a directory or file to cached, or not cache. Use an asterisk symbol to specify wildcard directories (path/to/assets/\*\), and file types \(\*.html, *jpg, *js). Directories and file paths are case-sensitive. *)
}
[@@deriving yojson_of]
(** An array of objects that describe the per-path cache behavior of the distribution. *)

type cache_behavior_settings__forwarded_cookies = {
  cookies_allow_list : string prop list option; [@option]
      (** The specific cookies to forward to your distribution's origin. *)
  option_ : string prop option; [@option] [@key "option"]
      (** Specifies which cookies to forward to the distribution's origin for a cache behavior: all, none, or allow-list to forward only the cookies specified in the cookiesAllowList parameter. *)
}
[@@deriving yojson_of]
(** An object that describes the cookies that are forwarded to the origin. Your content is cached based on the cookies that are forwarded. *)

type cache_behavior_settings__forwarded_headers = {
  headers_allow_list : string prop list option; [@option]
      (** The specific headers to forward to your distribution's origin. *)
  option_ : string prop option; [@option] [@key "option"]
      (** The headers that you want your distribution to forward to your origin and base caching on. *)
}
[@@deriving yojson_of]
(** An object that describes the headers that are forwarded to the origin. Your content is cached based on the headers that are forwarded. *)

type cache_behavior_settings__forwarded_query_strings = {
  option_ : bool prop option; [@option] [@key "option"]
      (** Indicates whether the distribution forwards and caches based on query strings. *)
  query_strings_allowed_list : string prop list option; [@option]
      (** The specific query strings that the distribution forwards to the origin. *)
}
[@@deriving yojson_of]
(** An object that describes the query strings that are forwarded to the origin. Your content is cached based on the query strings that are forwarded. *)

type cache_behavior_settings = {
  allowed_http_methods : string prop option; [@option]
      (** The HTTP methods that are processed and forwarded to the distribution's origin. *)
  cached_http_methods : string prop option; [@option]
      (** The HTTP method responses that are cached by your distribution. *)
  default_ttl : float prop option; [@option]
      (** The default amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the content has been updated. *)
  maximum_ttl : float prop option; [@option]
      (** The maximum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. *)
  minimum_ttl : float prop option; [@option]
      (** The minimum amount of time that objects stay in the distribution's cache before the distribution forwards another request to the origin to determine whether the object has been updated. *)
  forwarded_cookies :
    cache_behavior_settings__forwarded_cookies list;
  forwarded_headers :
    cache_behavior_settings__forwarded_headers list;
  forwarded_query_strings :
    cache_behavior_settings__forwarded_query_strings list;
}
[@@deriving yojson_of]
(** An object that describes the cache behavior settings of the distribution. *)

type default_cache_behavior = {
  behavior : string prop;
      (** The cache behavior of the distribution. *)
}
[@@deriving yojson_of]
(** An object that describes the default cache behavior of the distribution. *)

type origin = {
  name : string prop;  (** The name of the origin resource. *)
  protocol_policy : string prop option; [@option]
      (** The protocol that your Amazon Lightsail distribution uses when establishing a connection with your origin to pull content. *)
  region_name : string prop;
      (** The AWS Region name of the origin resource. *)
}
[@@deriving yojson_of]
(** An object that describes the origin resource of the distribution, such as a Lightsail instance, bucket, or load balancer. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type location = {
  availability_zone : string prop;  (** availability_zone *)
  region_name : string prop;  (** region_name *)
}
[@@deriving yojson_of]

type aws_lightsail_distribution = {
  bundle_id : string prop;
      (** The bundle ID to use for the distribution. *)
  certificate_name : string prop option; [@option]
      (** The name of the SSL/TLS certificate attached to the distribution, if any. *)
  id : string prop option; [@option]  (** id *)
  ip_address_type : string prop option; [@option]
      (** The IP address type of the distribution. *)
  is_enabled : bool prop option; [@option]
      (** Indicates whether the distribution is enabled. *)
  name : string prop;  (** The name of the distribution. *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  cache_behavior : cache_behavior list;
  cache_behavior_settings : cache_behavior_settings list;
  default_cache_behavior : default_cache_behavior list;
  origin : origin list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lightsail_distribution *)

let cache_behavior ~behavior ~path () : cache_behavior =
  { behavior; path }

let cache_behavior_settings__forwarded_cookies ?cookies_allow_list
    ?option_ () : cache_behavior_settings__forwarded_cookies =
  { cookies_allow_list; option_ }

let cache_behavior_settings__forwarded_headers ?headers_allow_list
    ?option_ () : cache_behavior_settings__forwarded_headers =
  { headers_allow_list; option_ }

let cache_behavior_settings__forwarded_query_strings ?option_
    ?query_strings_allowed_list () :
    cache_behavior_settings__forwarded_query_strings =
  { option_; query_strings_allowed_list }

let cache_behavior_settings ?allowed_http_methods
    ?cached_http_methods ?default_ttl ?maximum_ttl ?minimum_ttl
    ~forwarded_cookies ~forwarded_headers ~forwarded_query_strings ()
    : cache_behavior_settings =
  {
    allowed_http_methods;
    cached_http_methods;
    default_ttl;
    maximum_ttl;
    minimum_ttl;
    forwarded_cookies;
    forwarded_headers;
    forwarded_query_strings;
  }

let default_cache_behavior ~behavior () : default_cache_behavior =
  { behavior }

let origin ?protocol_policy ~name ~region_name () : origin =
  { name; protocol_policy; region_name }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_lightsail_distribution ?certificate_name ?id ?ip_address_type
    ?is_enabled ?tags ?tags_all ?timeouts ~bundle_id ~name
    ~cache_behavior ~cache_behavior_settings ~default_cache_behavior
    ~origin () : aws_lightsail_distribution =
  {
    bundle_id;
    certificate_name;
    id;
    ip_address_type;
    is_enabled;
    name;
    tags;
    tags_all;
    cache_behavior;
    cache_behavior_settings;
    default_cache_behavior;
    origin;
    timeouts;
  }

type t = {
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

let make ?certificate_name ?id ?ip_address_type ?is_enabled ?tags
    ?tags_all ?timeouts ~bundle_id ~name ~cache_behavior
    ~cache_behavior_settings ~default_cache_behavior ~origin __id =
  let __type = "aws_lightsail_distribution" in
  let __attrs =
    ({
       alternative_domain_names =
         Prop.computed __type __id "alternative_domain_names";
       arn = Prop.computed __type __id "arn";
       bundle_id = Prop.computed __type __id "bundle_id";
       certificate_name =
         Prop.computed __type __id "certificate_name";
       created_at = Prop.computed __type __id "created_at";
       domain_name = Prop.computed __type __id "domain_name";
       id = Prop.computed __type __id "id";
       ip_address_type = Prop.computed __type __id "ip_address_type";
       is_enabled = Prop.computed __type __id "is_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       origin_public_dns =
         Prop.computed __type __id "origin_public_dns";
       resource_type = Prop.computed __type __id "resource_type";
       status = Prop.computed __type __id "status";
       support_code = Prop.computed __type __id "support_code";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lightsail_distribution
        (aws_lightsail_distribution ?certificate_name ?id
           ?ip_address_type ?is_enabled ?tags ?tags_all ?timeouts
           ~bundle_id ~name ~cache_behavior ~cache_behavior_settings
           ~default_cache_behavior ~origin ());
    attrs = __attrs;
  }

let register ?tf_module ?certificate_name ?id ?ip_address_type
    ?is_enabled ?tags ?tags_all ?timeouts ~bundle_id ~name
    ~cache_behavior ~cache_behavior_settings ~default_cache_behavior
    ~origin __id =
  let (r : _ Tf_core.resource) =
    make ?certificate_name ?id ?ip_address_type ?is_enabled ?tags
      ?tags_all ?timeouts ~bundle_id ~name ~cache_behavior
      ~cache_behavior_settings ~default_cache_behavior ~origin __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
