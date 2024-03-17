(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_droplet_snapshot = {
  droplet_id : string;  (** droplet_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_droplet_snapshot *)

let digitalocean_droplet_snapshot ?id ~droplet_id ~name __resource_id
    =
  let __resource_type = "digitalocean_droplet_snapshot" in
  let __resource = { droplet_id; id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_droplet_snapshot __resource);
  ()
