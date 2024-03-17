(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_volume_attachment = {
  droplet_id : float;  (** droplet_id *)
  id : string option; [@option]  (** id *)
  volume_id : string;  (** volume_id *)
}
[@@deriving yojson_of]
(** digitalocean_volume_attachment *)

let digitalocean_volume_attachment ?id ~droplet_id ~volume_id
    __resource_id =
  let __resource_type = "digitalocean_volume_attachment" in
  let __resource = { droplet_id; id; volume_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume_attachment __resource);
  ()
