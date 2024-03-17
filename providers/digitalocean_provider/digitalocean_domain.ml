(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_domain = {
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_domain *)

let digitalocean_domain ?id ?ip_address ~name __resource_id =
  let __resource_type = "digitalocean_domain" in
  let __resource = { id; ip_address; name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_domain __resource);
  ()
