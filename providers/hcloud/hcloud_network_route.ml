(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_network_route = {
  destination : string prop;  (** destination *)
  gateway : string prop;  (** gateway *)
  id : string prop option; [@option]  (** id *)
  network_id : float prop;  (** network_id *)
}
[@@deriving yojson_of]
(** hcloud_network_route *)

let hcloud_network_route ?id ~destination ~gateway ~network_id () :
    hcloud_network_route =
  { destination; gateway; id; network_id }

type t = {
  destination : string prop;
  gateway : string prop;
  id : string prop;
  network_id : float prop;
}

let make ?id ~destination ~gateway ~network_id __id =
  let __type = "hcloud_network_route" in
  let __attrs =
    ({
       destination = Prop.computed __type __id "destination";
       gateway = Prop.computed __type __id "gateway";
       id = Prop.computed __type __id "id";
       network_id = Prop.computed __type __id "network_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_network_route
        (hcloud_network_route ?id ~destination ~gateway ~network_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~destination ~gateway ~network_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~destination ~gateway ~network_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
