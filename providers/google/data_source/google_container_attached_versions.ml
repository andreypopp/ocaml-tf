(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_attached_versions = {
  id : string prop option; [@option]
  location : string prop;
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_attached_versions) -> ()

let yojson_of_google_container_attached_versions =
  (function
   | { id = v_id; location = v_location; project = v_project } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
    : google_container_attached_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_attached_versions

[@@@deriving.end]

let google_container_attached_versions ?id ~location ~project () :
    google_container_attached_versions =
  { id; location; project }

type t = {
  tf_name : string;
  id : string prop;
  location : string prop;
  project : string prop;
  valid_versions : string list prop;
}

let make ?id ~location ~project __id =
  let __type = "google_container_attached_versions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       valid_versions = Prop.computed __type __id "valid_versions";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_attached_versions
        (google_container_attached_versions ?id ~location ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~location ~project __id =
  let (r : _ Tf_core.resource) = make ?id ~location ~project __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
