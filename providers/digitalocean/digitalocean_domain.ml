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

let digitalocean_domain ?id ?ip_address ~name () :
    digitalocean_domain =
  { id; ip_address; name }

type t = {
  id : string prop;
  ip_address : string prop;
  name : string prop;
  ttl : float prop;
  urn : string prop;
}

let register ?tf_module ?id ?ip_address ~name __resource_id =
  let __resource_type = "digitalocean_domain" in
  let __resource = digitalocean_domain ?id ?ip_address ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_domain __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       name = Prop.computed __resource_type __resource_id "name";
       ttl = Prop.computed __resource_type __resource_id "ttl";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
