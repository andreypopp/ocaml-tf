(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_target_http_proxy = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  http_keep_alive_timeout_sec : float prop option; [@option]
      (** Specifies how long to keep a connection open, after completing a response,
while there is no matching traffic (in seconds). If an HTTP keepalive is
not specified, a default value (610 seconds) will be used. For Global
external HTTP(S) load balancer, the minimum allowed value is 5 seconds and
the maximum allowed value is 1200 seconds. For Global external HTTP(S)
load balancer (classic), this option is not available publicly. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  proxy_bind : bool prop option; [@option]
      (** This field only applies when the forwarding rule that references
this target proxy has a loadBalancingScheme set to INTERNAL_SELF_MANAGED. *)
  url_map : string prop;
      (** A reference to the UrlMap resource that defines the mapping from URL
to the BackendService. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_http_proxy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_http_proxy ?description
    ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind ?timeouts
    ~name ~url_map () : google_compute_target_http_proxy =
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

type t = {
  creation_timestamp : string prop;
  description : string prop;
  http_keep_alive_timeout_sec : float prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_id : float prop;
  self_link : string prop;
  url_map : string prop;
}

let register ?tf_module ?description ?http_keep_alive_timeout_sec ?id
    ?project ?proxy_bind ?timeouts ~name ~url_map __resource_id =
  let __resource_type = "google_compute_target_http_proxy" in
  let __resource =
    google_compute_target_http_proxy ?description
      ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind ?timeouts
      ~name ~url_map ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_http_proxy __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       http_keep_alive_timeout_sec =
         Prop.computed __resource_type __resource_id
           "http_keep_alive_timeout_sec";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       proxy_bind =
         Prop.computed __resource_type __resource_id "proxy_bind";
       proxy_id =
         Prop.computed __resource_type __resource_id "proxy_id";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       url_map =
         Prop.computed __resource_type __resource_id "url_map";
     }
      : t)
  in
  __resource_attributes
