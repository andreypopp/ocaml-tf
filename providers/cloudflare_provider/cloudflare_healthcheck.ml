(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type cloudflare_healthcheck__header = {
  header : string;  (** The header name. *)
  values : string list;
      (** A list of string values for the header. *)
}
[@@deriving yojson_of]
(** The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden. *)

type cloudflare_healthcheck__timeouts = {
  create : string option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** cloudflare_healthcheck__timeouts *)

type cloudflare_healthcheck = {
  address : string;
      (** The hostname or IP address of the origin server to run health checks on. *)
  allow_insecure : bool option; [@option]
      (** Do not validate the certificate when the health check uses HTTPS. Defaults to `false`. *)
  check_regions : string list option; [@option]
      (** A list of regions from which to run health checks. If not set, Cloudflare will pick a default region. Available values: `WNAM`, `ENAM`, `WEU`, `EEU`, `NSAM`, `SSAM`, `OC`, `ME`, `NAF`, `SAF`, `IN`, `SEAS`, `NEAS`, `ALL_REGIONS`. *)
  consecutive_fails : float option; [@option]
      (** The number of consecutive fails required from a health check before changing the health to unhealthy. Defaults to `1`. *)
  consecutive_successes : float option; [@option]
      (** The number of consecutive successes required from a health check before changing the health to healthy. Defaults to `1`. *)
  description : string option; [@option]
      (** A human-readable description of the health check. *)
  expected_body : string option; [@option]
      (** A case-insensitive sub-string to look for in the response body. If this string is not found the origin will be marked as unhealthy. *)
  expected_codes : string list option; [@option]
      (** The expected HTTP response codes (e.g. '200') or code ranges (e.g. '2xx' for all codes starting with 2) of the health check. *)
  follow_redirects : bool option; [@option]
      (** Follow redirects if the origin returns a 3xx status code. Defaults to `false`. *)
  id : string option; [@option]  (** id *)
  interval : float option; [@option]
      (** The interval between each health check. Shorter intervals may give quicker notifications if the origin status changes, but will increase the load on the origin as we check from multiple locations. Defaults to `60`. *)
  method_ : string option; [@option] [@key "method"]
      (** The HTTP method to use for the health check. Available values: `connection_established`, `GET`, `HEAD`. *)
  name : string;
      (** A short name to identify the health check. Only alphanumeric characters, hyphens, and underscores are allowed. *)
  path : string option; [@option]
      (** The endpoint path to health check against. Defaults to `/`. *)
  port : float option; [@option]
      (** Port number to connect to for the health check. Defaults to `80`. *)
  retries : float option; [@option]
      (** The number of retries to attempt in case of a timeout before marking the origin as unhealthy. Retries are attempted immediately. Defaults to `2`. *)
  suspended : bool option; [@option]
      (** If suspended, no health checks are sent to the origin. Defaults to `false`. *)
  timeout : float option; [@option]
      (** The timeout (in seconds) before marking the health check as failed. Defaults to `5`. *)
  type_ : string; [@key "type"]
      (** The protocol to use for the health check. Available values: `TCP`, `HTTP`, `HTTPS`. *)
  zone_id : string;
      (** The zone identifier to target for the resource. **Modifying this attribute will force creation of a new resource.** *)
  header : cloudflare_healthcheck__header list;
  timeouts : cloudflare_healthcheck__timeouts option;
}
[@@deriving yojson_of]
(** Standalone Health Checks provide a way to monitor origin servers
without needing a Cloudflare Load Balancer.
 *)

let cloudflare_healthcheck ?allow_insecure ?check_regions
    ?consecutive_fails ?consecutive_successes ?description
    ?expected_body ?expected_codes ?follow_redirects ?id ?interval
    ?method_ ?path ?port ?retries ?suspended ?timeout ?timeouts
    ~address ~name ~type_ ~zone_id ~header __resource_id =
  let __resource_type = "cloudflare_healthcheck" in
  let __resource =
    {
      address;
      allow_insecure;
      check_regions;
      consecutive_fails;
      consecutive_successes;
      description;
      expected_body;
      expected_codes;
      follow_redirects;
      id;
      interval;
      method_;
      name;
      path;
      port;
      retries;
      suspended;
      timeout;
      type_;
      zone_id;
      header;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_cloudflare_healthcheck __resource);
  ()
