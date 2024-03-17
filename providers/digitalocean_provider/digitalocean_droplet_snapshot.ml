(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_droplet_snapshot = {
  droplet_id : string prop;  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_droplet_snapshot *)

type t = {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
}

let digitalocean_droplet_snapshot ?id ~droplet_id ~name __resource_id
    =
  let __resource_type = "digitalocean_droplet_snapshot" in
  let __resource =
    ({ droplet_id; id; name } : digitalocean_droplet_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_droplet_snapshot __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       droplet_id =
         Prop.computed __resource_type __resource_id "droplet_id";
       id = Prop.computed __resource_type __resource_id "id";
       min_disk_size =
         Prop.computed __resource_type __resource_id "min_disk_size";
       name = Prop.computed __resource_type __resource_id "name";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       size = Prop.computed __resource_type __resource_id "size";
     }
      : t)
  in
  __resource_attributes
