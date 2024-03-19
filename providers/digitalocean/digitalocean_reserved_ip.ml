(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_reserved_ip = {
  droplet_id : float prop option; [@option]  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  ip_address : string prop option; [@option]  (** ip_address *)
  region : string prop;  (** region *)
}
[@@deriving yojson_of]
(** digitalocean_reserved_ip *)

let digitalocean_reserved_ip ?droplet_id ?id ?ip_address ~region () :
    digitalocean_reserved_ip =
  { droplet_id; id; ip_address; region }

type t = {
  droplet_id : float prop;
  id : string prop;
  ip_address : string prop;
  region : string prop;
  urn : string prop;
}

let register ?tf_module ?droplet_id ?id ?ip_address ~region
    __resource_id =
  let __resource_type = "digitalocean_reserved_ip" in
  let __resource =
    digitalocean_reserved_ip ?droplet_id ?id ?ip_address ~region ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_reserved_ip __resource);
  let __resource_attributes =
    ({
       droplet_id =
         Prop.computed __resource_type __resource_id "droplet_id";
       id = Prop.computed __resource_type __resource_id "id";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       region = Prop.computed __resource_type __resource_id "region";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
