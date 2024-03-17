(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_backend_bucket__cdn_policy__bypass_cache_on_request_headers = {
  header_name : string option; [@option]
      (** The header field name to match on when bypassing cache. Values are case-insensitive. *)
}
[@@deriving yojson_of]
(** Bypass the cache when the specified request headers are matched - e.g. Pragma or Authorization headers. Up to 5 headers can be specified. The cache is bypassed for all cdnPolicy.cacheMode settings. *)

type google_compute_backend_bucket__cdn_policy__cache_key_policy = {
  include_http_headers : string list option; [@option]
      (** Allows HTTP request headers (by name) to be used in the
cache key. *)
  query_string_whitelist : string list option; [@option]
      (** Names of query string parameters to include in cache keys.
Default parameters are always included. '&' and '=' will
be percent encoded and not treated as delimiters. *)
}
[@@deriving yojson_of]
(** The CacheKeyPolicy for this CdnPolicy. *)

type google_compute_backend_bucket__cdn_policy__negative_caching_policy = {
  code : float option; [@option]
      (** The HTTP status code to define a TTL against. Only HTTP status codes 300, 301, 308, 404, 405, 410, 421, 451 and 501
can be specified as values, and you cannot specify a status code more than once. *)
  ttl : float option; [@option]
      (** The TTL (in seconds) for which to cache responses with the corresponding status code. The maximum allowed value is 1800s
(30 minutes), noting that infrequently accessed objects may be evicted from the cache before the defined TTL. *)
}
[@@deriving yojson_of]
(** Sets a cache TTL for the specified HTTP status code. negativeCaching must be enabled to configure negativeCachingPolicy.
Omitting the policy and leaving negativeCaching enabled will use Cloud CDN's default cache TTLs. *)

type google_compute_backend_bucket__cdn_policy = {
  cache_mode : string option; [@option]
      (** Specifies the cache setting for all responses from this backend.
The possible values are: USE_ORIGIN_HEADERS, FORCE_CACHE_ALL and CACHE_ALL_STATIC Possible values: [USE_ORIGIN_HEADERS, FORCE_CACHE_ALL, CACHE_ALL_STATIC] *)
  client_ttl : float option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  default_ttl : float option; [@option]
      (** Specifies the default TTL for cached content served by this origin for responses
that do not have an existing valid TTL (max-age or s-max-age). *)
  max_ttl : float option; [@option]
      (** Specifies the maximum allowed TTL for cached content served by this origin. *)
  negative_caching : bool option; [@option]
      (** Negative caching allows per-status code TTLs to be set, in order to apply fine-grained caching for common errors or redirects. *)
  request_coalescing : bool option; [@option]
      (** If true then Cloud CDN will combine multiple concurrent cache fill requests into a small number of requests to the origin. *)
  serve_while_stale : float option; [@option]
      (** Serve existing content from the cache (if available) when revalidating content with the origin, or when an error is encountered when refreshing the cache. *)
  signed_url_cache_max_age_sec : float option; [@option]
      (** Maximum number of seconds the response to a signed URL request will
be considered fresh. After this time period,
the response will be revalidated before being served.
When serving responses to signed URL requests,
Cloud CDN will internally behave as though
all responses from this backend had a Cache-Control: public,
max-age=[TTL] header, regardless of any existing Cache-Control
header. The actual headers served in responses will not be altered. *)
  bypass_cache_on_request_headers :
    google_compute_backend_bucket__cdn_policy__bypass_cache_on_request_headers
    list;
  cache_key_policy :
    google_compute_backend_bucket__cdn_policy__cache_key_policy list;
  negative_caching_policy :
    google_compute_backend_bucket__cdn_policy__negative_caching_policy
    list;
}
[@@deriving yojson_of]
(** Cloud CDN configuration for this Backend Bucket. *)

type google_compute_backend_bucket__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_backend_bucket__timeouts *)

type google_compute_backend_bucket = {
  bucket_name : string;  (** Cloud Storage bucket name. *)
  compression_mode : string option; [@option]
      (** Compress text responses using Brotli or gzip compression, based on the client's Accept-Encoding header. Possible values: [AUTOMATIC, DISABLED] *)
  custom_response_headers : string list option; [@option]
      (** Headers that the HTTP/S load balancer should add to proxied responses. *)
  description : string option; [@option]
      (** An optional textual description of the resource; provided by the
client when the resource is created. *)
  edge_security_policy : string option; [@option]
      (** The security policy associated with this backend bucket. *)
  enable_cdn : bool option; [@option]
      (** If true, enable Cloud CDN for this BackendBucket. *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035.  Specifically, the name must be 1-63 characters long and
match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means
the first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the
last character, which cannot be a dash. *)
  cdn_policy : google_compute_backend_bucket__cdn_policy list;
  timeouts : google_compute_backend_bucket__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_backend_bucket *)

let google_compute_backend_bucket ?compression_mode
    ?custom_response_headers ?description ?edge_security_policy
    ?enable_cdn ?timeouts ~bucket_name ~name ~cdn_policy
    __resource_id =
  let __resource_type = "google_compute_backend_bucket" in
  let __resource =
    {
      bucket_name;
      compression_mode;
      custom_response_headers;
      description;
      edge_security_policy;
      enable_cdn;
      name;
      cdn_policy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_backend_bucket __resource);
  ()
