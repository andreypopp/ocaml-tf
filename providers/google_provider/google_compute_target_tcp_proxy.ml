(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_target_tcp_proxy__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_target_tcp_proxy__timeouts *)

type google_compute_target_tcp_proxy = {
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
  timeouts : google_compute_target_tcp_proxy__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_target_tcp_proxy *)

let google_compute_target_tcp_proxy ?description ?id ?project
    ?proxy_bind ?proxy_header ?timeouts ~backend_service ~name
    __resource_id =
  let __resource_type = "google_compute_target_tcp_proxy" in
  let __resource =
    {
      backend_service;
      description;
      id;
      name;
      project;
      proxy_bind;
      proxy_header;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_target_tcp_proxy __resource);
  ()
