(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?description ?filesystem_type ?id ?initial_filesystem_label
    ?initial_filesystem_type ?snapshot_id ?tags ~name ~region ~size
    __id =
  let __type = "digitalocean_volume" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       droplet_ids = Prop.computed __type __id "droplet_ids";
       filesystem_label =
         Prop.computed __type __id "filesystem_label";
       filesystem_type = Prop.computed __type __id "filesystem_type";
       id = Prop.computed __type __id "id";
       initial_filesystem_label =
         Prop.computed __type __id "initial_filesystem_label";
       initial_filesystem_type =
         Prop.computed __type __id "initial_filesystem_type";
       name = Prop.computed __type __id "name";
       region = Prop.computed __type __id "region";
       size = Prop.computed __type __id "size";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       tags = Prop.computed __type __id "tags";
       urn = Prop.computed __type __id "urn";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume
        (digitalocean_volume ?description ?filesystem_type ?id
           ?initial_filesystem_label ?initial_filesystem_type
           ?snapshot_id ?tags ~name ~region ~size ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?filesystem_type ?id
    ?initial_filesystem_label ?initial_filesystem_type ?snapshot_id
    ?tags ~name ~region ~size __id =
  let (r : _ Tf_core.resource) =
    make ?description ?filesystem_type ?id ?initial_filesystem_label
      ?initial_filesystem_type ?snapshot_id ?tags ~name ~region ~size
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
