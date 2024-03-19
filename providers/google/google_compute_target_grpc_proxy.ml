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

type google_compute_target_grpc_proxy = {
  description : string prop option; [@option]
      (** An optional description of this resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource. Provided by the client when the resource
is created. The name must be 1-63 characters long, and comply
with RFC1035. Specifically, the name must be 1-63 characters long
and match the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which
means the first character must be a lowercase letter, and all
following characters must be a dash, lowercase letter, or digit,
except the last character, which cannot be a dash. *)
  project : string prop option; [@option]  (** project *)
  url_map : string prop option; [@option]
      (** URL to the UrlMap resource that defines the mapping from URL to
the BackendService. The protocol field in the BackendService
must be set to GRPC. *)
  validate_for_proxyless : bool prop option; [@option]
      (** If true, indicates that the BackendServices referenced by
the urlMap may be accessed by gRPC applications without using
a sidecar proxy. This will enable configuration checks on urlMap
and its referenced BackendServices to not allow unsupported features.
A gRPC application must use xds:/// scheme in the target URI
of the service it is connecting to. If false, indicates that the
BackendServices referenced by the urlMap will be accessed by gRPC
applications via a sidecar proxy. In this case, a gRPC application
must not use xds:/// scheme in the target URI of the service
it is connecting to *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_grpc_proxy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_compute_target_grpc_proxy ?description ?id ?project
    ?url_map ?validate_for_proxyless ?timeouts ~name () :
    google_compute_target_grpc_proxy =
  {
    description;
    id;
    name;
    project;
    url_map;
    validate_for_proxyless;
    timeouts;
  }

type t = {
  creation_timestamp : string prop;
  description : string prop;
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  project : string prop;
  self_link : string prop;
  self_link_with_id : string prop;
  url_map : string prop;
  validate_for_proxyless : bool prop;
}

let register ?tf_module ?description ?id ?project ?url_map
    ?validate_for_proxyless ?timeouts ~name __resource_id =
  let __resource_type = "google_compute_target_grpc_proxy" in
  let __resource =
    google_compute_target_grpc_proxy ?description ?id ?project
      ?url_map ?validate_for_proxyless ?timeouts ~name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_grpc_proxy __resource);
  let __resource_attributes =
    ({
       creation_timestamp =
         Prop.computed __resource_type __resource_id
           "creation_timestamp";
       description =
         Prop.computed __resource_type __resource_id "description";
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       project =
         Prop.computed __resource_type __resource_id "project";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       self_link_with_id =
         Prop.computed __resource_type __resource_id
           "self_link_with_id";
       url_map =
         Prop.computed __resource_type __resource_id "url_map";
       validate_for_proxyless =
         Prop.computed __resource_type __resource_id
           "validate_for_proxyless";
     }
      : t)
  in
  __resource_attributes
