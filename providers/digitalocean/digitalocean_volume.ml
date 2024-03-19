(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type digitalocean_volume = {
  description : string prop option; [@option]  (** description *)
  filesystem_type : string prop option; [@option]
      (** filesystem_type *)
  id : string prop option; [@option]  (** id *)
  initial_filesystem_label : string prop option; [@option]
      (** initial_filesystem_label *)
  initial_filesystem_type : string prop option; [@option]
      (** initial_filesystem_type *)
  name : string prop;  (** name *)
  region : string prop;  (** region *)
  size : float prop;  (** size *)
  snapshot_id : string prop option; [@option]  (** snapshot_id *)
  tags : string prop list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** digitalocean_volume *)

let digitalocean_volume ?description ?filesystem_type ?id
    ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
    ?tags ~name ~region ~size () : digitalocean_volume =
  {
    description;
    filesystem_type;
    id;
    initial_filesystem_label;
    initial_filesystem_type;
    name;
    region;
    size;
    snapshot_id;
    tags;
  }

type t = {
  description : string prop;
  droplet_ids : float list prop;
  filesystem_label : string prop;
  filesystem_type : string prop;
  id : string prop;
  initial_filesystem_label : string prop;
  initial_filesystem_type : string prop;
  name : string prop;
  region : string prop;
  size : float prop;
  snapshot_id : string prop;
  tags : string list prop;
  urn : string prop;
}

let register ?tf_module ?description ?filesystem_type ?id
    ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
    ?tags ~name ~region ~size __resource_id =
  let __resource_type = "digitalocean_volume" in
  let __resource =
    digitalocean_volume ?description ?filesystem_type ?id
      ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
      ?tags ~name ~region ~size ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_digitalocean_volume __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       droplet_ids =
         Prop.computed __resource_type __resource_id "droplet_ids";
       filesystem_label =
         Prop.computed __resource_type __resource_id
           "filesystem_label";
       filesystem_type =
         Prop.computed __resource_type __resource_id
           "filesystem_type";
       id = Prop.computed __resource_type __resource_id "id";
       initial_filesystem_label =
         Prop.computed __resource_type __resource_id
           "initial_filesystem_label";
       initial_filesystem_type =
         Prop.computed __resource_type __resource_id
           "initial_filesystem_type";
       name = Prop.computed __resource_type __resource_id "name";
       region = Prop.computed __resource_type __resource_id "region";
       size = Prop.computed __resource_type __resource_id "size";
       snapshot_id =
         Prop.computed __resource_type __resource_id "snapshot_id";
       tags = Prop.computed __resource_type __resource_id "tags";
       urn = Prop.computed __resource_type __resource_id "urn";
     }
      : t)
  in
  __resource_attributes
