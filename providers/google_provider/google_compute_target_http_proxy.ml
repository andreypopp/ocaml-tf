(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_target_http_proxy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_target_http_proxy__timeouts *)

type google_compute_target_http_proxy = {
  description : string option; [@option]
      (** An optional description of this resource. *)
  http_keep_alive_timeout_sec : float option; [@option]
      (** Specifies how long to keep a connection open, after completing a response,
while there is no matching traffic (in seconds). If an HTTP keepalive is
not specified, a default value (610 seconds) will be used. For Global
external HTTP(S) load balancer, the minimum allowed value is 5 seconds and
the maximum allowed value is 1200 seconds. For Global external HTTP(S)
load balancer (classic), this option is not available publicly. *)
  id : string option; [@option]  (** id *)
  name : string;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string option; [@option]  (** project *)
  proxy_bind : bool option; [@option]
      (** This field only applies when the forwarding rule that references
this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. *)
  url_map : string;
      (** A reference to the UrlMap resource that defines the mapping from URL
to the BackendService. *)
  timeouts : google_compute_target_http_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_http_proxy *)

let google_compute_target_http_proxy ?description
    ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind ?timeouts
    ~name ~url_map __resource_id =
  let __resource_type = "google_compute_target_http_proxy" in
  let __resource =
    {
      description;
      http_keep_alive_timeout_sec;
      id;
      name;
      project;
      proxy_bind;
      url_map;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_http_proxy __resource);
  ()
