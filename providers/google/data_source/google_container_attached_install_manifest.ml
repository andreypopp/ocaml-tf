(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_attached_install_manifest = {
  cluster_id : string prop;
  id : string prop option; [@option]
  location : string prop;
  platform_version : string prop;
  project : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_attached_install_manifest) -> ()

let yojson_of_google_container_attached_install_manifest =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       location = v_location;
       platform_version = v_platform_version;
       project = v_project;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_platform_version
         in
         ("platform_version", arg) :: bnds
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : google_container_attached_install_manifest ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_attached_install_manifest

[@@@deriving.end]

let google_container_attached_install_manifest ?id ~cluster_id
    ~location ~platform_version ~project () :
    google_container_attached_install_manifest =
  { cluster_id; id; location; platform_version; project }

type t = {
  cluster_id : string prop;
  id : string prop;
  location : string prop;
  manifest : string prop;
  platform_version : string prop;
  project : string prop;
}

let make ?id ~cluster_id ~location ~platform_version ~project __id =
  let __type = "google_container_attached_install_manifest" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       manifest = Prop.computed __type __id "manifest";
       platform_version =
         Prop.computed __type __id "platform_version";
       project = Prop.computed __type __id "project";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_attached_install_manifest
        (google_container_attached_install_manifest ?id ~cluster_id
           ~location ~platform_version ~project ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~cluster_id ~location ~platform_version
    ~project __id =
  let (r : _ Tf_core.resource) =
    make ?id ~cluster_id ~location ~platform_version ~project __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
