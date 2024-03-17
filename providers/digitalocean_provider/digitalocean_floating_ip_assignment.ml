(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_floating_ip_assignment = {
  droplet_id : float prop;  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop;  (** ip_address *)
}
[@@deriving yojson_of]
(** digitalocean_floating_ip_assignment *)

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
}

let digitalocean_floating_ip_assignment ?id ~droplet_id ~ip_address
    __resource_id =
  let __resource_type = "digitalocean_floating_ip_assignment" in
  let __resource =
    ({ droplet_id; id; ip_address }
      : digitalocean_floating_ip_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_floating_ip_assignment __resource);
  let __resource_attributes =
    ({
       droplet_id =
         Prop.computed __resource_type __resource_id "droplet_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
     }
      : t)
  in
  __resource_attributes
