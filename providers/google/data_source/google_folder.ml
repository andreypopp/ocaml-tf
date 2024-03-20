(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_folder = {
  folder : string prop;
  id : string prop option; [@option]
  lookup_organization : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_folder) -> ()

let yojson_of_google_folder =
  (function
   | {
       folder = v_folder;
       id = v_id;
       lookup_organization = v_lookup_organization;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_lookup_organization with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "lookup_organization", arg in
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_folder in
         ("folder", arg) :: bnds
       in
       `Assoc bnds
    : google_folder -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_folder

[@@@deriving.end]

let google_folder ?id ?lookup_organization ~folder () : google_folder
    =
  { folder; id; lookup_organization }

type t = {
  create_time : string prop;
  display_name : string prop;
  folder : string prop;
  folder_id : string prop;
  id : string prop;
  lifecycle_state : string prop;
  lookup_organization : bool prop;
  name : string prop;
  organization : string prop;
  parent : string prop;
}

let make ?id ?lookup_organization ~folder __id =
  let __type = "google_folder" in
  let __attrs =
    ({
       create_time = Prop.computed __type __id "create_time";
       display_name = Prop.computed __type __id "display_name";
       folder = Prop.computed __type __id "folder";
       folder_id = Prop.computed __type __id "folder_id";
       id = Prop.computed __type __id "id";
       lifecycle_state = Prop.computed __type __id "lifecycle_state";
       lookup_organization =
         Prop.computed __type __id "lookup_organization";
       name = Prop.computed __type __id "name";
       organization = Prop.computed __type __id "organization";
       parent = Prop.computed __type __id "parent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_folder
        (google_folder ?id ?lookup_organization ~folder ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lookup_organization ~folder __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lookup_organization ~folder __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
