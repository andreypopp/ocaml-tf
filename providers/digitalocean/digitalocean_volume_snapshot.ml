(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_volume_snapshot = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : string prop list option; [@option]  (** tags *)
  volume_id : string prop;  (** volume_id *)
}
[@@deriving yojson_of]
(** digitalocean_volume_snapshot *)

type t = {
  created_at : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
  tags : string list prop;
  volume_id : string prop;
}

let digitalocean_volume_snapshot ?id ?tags ~name ~volume_id
    __resource_id =
  let __resource_type = "digitalocean_volume_snapshot" in
  let __resource =
    ({ id; name; tags; volume_id } : digitalocean_volume_snapshot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume_snapshot __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       id = Prop.computed __resource_type __resource_id "id";
       min_disk_size =
         Prop.computed __resource_type __resource_id "min_disk_size";
       name = Prop.computed __resource_type __resource_id "name";
       regions =
         Prop.computed __resource_type __resource_id "regions";
       size = Prop.computed __resource_type __resource_id "size";
       tags = Prop.computed __resource_type __resource_id "tags";
       volume_id =
         Prop.computed __resource_type __resource_id "volume_id";
     }
      : t)
  in
  __resource_attributes
