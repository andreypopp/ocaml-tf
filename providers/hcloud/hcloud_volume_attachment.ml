(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_volume_attachment = {
  automount : bool prop option; [@option]  (** automount *)
  id : string prop option; [@option]  (** id *)
  server_id : float prop;  (** server_id *)
  volume_id : float prop;  (** volume_id *)
}
[@@deriving yojson_of]
(** hcloud_volume_attachment *)

let hcloud_volume_attachment ?automount ?id ~server_id ~volume_id ()
    : hcloud_volume_attachment =
  { automount; id; server_id; volume_id }

type t = {
  automount : bool prop;
  id : string prop;
  server_id : float prop;
  volume_id : float prop;
}

let make ?automount ?id ~server_id ~volume_id __id =
  let __type = "hcloud_volume_attachment" in
  let __attrs =
    ({
       automount = Prop.computed __type __id "automount";
       id = Prop.computed __type __id "id";
       server_id = Prop.computed __type __id "server_id";
       volume_id = Prop.computed __type __id "volume_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_volume_attachment
        (hcloud_volume_attachment ?automount ?id ~server_id
           ~volume_id ());
    attrs = __attrs;
  }

let register ?tf_module ?automount ?id ~server_id ~volume_id __id =
  let (r : _ Tf_core.resource) =
    make ?automount ?id ~server_id ~volume_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
