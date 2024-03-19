(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?description ?id ?project ?proxy_bind
    ?proxy_header ?region ?timeouts ~backend_service ~name
    __resource_id =
  let __resource_type = "google_compute_region_target_tcp_proxy" in
  let __resource =
    google_compute_region_target_tcp_proxy ?description ?id ?project
      ?proxy_bind ?proxy_header ?region ?timeouts ~backend_service
      ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_region_target_tcp_proxy __resource);
  let __resource_attributes =
    ({
       backend_service =
         Prop.computed __resource_type __resource_id
           "backend_service";
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       proxy_bind =
         Prop.computed __resource_type __resource_id "proxy_bind";
       proxy_header =
         Prop.computed __resource_type __resource_id "proxy_header";
       proxy_id =
         Prop.computed __resource_type __resource_id "proxy_id";
       region = Prop.computed __resource_type __resource_id "region";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
     }
      : t)
  in
  __resource_attributes
