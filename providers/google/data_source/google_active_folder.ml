(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_active_folder = {
  api_method : string prop option; [@option]
  display_name : string prop;
  id : string prop option; [@option]
  parent : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_active_folder) -> ()

let yojson_of_google_active_folder =
  (function
   | {
       api_method = v_api_method;
       display_name = v_display_name;
       id = v_id;
       parent = v_parent;
     } ->
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         match v_api_method with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "api_method", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_active_folder -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_active_folder

[@@@deriving.end]

let google_active_folder ?api_method ?id ~display_name ~parent () :
    google_active_folder =
  { api_method; display_name; id; parent }

type t = {
  tf_name : string;
  api_method : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
  parent : string prop;
}

let make ?api_method ?id ~display_name ~parent __id =
  let __type = "google_active_folder" in
  let __attrs =
    ({
       tf_name = __id;
       api_method = Prop.computed __type __id "api_method";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_active_folder
        (google_active_folder ?api_method ?id ~display_name ~parent
           ());
    attrs = __attrs;
  }

let register ?tf_module ?api_method ?id ~display_name ~parent __id =
  let (r : _ Tf_core.resource) =
    make ?api_method ?id ~display_name ~parent __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
