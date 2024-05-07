(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type hcloud_placement_group = {
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : hcloud_placement_group) -> ()

let yojson_of_hcloud_placement_group =
  (function
   | { id = v_id; labels = v_labels; name = v_name; type_ = v_type_ }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : hcloud_placement_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_hcloud_placement_group

[@@@deriving.end]

let hcloud_placement_group ?id ?labels ~name ~type_ () :
    hcloud_placement_group =
  { id; labels; name; type_ }

type t = {
  tf_name : string;
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
       tf_name = __id;
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
