(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_reserved_ip = {
  droplet_id : float prop option; [@option]  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_reserved_ip *)

let digitalocean_reserved_ip ?droplet_id ?id ?ip_address ~region
    __resource_id =
  let __resource_type = "digitalocean_reserved_ip" in
  let __resource = { droplet_id; id; ip_address; region } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_reserved_ip __resource);
  ()
