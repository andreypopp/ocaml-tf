(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_rate_limit__action__response = {
  body : string;
      (** The body to return, the content here should conform to the `content_type`. *)
  content_type : string;
      (** The content-type of the body. Available values: `text/plain`, `text/xml`, `application/json`. *)
}
[@@deriving yojson_of]
(** Custom content-type and body to return, this overrides the custom error for the zone. This field is not required. Omission will result in default HTML error page. *)

type cloudflare_rate_limit__action = {
  mode : string;
      (** The type of action to perform. Available values: `simulate`, `ban`, `challenge`, `js_challenge`, `managed_challenge`. *)
  timeout : float option; [@option]
      (** The time in seconds as an integer to perform the mitigation action. This field is required if the `mode` is either `simulate` or `ban`. Must be the same or greater than the period. *)
  response : cloudflare_rate_limit__action__response list;
}
[@@deriving yojson_of]
(** The action to be performed when the threshold of matched traffic within the period defined is exceeded. *)

type cloudflare_rate_limit__correlate = {
  by : string option; [@option]
      (** If set to 'nat', NAT support will be enabled for rate limiting. Available values: `nat`. *)
}
[@@deriving yojson_of]
(** Determines how rate limiting is applied. By default if not specified, rate limiting applies to the clients IP address. *)

type cloudflare_rate_limit__match__request = {
  methods : string list option; [@option]
      (** HTTP Methods to match traffic on. Available values: `GET`, `POST`, `PUT`, `DELETE`, `PATCH`, `HEAD`, `_ALL_`. *)
  schemes : string list option; [@option]
      (** HTTP schemes to match traffic on. Available values: `HTTP`, `HTTPS`, `_ALL_`. *)
  url_pattern : string option; [@option]
      (** The URL pattern to match comprised of the host and path, i.e. example.org/path. Wildcard are expanded to match applicable traffic, query strings are not matched. Use _ for all traffic to your zone. *)
}
[@@deriving yojson_of]
(** Matches HTTP requests (from the client to Cloudflare). *)

type cloudflare_rate_limit__match__response = {
  headers : (string * string) list list option; [@option]
      (** List of HTTP headers maps to match the origin response on. *)
  origin_traffic : bool option; [@option]
      (** Only count traffic that has come from your origin servers. If true, cached items that Cloudflare serve will not count towards rate limiting. *)
  statuses : float list option; [@option]
      (** HTTP Status codes, can be one, many or indicate all by not providing this value. *)
}
[@@deriving yojson_of]
(** Matches HTTP responses before they are returned to the client from Cloudflare. If this is defined, then the entire counting of traffic occurs at this stage. *)

type cloudflare_rate_limit__match = {
  request : cloudflare_rate_limit__match__request list;
  response : cloudflare_rate_limit__match__response list;
}
[@@deriving yojson_of]
(** Determines which traffic the rate limit counts towards the threshold. By default matches all traffic in the zone. *)

type cloudflare_rate_limit = {
  bypass_url_patterns : string list option; [@option]
      (** bypass_url_patterns *)
  description : string option; [@option]
      (** A note that you can use to describe the reason for a rate limit. This value is sanitized and all tags are removed. *)
  disabled : bool option; [@option]
      (** Whether this ratelimit is currently disabled. Defaults to `false`. *)
  period : float;
      (** The time in seconds to count matching traffic. If the count exceeds threshold within this period the action will be performed. *)
  threshold : float;
      (** The threshold that triggers the rate limit mitigations, combine with period. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  action : cloudflare_rate_limit__action list;
  correlate : cloudflare_rate_limit__correlate list;
  match_ : cloudflare_rate_limit__match list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare rate limit resource for a given zone. This can
be used to limit the traffic you receive zone-wide, or matching more
specific types of requests/responses.
 *)

let cloudflare_rate_limit ?bypass_url_patterns ?description ?disabled
    ~period ~threshold ~zone_id ~action ~correlate ~match_
    __resource_id =
  let __resource_type = "cloudflare_rate_limit" in
  let __resource =
    {
      bypass_url_patterns;
      description;
      disabled;
      period;
      threshold;
      zone_id;
      action;
      correlate;
      match_;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_rate_limit __resource);
  ()
