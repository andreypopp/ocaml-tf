(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cdn_policy__bypass_cache_on_request_headers = {
  header_name : string prop option; [@option]
      (** The header field name to match on when bypassing cache. Values are case-insensitive. *)
}
[@@deriving yojson_of]
(** Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings. *)

type cdn_policy__cache_key_policy = {
  include_http_headers : string prop list option; [@option]
      (** Allows HTTP request headers (by name) to be used in the
cache key. *)
  query_string_whitelist : string prop list option; [@option]
      (** Names of query string parameters to include in cache keys.
Default parameters are always included. '&' and '=' will
be percent encoded and not treated as delimiters. *)
}
[@@deriving yojson_of]
(** The CacheKeyPolicy for this CdnPolicy. *)

type cdn_policy__negative_caching_policy = {
  code : float prop option; [@option]
      (** The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. *)
  ttl : float prop option; [@option]
      (** The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. *)
}
[@@deriving yojson_of]
(** Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs. *)

type cdn_policy = {
  cache_mode : string prop option; [@option]
      (** Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC] *)
  client_ttl : float prop option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  default_ttl : float prop option; [@option]
      (** Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). *)
  max_ttl : float prop option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  negative_caching : bool prop option; [@option]
      (** Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. *)
  request_coalescing : bool prop option; [@option]
      (** If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin. *)
  serve_while_stale : float prop option; [@option]
      (** Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. *)
  signed_url_cache_max_age_sec : float prop option; [@option]
      (** Maximum number of seconds the response to a signed URL request will
be considered fresh. After this time period,
the response will be revalidated before being served.
When serving responses to signed URL requests,
Cloud CDN will internally behave as though
all responses from this backend had a Cache-Control: public,
max-age=[TTL] header, regardless of any existing Cache-Control
header. The actual headers served in responses will not be altered. *)
  bypass_cache_on_request_headers :
    cdn_policy__bypass_cache_on_request_headers list;
  cache_key_policy : cdn_policy__cache_key_policy list;
  negative_caching_policy : cdn_policy__negative_caching_policy list;
}
[@@deriving yojson_of]
(** Cloud CDN configuration for this Backend Bucket. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_backend_bucket = {
  bucket_name : string prop;  (** Cloud Storage bucket name. *)
  compression_mode : string prop option; [@option]
      (** Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header. Possible values: [AUTOMATIC, DISABLED] *)
  custom_response_headers : string prop list option; [@option]
      (** Headers that the HTTP/S load balancer should add to proxied responses. *)
  description : string prop option; [@option]
      (** An optional textual description of the resource; provided by the
client when the resource is created. *)
  edge_security_policy : string prop option; [@option]
      (** The security policy associated with this backend bucket. *)
  enable_cdn : bool prop option; [@option]
      (** If true, enable Cloud CDN for this BackendBucket. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  cdn_policy : cdn_policy list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_bucket *)

let cdn_policy__bypass_cache_on_request_headers ?header_name () :
    cdn_policy__bypass_cache_on_request_headers =
  { header_name }

let cdn_policy__cache_key_policy ?include_http_headers
    ?query_string_whitelist () : cdn_policy__cache_key_policy =
  { include_http_headers; query_string_whitelist }

let cdn_policy__negative_caching_policy ?code ?ttl () :
    cdn_policy__negative_caching_policy =
  { code; ttl }

let cdn_policy ?cache_mode ?client_ttl ?default_ttl ?max_ttl
    ?negative_caching ?request_coalescing ?serve_while_stale
    ?signed_url_cache_max_age_sec ~bypass_cache_on_request_headers
    ~cache_key_policy ~negative_caching_policy () : cdn_policy =
  {
    cache_mode;
    client_ttl;
    default_ttl;
    max_ttl;
    negative_caching;
    request_coalescing;
    serve_while_stale;
    signed_url_cache_max_age_sec;
    bypass_cache_on_request_headers;
    cache_key_policy;
    negative_caching_policy;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_backend_bucket ?compression_mode
    ?custom_response_headers ?description ?edge_security_policy
    ?enable_cdn ?id ?project ?timeouts ~bucket_name ~name ~cdn_policy
    () : google_compute_backend_bucket =
  {
    bucket_name;
    compression_mode;
    custom_response_headers;
    description;
    edge_security_policy;
    enable_cdn;
    id;
    name;
    project;
    cdn_policy;
    timeouts;
  }

type t = {
  bucket_name : string prop;
  compression_mode : string prop;
  creation_timestamp : string prop;
  custom_response_headers : string list prop;
  description : string prop;
  edge_security_policy : string prop;
  enable_cdn : bool prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
}

let make ?compression_mode ?custom_response_headers ?description
    ?edge_security_policy ?enable_cdn ?id ?project ?timeouts
    ~bucket_name ~name ~cdn_policy __id =
  let __type = "google_compute_backend_bucket" in
  let __attrs =
    ({
       bucket_name = Prop.computed __type __id "bucket_name";
       compression_mode =
         Prop.computed __type __id "compression_mode";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       custom_response_headers =
         Prop.computed __type __id "custom_response_headers";
       description = Prop.computed __type __id "description";
       edge_security_policy =
         Prop.computed __type __id "edge_security_policy";
       enable_cdn = Prop.computed __type __id "enable_cdn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_backend_bucket
        (google_compute_backend_bucket ?compression_mode
           ?custom_response_headers ?description
           ?edge_security_policy ?enable_cdn ?id ?project ?timeouts
           ~bucket_name ~name ~cdn_policy ());
    attrs = __attrs;
  }

let register ?tf_module ?compression_mode ?custom_response_headers
    ?description ?edge_security_policy ?enable_cdn ?id ?project
    ?timeouts ~bucket_name ~name ~cdn_policy __id =
  let (r : _ Tf_core.resource) =
    make ?compression_mode ?custom_response_headers ?description
      ?edge_security_policy ?enable_cdn ?id ?project ?timeouts
      ~bucket_name ~name ~cdn_policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
