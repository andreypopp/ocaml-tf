(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
}
[@@deriving yojson_of]
(** timeouts *)

type hcloud_snapshot = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  server_id : float prop;  (** server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** hcloud_snapshot *)

let timeouts ?create () : timeouts = { create }

let hcloud_snapshot ?description ?id ?labels ?timeouts ~server_id ()
    : hcloud_snapshot =
  { description; id; labels; server_id; timeouts }

type t = {
  description : string prop;
  id : string prop;
  labels : (string * string) list prop;
  server_id : float prop;
}

let make ?description ?id ?labels ?timeouts ~server_id __id =
  let __type = "hcloud_snapshot" in
  let __attrs =
    ({
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_snapshot
        (hcloud_snapshot ?description ?id ?labels ?timeouts
           ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?labels ?timeouts ~server_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?labels ?timeouts ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
