(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type keys = {
  create_time : string prop;
  description : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  purpose : string prop;
  purpose_data : (string * string prop) list;
  short_name : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : keys) -> ()

let yojson_of_keys =
  (function
   | {
       create_time = v_create_time;
       description = v_description;
       name = v_name;
       namespaced_name = v_namespaced_name;
       parent = v_parent;
       purpose = v_purpose;
       purpose_data = v_purpose_data;
       short_name = v_short_name;
       update_time = v_update_time;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_update_time in
         ("update_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_short_name in
         ("short_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_purpose_data
         in
         ("purpose_data", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_purpose in
         ("purpose", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_namespaced_name
         in
         ("namespaced_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys

[@@@deriving.end]

type google_tags_tag_keys = {
  id : string prop option; [@option]
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tags_tag_keys) -> ()

let yojson_of_google_tags_tag_keys =
  (function
   | { id = v_id; parent = v_parent } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
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
    : google_tags_tag_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tags_tag_keys

[@@@deriving.end]

let google_tags_tag_keys ?id ~parent () : google_tags_tag_keys =
  { id; parent }

type t = {
  tf_name : string;
  id : string prop;
  keys : keys list prop;
  parent : string prop;
}

let make ?id ~parent __id =
  let __type = "google_tags_tag_keys" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       keys = Prop.computed __type __id "keys";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_keys
        (google_tags_tag_keys ?id ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
