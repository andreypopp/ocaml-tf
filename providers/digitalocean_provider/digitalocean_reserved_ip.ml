(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type digitalocean_reserved_ip = {
  droplet_id : float option; [@option]  (** droplet_id *)
  region : string;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_reserved_ip *)

let digitalocean_reserved_ip ?droplet_id ~region __resource_id =
  let __resource_type = "digitalocean_reserved_ip" in
  let __resource = { droplet_id; region } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_reserved_ip __resource);
  ()
