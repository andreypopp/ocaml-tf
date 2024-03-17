(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_network = {
  delete_protection : bool option; [@option]
      (** delete_protection *)
  expose_routes_to_vswitch : bool option; [@option]
      (** Enable or disable exposing the routes to the vSwitch connection. The exposing only takes effect if a vSwitch connection is active. *)
  ip_range : string;  (** ip_range *)
  labels : (string * string) list option; [@option]  (** labels *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** hcloud_network *)

let hcloud_network ?delete_protection ?expose_routes_to_vswitch
    ?labels ~ip_range ~name __resource_id =
  let __resource_type = "hcloud_network" in
  let __resource =
    {
      delete_protection;
      expose_routes_to_vswitch;
      ip_range;
      labels;
      name;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_network __resource);
  ()
