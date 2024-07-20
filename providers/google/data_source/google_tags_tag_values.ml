(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type values = {
  create_time : string prop;
  description : string prop;
  name : string prop;
  namespaced_name : string prop;
  parent : string prop;
  short_name : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : values) -> ()

let yojson_of_values =
  (function
   | {
       create_time = v_create_time;
       description = v_description;
       name = v_name;
       namespaced_name = v_namespaced_name;
       parent = v_parent;
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
    : values -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_values

[@@@deriving.end]

type google_tags_tag_values = {
  id : string prop option; [@option]
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_tags_tag_values) -> ()

let yojson_of_google_tags_tag_values =
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
    : google_tags_tag_values -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_tags_tag_values

[@@@deriving.end]

let google_tags_tag_values ?id ~parent () : google_tags_tag_values =
  { id; parent }

type t = {
  tf_name : string;
  id : string prop;
  parent : string prop;
  values : values list prop;
}

let make ?id ~parent __id =
  let __type = "google_tags_tag_values" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       parent = Prop.computed __type __id "parent";
       values = Prop.computed __type __id "values";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_tags_tag_values
        (google_tags_tag_values ?id ~parent ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent __id =
  let (r : _ Tf_core.resource) = make ?id ~parent __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
