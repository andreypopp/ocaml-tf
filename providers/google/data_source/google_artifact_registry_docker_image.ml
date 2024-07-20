(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_artifact_registry_docker_image = {
  id : string prop option; [@option]
  image_name : string prop;
  location : string prop;
  project : string prop option; [@option]
  repository_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_artifact_registry_docker_image) -> ()

let yojson_of_google_artifact_registry_docker_image =
  (function
   | {
       id = v_id;
       image_name = v_image_name;
       location = v_location;
       project = v_project;
       repository_id = v_repository_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repository_id in
         ("repository_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
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
    : google_artifact_registry_docker_image ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_artifact_registry_docker_image

[@@@deriving.end]

let google_artifact_registry_docker_image ?id ?project ~image_name
    ~location ~repository_id () :
    google_artifact_registry_docker_image =
  { id; image_name; location; project; repository_id }

type t = {
  tf_name : string;
  build_time : string prop;
  id : string prop;
  image_name : string prop;
  image_size_bytes : string prop;
  location : string prop;
  media_type : string prop;
  name : string prop;
  project : string prop;
  repository_id : string prop;
  self_link : string prop;
  tags : string list prop;
  update_time : string prop;
  upload_time : string prop;
}

let make ?id ?project ~image_name ~location ~repository_id __id =
  let __type = "google_artifact_registry_docker_image" in
  let __attrs =
    ({
       tf_name = __id;
       build_time = Prop.computed __type __id "build_time";
       id = Prop.computed __type __id "id";
       image_name = Prop.computed __type __id "image_name";
       image_size_bytes =
         Prop.computed __type __id "image_size_bytes";
       location = Prop.computed __type __id "location";
       media_type = Prop.computed __type __id "media_type";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       repository_id = Prop.computed __type __id "repository_id";
       self_link = Prop.computed __type __id "self_link";
       tags = Prop.computed __type __id "tags";
       update_time = Prop.computed __type __id "update_time";
       upload_time = Prop.computed __type __id "upload_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_artifact_registry_docker_image
        (google_artifact_registry_docker_image ?id ?project
           ~image_name ~location ~repository_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?project ~image_name ~location
    ~repository_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?project ~image_name ~location ~repository_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
