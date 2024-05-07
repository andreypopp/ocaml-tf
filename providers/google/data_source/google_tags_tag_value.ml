(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_tags_tag_value = {
  parent : string prop;
  short_name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tags_tag_value) -> ()

let yojson_of_google_tags_tag_value =
  (function
   | { parent = v_parent; short_name = v_short_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_short_name in
         ("short_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       `Assoc bnds
    : google_tags_tag_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tags_tag_value

[@@@deriving.end]

let google_tags_tag_value ~parent ~short_name () :
    google_tags_tag_value =
  { parent; short_name }

type t = {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  short_name : string prop;
  update_time : string prop;
}

let make ~parent ~short_name __id =
  let __type = "google_tags_tag_value" in
  let __attrs =
    ({
       tf_name = __id;
       create_time = Prop.computed __type __id "create_time";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       namespaced_name = Prop.computed __type __id "namespaced_name";
       parent = Prop.computed __type __id "parent";
       short_name = Prop.computed __type __id "short_name";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_value
        (google_tags_tag_value ~parent ~short_name ());
    attrs = __attrs;
  }

let register ?tf_module ~parent ~short_name __id =
  let (r : _ Tf_core.resource) = make ~parent ~short_name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
