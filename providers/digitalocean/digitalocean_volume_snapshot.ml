(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_volume_snapshot = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : string prop list option; [@option]  (** tags *)
  volume_id : string prop;  (** volume_id *)
}
[@@deriving yojson_of]
(** digitalocean_volume_snapshot *)

let digitalocean_volume_snapshot ?id ?tags ~name ~volume_id () :
    digitalocean_volume_snapshot =
  { id; name; tags; volume_id }

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

let make ?id ?tags ~name ~volume_id __id =
  let __type = "digitalocean_volume_snapshot" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       id = Prop.computed __type __id "id";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       name = Prop.computed __type __id "name";
       regions = Prop.computed __type __id "regions";
       size = Prop.computed __type __id "size";
       tags = Prop.computed __type __id "tags";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume_snapshot
        (digitalocean_volume_snapshot ?id ?tags ~name ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ~name ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ~name ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
