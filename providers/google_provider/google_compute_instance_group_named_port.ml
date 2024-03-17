(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_compute_instance_group_named_port__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** google_compute_instance_group_named_port__timeouts *)

type google_compute_instance_group_named_port = {
  group : string;  (** The name of the instance group. *)
  name : string;
      (** The name for this named port. The name must be 1-63 characters
long, and comply with RFC1035. *)
  port : float;
      (** The port number, which can be a value between 1 and 65535. *)
  timeouts :
    google_compute_instance_group_named_port__timeouts option;
}
[@@deriving yojson_of]
(** google_compute_instance_group_named_port *)

let google_compute_instance_group_named_port ?timeouts ~group ~name
    ~port __resource_id =
  let __resource_type = "google_compute_instance_group_named_port" in
  let __resource = { group; name; port; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_compute_instance_group_named_port __resource);
  ()
