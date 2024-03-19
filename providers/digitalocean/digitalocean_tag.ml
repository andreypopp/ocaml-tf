(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_tag = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_tag *)

let digitalocean_tag ?id ~name () : digitalocean_tag = { id; name }

type t = {
  databases_count : float prop;
  droplets_count : float prop;
  id : string prop;
  images_count : float prop;
  name : string prop;
  total_resource_count : float prop;
  volume_snapshots_count : float prop;
  volumes_count : float prop;
}

let register ?tf_module ?id ~name __resource_id =
  let __resource_type = "digitalocean_tag" in
  let __resource = digitalocean_tag ?id ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_tag __resource);
  let __resource_attributes =
    ({
       databases_count =
         Prop.computed __resource_type __resource_id
           "databases_count";
       droplets_count =
         Prop.computed __resource_type __resource_id "droplets_count";
       id = Prop.computed __resource_type __resource_id "id";
       images_count =
         Prop.computed __resource_type __resource_id "images_count";
       name = Prop.computed __resource_type __resource_id "name";
       total_resource_count =
         Prop.computed __resource_type __resource_id
           "total_resource_count";
       volume_snapshots_count =
         Prop.computed __resource_type __resource_id
           "volume_snapshots_count";
       volumes_count =
         Prop.computed __resource_type __resource_id "volumes_count";
     }
      : t)
  in
  __resource_attributes
