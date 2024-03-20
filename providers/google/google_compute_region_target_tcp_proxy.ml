(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type google_compute_region_target_tcp_proxy = {
  backend_service : string prop;
      (** A reference to the BackendService resource. *)
  description : string prop option; [@option]
      (** An optional description of this resource. *)
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
  proxy_header : string prop option; [@option]
      (** Specifies the type of proxy header to append before sending data to
the backend. Default value: NONE Possible values: [NONE, PROXY_V1] *)
  region : string prop option; [@option]
      (** The Region in which the created target TCP proxy should reside.
If it is not provided, the provider region is used. *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_region_target_tcp_proxy *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let google_compute_region_target_tcp_proxy ?description ?id ?project
    ?proxy_bind ?proxy_header ?region ?timeouts ~backend_service
    ~name () : google_compute_region_target_tcp_proxy =
  {
    backend_service;
    description;
    id;
    name;
    project;
    proxy_bind;
    proxy_header;
    region;
    timeouts;
  }

type t = {
  backend_service : string prop;
  creation_timestamp : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  proxy_bind : bool prop;
  proxy_header : string prop;
  proxy_id : float prop;
  region : string prop;
  self_link : string prop;
}

let make ?description ?id ?project ?proxy_bind ?proxy_header ?region
    ?timeouts ~backend_service ~name __id =
  let __type = "google_compute_region_target_tcp_proxy" in
  let __attrs =
    ({
       backend_service = Prop.computed __type __id "backend_service";
       creation_timestamp =
         Prop.computed __type __id "creation_timestamp";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       proxy_bind = Prop.computed __type __id "proxy_bind";
       proxy_header = Prop.computed __type __id "proxy_header";
       proxy_id = Prop.computed __type __id "proxy_id";
       region = Prop.computed __type __id "region";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_compute_region_target_tcp_proxy
        (google_compute_region_target_tcp_proxy ?description ?id
           ?project ?proxy_bind ?proxy_header ?region ?timeouts
           ~backend_service ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?project ?proxy_bind
    ?proxy_header ?region ?timeouts ~backend_service ~name __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?project ?proxy_bind ?proxy_header ?region
      ?timeouts ~backend_service ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
