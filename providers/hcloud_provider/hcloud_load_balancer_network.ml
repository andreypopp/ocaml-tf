(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type hcloud_load_balancer_network = {
  enable_public_interface : bool option; [@option]
      (** enable_public_interface *)
  load_balancer_id : float;  (** load_balancer_id *)
  network_id : float option; [@option]  (** network_id *)
  subnet_id : string option; [@option]  (** subnet_id *)
}
[@@deriving yojson_of]
(** hcloud_load_balancer_network *)

let hcloud_load_balancer_network ?enable_public_interface ?network_id
    ?subnet_id ~load_balancer_id __resource_id =
  let __resource_type = "hcloud_load_balancer_network" in
  let __resource =
    {
      enable_public_interface;
      load_balancer_id;
      network_id;
      subnet_id;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_hcloud_load_balancer_network __resource);
  ()
