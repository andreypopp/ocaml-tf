(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type digitalocean_droplet_snapshot = {
  droplet_id : string prop;  (** droplet_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** digitalocean_droplet_snapshot *)

let digitalocean_droplet_snapshot ?id ~droplet_id ~name () :
    digitalocean_droplet_snapshot =
  { droplet_id; id; name }

type t = {
  created_at : string prop;
  droplet_id : string prop;
  id : string prop;
  min_disk_size : float prop;
  name : string prop;
  regions : string list prop;
  size : float prop;
}

let make ?id ~droplet_id ~name __id =
  let __type = "digitalocean_droplet_snapshot" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       min_disk_size = Prop.computed __type __id "min_disk_size";
       name = Prop.computed __type __id "name";
       regions = Prop.computed __type __id "regions";
       size = Prop.computed __type __id "size";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_droplet_snapshot
        (digitalocean_droplet_snapshot ?id ~droplet_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~droplet_id ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~droplet_id ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
