(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type folders = {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  etag : string prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : folders) -> ()

let yojson_of_folders =
  (function
   | {
       create_time = v_create_time;
       delete_time = v_delete_time;
       display_name = v_display_name;
       etag = v_etag;
       name = v_name;
       parent = v_parent;
       state = v_state;
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
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent in
         ("parent", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_etag in
         ("etag", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_delete_time in
         ("delete_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       `Assoc bnds
    : folders -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_folders

[@@@deriving.end]

type google_folders = {
  id : string prop option; [@option]
  parent_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_folders) -> ()

let yojson_of_google_folders =
  (function
   | { id = v_id; parent_id = v_parent_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_parent_id in
         ("parent_id", arg) :: bnds
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
    : google_folders -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_folders

[@@@deriving.end]

let google_folders ?id ~parent_id () : google_folders =
  { id; parent_id }

type t = {
  folders : folders list prop;
  id : string prop;
  parent_id : string prop;
}

let make ?id ~parent_id __id =
  let __type = "google_folders" in
  let __attrs =
    ({
       folders = Prop.computed __type __id "folders";
       id = Prop.computed __type __id "id";
       parent_id = Prop.computed __type __id "parent_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folders (google_folders ?id ~parent_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~parent_id __id =
  let (r : _ Tf_core.resource) = make ?id ~parent_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
