(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_volume_snapshot = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  tags : string list option; [@option]  (** tags *)
  volume_id : string;  (** volume_id *)
}
[@@deriving yojson_of]
(** digitalocean_volume_snapshot *)

let digitalocean_volume_snapshot ?id ?tags ~name ~volume_id
    __resource_id =
  let __resource_type = "digitalocean_volume_snapshot" in
  let __resource = { id; name; tags; volume_id } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume_snapshot __resource);
  ()
