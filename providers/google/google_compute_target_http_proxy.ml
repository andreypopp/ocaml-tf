(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?http_keep_alive_timeout_sec ?id ?project
    ?proxy_bind ?timeouts ~name ~url_map __id =
  let __type = "google_compute_target_http_proxy" in
  let __attrs =
    ({
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       http_keep_alive_timeout_sec =
         Prop.computed __type __id "http_keep_alive_timeout_sec";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_bind = Prop.computed __type __id "proxy_bind";
       proxy_id = Prop.computed __type __id "proxy_id";
       self_link = Prop.computed __type __id "self_link";
       url_map = Prop.computed __type __id "url_map";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_target_http_proxy
        (google_compute_target_http_proxy ?description
           ?http_keep_alive_timeout_sec ?id ?project ?proxy_bind
           ?timeouts ~name ~url_map ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?http_keep_alive_timeout_sec ?id
    ?project ?proxy_bind ?timeouts ~name ~url_map __id =
  let (r : _ Tf_core.resource) =
    make ?description ?http_keep_alive_timeout_sec ?id ?project
      ?proxy_bind ?timeouts ~name ~url_map __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
