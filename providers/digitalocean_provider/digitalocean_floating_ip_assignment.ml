(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_floating_ip_assignment = {
  droplet_id : float;  (** droplet_id *)
  ip_address : string;  (** ip_address *)
}
[@@deriving yojson_of]
(** digitalocean_floating_ip_assignment *)

let digitalocean_floating_ip_assignment ~droplet_id ~ip_address
    __resource_id =
  let __resource_type = "digitalocean_floating_ip_assignment" in
  let __resource = { droplet_id; ip_address } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_floating_ip_assignment __resource);
  ()
