(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_placement_group = {
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** labels *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** hcloud_placement_group *)

let hcloud_placement_group ?id ?labels ~name ~type_ () :
    hcloud_placement_group =
  { id; labels; name; type_ }

type t = {
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  servers : float list prop;
  type_ : string prop;
}

let make ?id ?labels ~name ~type_ __id =
  let __type = "hcloud_placement_group" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       servers = Prop.computed __type __id "servers";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_hcloud_placement_group
        (hcloud_placement_group ?id ?labels ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?labels ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?id ?labels ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
