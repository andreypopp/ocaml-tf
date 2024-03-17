(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_container_registry = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  region : string prop option; [@option]  (** region *)
  subscription_tier_slug : string prop;  (** subscription_tier_slug *)
}
[@@deriving yojson_of]
(** digitalocean_container_registry *)

let digitalocean_container_registry ?id ?region ~name
    ~subscription_tier_slug __resource_id =
  let __resource_type = "digitalocean_container_registry" in
  let __resource = { id; name; region; subscription_tier_slug } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_container_registry __resource);
  ()
