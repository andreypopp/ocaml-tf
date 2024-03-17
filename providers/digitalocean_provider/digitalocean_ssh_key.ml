(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_ssh_key = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  public_key : string prop;  (** public_key *)
}
[@@deriving yojson_of]
(** digitalocean_ssh_key *)

let digitalocean_ssh_key ?id ~name ~public_key __resource_id =
  let __resource_type = "digitalocean_ssh_key" in
  let __resource = { id; name; public_key } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_ssh_key __resource);
  ()
