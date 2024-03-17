(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_instance_group__named_port = {
  name : string;  (** The name which the port will be mapped to. *)
  port : float;  (** The port number to map the name to. *)
}
[@@deriving yojson_of]
(** The named port configuration. *)

type google_compute_instance_group__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_compute_instance_group__timeouts *)

type google_compute_instance_group = {
  description : string option; [@option]
      (** An optional textual description of the instance group. *)
  name : string;
      (** The name of the instance group. Must be 1-63 characters long and comply with RFC1035. Supported characters include lowercase letters, numbers, and hyphens. *)
  named_port : google_compute_instance_group__named_port list;
  timeouts : google_compute_instance_group__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group *)

let google_compute_instance_group ?description ?timeouts ~name
    ~named_port __resource_id =
  let __resource_type = "google_compute_instance_group" in
  let __resource = { description; name; named_port; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group __resource);
  ()
