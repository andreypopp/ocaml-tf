(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_firewall_attachment = {
  firewall_id : float prop;  (** firewall_id *)
  id : string prop option; [@option]  (** id *)
  label_selectors : string prop list option; [@option]
      (** label_selectors *)
  server_ids : float prop list option; [@option]  (** server_ids *)
}
[@@deriving yojson_of]
(** hcloud_firewall_attachment *)

let hcloud_firewall_attachment ?id ?label_selectors ?server_ids
    ~firewall_id () : hcloud_firewall_attachment =
  { firewall_id; id; label_selectors; server_ids }

type t = {
  firewall_id : float prop;
  id : string prop;
  label_selectors : string list prop;
  server_ids : float list prop;
}

let make ?id ?label_selectors ?server_ids ~firewall_id __id =
  let __type = "hcloud_firewall_attachment" in
  let __attrs =
    ({
       firewall_id = Prop.computed __type __id "firewall_id";
       id = Prop.computed __type __id "id";
       label_selectors = Prop.computed __type __id "label_selectors";
       server_ids = Prop.computed __type __id "server_ids";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_firewall_attachment
        (hcloud_firewall_attachment ?id ?label_selectors ?server_ids
           ~firewall_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?label_selectors ?server_ids ~firewall_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?label_selectors ?server_ids ~firewall_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
