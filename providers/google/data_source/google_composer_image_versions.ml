(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type image_versions = {
  image_version_id : string prop;
  supported_python_versions : string prop list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : image_versions) -> ()

let yojson_of_image_versions =
  (function
   | {
       image_version_id = v_image_version_id;
       supported_python_versions = v_supported_python_versions;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_supported_python_versions then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_supported_python_versions
           in
           let bnd = "supported_python_versions", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_image_version_id
         in
         ("image_version_id", arg) :: bnds
       in
       `Assoc bnds
    : image_versions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_versions

[@@@deriving.end]

type google_composer_image_versions = {
  id : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_composer_image_versions) -> ()

let yojson_of_google_composer_image_versions =
  (function
   | { id = v_id; project = v_project; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_project with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "project", arg in
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
    : google_composer_image_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_composer_image_versions

[@@@deriving.end]

let google_composer_image_versions ?id ?project ?region () :
    google_composer_image_versions =
  { id; project; region }

type t = {
  tf_name : string;
  id : string prop;
  image_versions : image_versions list prop;
  project : string prop;
  region : string prop;
}

let make ?id ?project ?region __id =
  let __type = "google_composer_image_versions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       image_versions = Prop.computed __type __id "image_versions";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_composer_image_versions
        (google_composer_image_versions ?id ?project ?region ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ?region __id =
  let (r : _ Tf_core.resource) = make ?id ?project ?region __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
