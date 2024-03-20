(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ~droplet_id ~volume_id __id =
  let __type = "digitalocean_volume_attachment" in
  let __attrs =
    ({
       droplet_id = Prop.computed __type __id "droplet_id";
       id = Prop.computed __type __id "id";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_digitalocean_volume_attachment
        (digitalocean_volume_attachment ?id ~droplet_id ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~droplet_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~droplet_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
