(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type action__response = {
  body : string prop;
      (** The body to return, the content here should conform to the `content_type`. *)
  content_type : string prop;
      (** The content-type of the body. Available values: `text/plain`, `text/xml`, `application/json`. *)
}
[@@deriving yojson_of]
(** Custom content-type and body to return, this overrides the custom error for the zone. This field is not required. Omission will result in default HTML error page. *)

type action = {
  mode : string prop;
      (** The type of action to perform. Available values: `simulate`, `ban`, `challenge`, `js_challenge`, `managed_challenge`. *)
  timeout : float prop option; [@option]
      (** The time in seconds as an integer to perform the mitigation action. This field is required if the `mode` is either `simulate` or `ban`. Must be the same or greater than the period. *)
  response : action__response list;
}
[@@deriving yojson_of]
(** The action to be performed when the threshold of matched traffic within the period defined is exceeded. *)

type correlate = {
  by : string prop option; [@option]
      (** If set to 'nat', NAT support will be enabled for rate limiting. Available values: `nat`. *)
}
[@@deriving yojson_of]
(** Determines how rate limiting is applied. By default if not specified, rate limiting applies to the clients IP address. *)

type match__request = {
  methods : string prop list option; [@option]
      (** HTTP Methods to match traffic on. Available values: `GET`, `POST`, `PUT`, `DELETE`, `PATCH`, `HEAD`, `_ALL_`. *)
  schemes : string prop list option; [@option]
      (** HTTP schemes to match traffic on. Available values: `HTTP`, `HTTPS`, `_ALL_`. *)
  url_pattern : string prop option; [@option]
      (** The URL pattern to match comprised of the host and path, i.e. example.org/path. Wildcard are expanded to match applicable traffic, query strings are not matched. Use _ for all traffic to your zone. *)
}
[@@deriving yojson_of]
(** Matches HTTP requests (from the client to Cloudflare). *)

type match__response = {
  headers : (string * string prop) list list option; [@option]
      (** List of HTTP headers maps to match the origin response on. *)
  origin_traffic : bool prop option; [@option]
      (** Only count traffic that has come from your origin servers. If true, cached items that Cloudflare serve will not count towards rate limiting. *)
  statuses : float prop list option; [@option]
      (** HTTP Status codes, can be one, many or indicate all by not providing this value. *)
}
[@@deriving yojson_of]
(** Matches HTTP responses before they are returned to the client from Cloudflare. If this is defined, then the entire counting of traffic occurs at this stage. *)

type match_ = {
  request : match__request list;
  response : match__response list;
}
[@@deriving yojson_of]
(** Determines which traffic the rate limit counts towards the threshold. By default matches all traffic in the zone. *)

type cloudflare_rate_limit = {
  bypass_url_patterns : string prop list option; [@option]
      (** bypass_url_patterns *)
  description : string prop option; [@option]
      (** A note that you can use to describe the reason for a rate limit. This value is sanitized and all tags are removed. *)
  disabled : bool prop option; [@option]
      (** Whether this ratelimit is currently disabled. Defaults to `false`. *)
  id : string prop option; [@option]  (** id *)
  period : float prop;
      (** The time in seconds to count matching traffic. If the count exceeds threshold within this period the action will be performed. *)
  threshold : float prop;
      (** The threshold that triggers the rate limit mitigations, combine with period. *)
  zone_id : string prop;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  action : action list;
  correlate : correlate list;
  match_ : match_ list;
}
[@@deriving yojson_of]
(** Provides a Cloudflare rate limit resource for a given zone. This can
be used to limit the traffic you receive zone-wide, or matching more
specific types of requests/responses.
 *)

let action__response ~body ~content_type () : action__response =
  { body; content_type }

let action ?timeout ~mode ~response () : action =
  { mode; timeout; response }

let correlate ?by () : correlate = { by }

let match__request ?methods ?schemes ?url_pattern () : match__request
    =
  { methods; schemes; url_pattern }

let match__response ?headers ?origin_traffic ?statuses () :
    match__response =
  { headers; origin_traffic; statuses }

let match_ ~request ~response () : match_ = { request; response }

let cloudflare_rate_limit ?bypass_url_patterns ?description ?disabled
    ?id ~period ~threshold ~zone_id ~action ~correlate ~match_ () :
    cloudflare_rate_limit =
  {
    bypass_url_patterns;
    description;
    disabled;
    id;
    period;
    threshold;
    zone_id;
    action;
    correlate;
    match_;
  }

type t = {
  bypass_url_patterns : string list prop;
  description : string prop;
  disabled : bool prop;
  id : string prop;
  period : float prop;
  threshold : float prop;
  zone_id : string prop;
}

let make ?bypass_url_patterns ?description ?disabled ?id ~period
    ~threshold ~zone_id ~action ~correlate ~match_ __id =
  let __type = "cloudflare_rate_limit" in
  let __attrs =
    ({
       bypass_url_patterns =
         Prop.computed __type __id "bypass_url_patterns";
       description = Prop.computed __type __id "description";
       disabled = Prop.computed __type __id "disabled";
       id = Prop.computed __type __id "id";
       period = Prop.computed __type __id "period";
       threshold = Prop.computed __type __id "threshold";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_rate_limit
        (cloudflare_rate_limit ?bypass_url_patterns ?description
           ?disabled ?id ~period ~threshold ~zone_id ~action
           ~correlate ~match_ ());
    attrs = __attrs;
  }

let register ?tf_module ?bypass_url_patterns ?description ?disabled
    ?id ~period ~threshold ~zone_id ~action ~correlate ~match_ __id =
  let (r : _ Tf_core.resource) =
    make ?bypass_url_patterns ?description ?disabled ?id ~period
      ~threshold ~zone_id ~action ~correlate ~match_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
