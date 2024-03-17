(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_tag = {
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_tag *)

let digitalocean_tag ?id ~name __resource_id =
  let __resource_type = "digitalocean_tag" in
  let __resource = { id; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_tag __resource);
  ()
