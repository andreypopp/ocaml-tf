(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_volume_attachment = {
  droplet_id : float prop;  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  volume_id : string prop;  (** volume_id *)
}
[@@deriving yojson_of]
(** digitalocean_volume_attachment *)

let digitalocean_volume_attachment ?id ~droplet_id ~volume_id () :
    digitalocean_volume_attachment =
  { droplet_id; id; volume_id }

type t = {
  droplet_id : float prop;
  id : string prop;
  volume_id : string prop;
}

let register ?tf_module ?id ~droplet_id ~volume_id __resource_id =
  let __resource_type = "digitalocean_volume_attachment" in
  let __resource =
    digitalocean_volume_attachment ?id ~droplet_id ~volume_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume_attachment __resource);
  let __resource_attributes =
    ({
       droplet_id =
         Prop.computed __resource_type __resource_id "droplet_id";
       id = Prop.computed __resource_type __resource_id "id";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
