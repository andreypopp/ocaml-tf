(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_network_services_edge_cache_origin__aws_v4_authentication = {
  access_key_id : string;
      (** The access key ID your origin uses to identify the key. *)
  origin_region : string;
      (** The name of the AWS region that your origin is in. *)
  secret_access_key_version : string;
      (** The Secret Manager secret version of the secret access key used by your origin.

This is the resource name of the secret version in the format 'projects/*/secrets/*/versions/*' where the '*' values are replaced by the project, secret, and version you require. *)
}
[@@deriving yojson_of]
(** Enable AWS Signature Version 4 origin authentication. *)

type google_network_services_edge_cache_origin__origin_override_action__header_action__request_headers_to_add = {
  header_name : string;  (** The name of the header to add. *)
  header_value : string;  (** The value of the header to add. *)
  replace : bool option; [@option]
      (** Whether to replace all existing headers with the same name.

By default, added header values are appended
to the response or request headers with the
same field names. The added values are
separated by commas.

To overwrite existing values, set 'replace' to 'true'. *)
}
[@@deriving yojson_of]
(** Describes a header to add.

You may add a maximum of 25 request headers. *)

type google_network_services_edge_cache_origin__origin_override_action__header_action = {
  request_headers_to_add :
    google_network_services_edge_cache_origin__origin_override_action__header_action__request_headers_to_add
    list;
}
[@@deriving yojson_of]
(** The header actions, including adding and removing
headers, for request handled by this origin. *)

type google_network_services_edge_cache_origin__origin_override_action__url_rewrite = {
  host_rewrite : string option; [@option]
      (** Prior to forwarding the request to the selected
origin, the request's host header is replaced with
contents of the hostRewrite.

This value must be between 1 and 255 characters. *)
}
[@@deriving yojson_of]
(** The URL rewrite configuration for request that are
handled by this origin. *)

type google_network_services_edge_cache_origin__origin_override_action = {
  header_action :
    google_network_services_edge_cache_origin__origin_override_action__header_action
    list;
  url_rewrite :
    google_network_services_edge_cache_origin__origin_override_action__url_rewrite
    list;
}
[@@deriving yojson_of]
(** The override actions, including url rewrites and header
additions, for requests that use this origin. *)

type google_network_services_edge_cache_origin__origin_redirect = {
  redirect_conditions : string list option; [@option]
      (** The set of redirect response codes that the CDN
follows. Values of
[RedirectConditions](https://cloud.google.com/media-cdn/docs/reference/rest/v1/projects.locations.edgeCacheOrigins#redirectconditions)
are accepted. *)
}
[@@deriving yojson_of]
(** Follow redirects from this origin. *)

type google_network_services_edge_cache_origin__timeout = {
  connect_timeout : string option; [@option]
      (** The maximum duration to wait for a single origin connection to be established, including DNS lookup, TLS handshake and TCP/QUIC connection establishment.

Defaults to 5 seconds. The timeout must be a value between 1s and 15s.

The connectTimeout capped by the deadline set by the request's maxAttemptsTimeout.  The last connection attempt may have a smaller connectTimeout in order to adhere to the overall maxAttemptsTimeout. *)
  max_attempts_timeout : string option; [@option]
      (** The maximum time across all connection attempts to the origin, including failover origins, before returning an error to the client. A HTTP 504 will be returned if the timeout is reached before a response is returned.

Defaults to 15 seconds. The timeout must be a value between 1s and 30s.

If a failoverOrigin is specified, the maxAttemptsTimeout of the first configured origin sets the deadline for all connection attempts across all failoverOrigins. *)
  read_timeout : string option; [@option]
      (** The maximum duration to wait between reads of a single HTTP connection/stream.

Defaults to 15 seconds.  The timeout must be a value between 1s and 30s.

The readTimeout is capped by the responseTimeout.  All reads of the HTTP connection/stream must be completed by the deadline set by the responseTimeout.

If the response headers have already been written to the connection, the response will be truncated and logged. *)
  response_timeout : string option; [@option]
      (** The maximum duration to wait for the last byte of a response to arrive when reading from the HTTP connection/stream.

Defaults to 30 seconds. The timeout must be a value between 1s and 120s.

The responseTimeout starts after the connection has been established.

This also applies to HTTP Chunked Transfer Encoding responses, and/or when an open-ended Range request is made to the origin. Origins that take longer to write additional bytes to the response than the configured responseTimeout will result in an error being returned to the client.

If the response headers have already been written to the connection, the response will be truncated and logged. *)
}
[@@deriving yojson_of]
(** The connection and HTTP timeout configuration for this origin. *)

type google_network_services_edge_cache_origin__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_origin__timeouts *)

type google_network_services_edge_cache_origin = {
  description : string option; [@option]
      (** A human-readable description of the resource. *)
  failover_origin : string option; [@option]
      (** The Origin resource to try when the current origin cannot be reached.
After maxAttempts is reached, the configured failoverOrigin will be used to fulfil the request.

The value of timeout.maxAttemptsTimeout dictates the timeout across all origins.
A reference to a Topic resource. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Set of label tags associated with the EdgeCache resource.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  max_attempts : float option; [@option]
      (** The maximum number of attempts to cache fill from this origin. Another attempt is made when a cache fill fails with one of the retryConditions.

Once maxAttempts to this origin have failed the failoverOrigin will be used, if one is specified. That failoverOrigin may specify its own maxAttempts,
retryConditions and failoverOrigin to control its own cache fill failures.

The total number of allowed attempts to cache fill across this and failover origins is limited to four.
The total time allowed for cache fill attempts across this and failover origins can be controlled with maxAttemptsTimeout.

The last valid, non-retried response from all origins will be returned to the client.
If no origin returns a valid response, an HTTP 502 will be returned to the client.

Defaults to 1. Must be a value greater than 0 and less than 4. *)
  name : string;
      (** Name of the resource; provided by the client when the resource is created.
The name must be 1-64 characters long, and match the regular expression [a-zA-Z][a-zA-Z0-9_-]* which means the first character must be a letter,
and all following characters must be a dash, underscore, letter or digit. *)
  origin_address : string;
      (** A fully qualified domain name (FQDN) or IP address reachable over the public Internet, or the address of a Google Cloud Storage bucket.

This address will be used as the origin for cache requests - e.g. FQDN: media-backend.example.com, IPv4: 35.218.1.1, IPv6: 2607:f8b0:4012:809::200e, Cloud Storage: gs://bucketname

When providing an FQDN (hostname), it must be publicly resolvable (e.g. via Google public DNS) and IP addresses must be publicly routable.  It must not contain a protocol (e.g., https://) and it must not contain any slashes.
If a Cloud Storage bucket is provided, it must be in the canonical gs://bucketname format. Other forms, such as storage.googleapis.com, will be rejected. *)
  port : float option; [@option]
      (** The port to connect to the origin on.
Defaults to port 443 for HTTP2 and HTTPS protocols, and port 80 for HTTP. *)
  project : string option; [@option]  (** project *)
  protocol : string option; [@option]
      (** The protocol to use to connect to the configured origin. Defaults to HTTP2, and it is strongly recommended that users use HTTP2 for both security & performance.

When using HTTP2 or HTTPS as the protocol, a valid, publicly-signed, unexpired TLS (SSL) certificate must be presented by the origin server. Possible values: [HTTP2, HTTPS, HTTP] *)
  retry_conditions : string list option; [@option]
      (** Specifies one or more retry conditions for the configured origin.

If the failure mode during a connection attempt to the origin matches the configured retryCondition(s),
the origin request will be retried up to maxAttempts times. The failoverOrigin, if configured, will then be used to satisfy the request.

The default retryCondition is CONNECT_FAILURE.

retryConditions apply to this origin, and not subsequent failoverOrigin(s),
which may specify their own retryConditions and maxAttempts.

Valid values are:

- CONNECT_FAILURE: Retry on failures connecting to origins, for example due to connection timeouts.
- HTTP_5XX: Retry if the origin responds with any 5xx response code, or if the origin does not respond at all, example: disconnects, reset, read timeout, connection failure, and refused streams.
- GATEWAY_ERROR: Similar to 5xx, but only applies to response codes 502, 503 or 504.
- RETRIABLE_4XX: Retry for retriable 4xx response codes, which include HTTP 409 (Conflict) and HTTP 429 (Too Many Requests)
- NOT_FOUND: Retry if the origin returns a HTTP 404 (Not Found). This can be useful when generating video content, and the segment is not available yet.
- FORBIDDEN: Retry if the origin returns a HTTP 403 (Forbidden). Possible values: [CONNECT_FAILURE, HTTP_5XX, GATEWAY_ERROR, RETRIABLE_4XX, NOT_FOUND, FORBIDDEN] *)
  aws_v4_authentication :
    google_network_services_edge_cache_origin__aws_v4_authentication
    list;
  origin_override_action :
    google_network_services_edge_cache_origin__origin_override_action
    list;
  origin_redirect :
    google_network_services_edge_cache_origin__origin_redirect list;
  timeout : google_network_services_edge_cache_origin__timeout list;
  timeouts :
    google_network_services_edge_cache_origin__timeouts option;
}
[@@deriving yojson_of]
(** google_network_services_edge_cache_origin *)

let google_network_services_edge_cache_origin ?description
    ?failover_origin ?id ?labels ?max_attempts ?port ?project
    ?protocol ?retry_conditions ?timeouts ~name ~origin_address
    ~aws_v4_authentication ~origin_override_action ~origin_redirect
    ~timeout __resource_id =
  let __resource_type =
    "google_network_services_edge_cache_origin"
  in
  let __resource =
    {
      description;
      failover_origin;
      id;
      labels;
      max_attempts;
      name;
      origin_address;
      port;
      project;
      protocol;
      retry_conditions;
      aws_v4_authentication;
      origin_override_action;
      origin_redirect;
      timeout;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_network_services_edge_cache_origin __resource);
  ()
