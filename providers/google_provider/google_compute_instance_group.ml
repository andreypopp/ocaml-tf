(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_compute_instance_group__named_port = {
  name : string prop;
      (** The name which the port will be mapped to. *)
  port : float prop;  (** The port number to map the name to. *)
}
[@@deriving yojson_of]
(** The named port configuration. *)

type google_compute_instance_group__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_instance_group__timeouts *)

type google_compute_instance_group = {
  description : string prop option; [@option]
      (** An optional textual description of the instance group. *)
  id : string prop option; [@option]  (** id *)
  instances : string prop list option; [@option]
      (** The list of instances in the group, in self_link format. When adding instances they must all be in the same network and zone as the instance group. *)
  name : string prop;
      (** The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens. *)
  network : string prop option; [@option]
      (** The URL of the network the instance group is in. If this is different from the network where the instances are in, the creation fails. Defaults to the network where the instances are in (if neither network nor instances is specified, this field will be blank). *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  zone : string prop option; [@option]
      (** The zone that this instance group should be created in. *)
  named_port : google_compute_instance_group__named_port list;
  timeouts : google_compute_instance_group__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group *)

let google_compute_instance_group ?description ?id ?instances
    ?network ?project ?zone ?timeouts ~name ~named_port __resource_id
    =
  let __resource_type = "google_compute_instance_group" in
  let __resource =
    {
      description;
      id;
      instances;
      name;
      network;
      project;
      zone;
      named_port;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group __resource);
  ()
