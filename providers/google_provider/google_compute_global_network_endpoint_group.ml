(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_global_network_endpoint_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint_group__timeouts *)

type google_compute_global_network_endpoint_group = {
  default_port : float prop option; [@option]
      (** The default port used if the port number is not specified in the
network endpoint. *)
  description : string prop option; [@option]
      (** An optional description of this resource. Provide this property when
you create the resource. *)
  id : string prop option; [@option]  (** id *)
  name : string prop;
      (** Name of the resource; provided by the client when the resource is
created. The name must be 1-63 characters long, and comply with
RFC1035. Specifically, the name must be 1-63 characters long and match
the regular expression '[a-z]([-a-z0-9]*[a-z0-9])?' which means the
first character must be a lowercase letter, and all following
characters must be a dash, lowercase letter, or digit, except the last
character, which cannot be a dash. *)
  network_endpoint_type : string prop;
      (** Type of network endpoints in this network endpoint group. Possible values: [INTERNET_IP_PORT, INTERNET_FQDN_PORT] *)
  project : string prop option; [@option]  (** project *)
  timeouts :
    google_compute_global_network_endpoint_group__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_global_network_endpoint_group *)

let google_compute_global_network_endpoint_group ?default_port
    ?description ?id ?project ?timeouts ~name ~network_endpoint_type
    __resource_id =
  let __resource_type =
    "google_compute_global_network_endpoint_group"
  in
  let __resource =
    {
      default_port;
      description;
      id;
      name;
      network_endpoint_type;
      project;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_global_network_endpoint_group
       __resource);
  ()
