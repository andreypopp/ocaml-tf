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

let digitalocean_ssh_key ?id ~name ~public_key () :
    digitalocean_ssh_key =
  { id; name; public_key }

type t = {
  fingerprint : string prop;
  id : string prop;
  name : string prop;
  public_key : string prop;
}

let register ?tf_module ?id ~name ~public_key __resource_id =
  let __resource_type = "digitalocean_ssh_key" in
  let __resource = digitalocean_ssh_key ?id ~name ~public_key () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_ssh_key __resource);
  let __resource_attributes =
    ({
       fingerprint =
         Prop.computed __resource_type __resource_id "fingerprint";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       public_key =
         Prop.computed __resource_type __resource_id "public_key";
     }
      : t)
  in
  __resource_attributes
