(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type google_container_engine_versions = {
  id : string prop option; [@option]
  location : string prop option; [@option]
  project : string prop option; [@option]
  version_prefix : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_container_engine_versions) -> ()

let yojson_of_google_container_engine_versions =
  (function
   | {
       id = v_id;
       location = v_location;
       project = v_project;
       version_prefix = v_version_prefix;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_prefix", arg in
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
         match v_location with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "location", arg in
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
    : google_container_engine_versions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_container_engine_versions

[@@@deriving.end]

let google_container_engine_versions ?id ?location ?project
    ?version_prefix () : google_container_engine_versions =
  { id; location; project; version_prefix }

type t = {
  tf_name : string;
  default_cluster_version : string prop;
  id : string prop;
  latest_master_version : string prop;
  latest_node_version : string prop;
  location : string prop;
  project : string prop;
  release_channel_default_version : string Tf_core.assoc prop;
  release_channel_latest_version : string Tf_core.assoc prop;
  valid_master_versions : string list prop;
  valid_node_versions : string list prop;
  version_prefix : string prop;
}

let make ?id ?location ?project ?version_prefix __id =
  let __type = "google_container_engine_versions" in
  let __attrs =
    ({
       tf_name = __id;
       default_cluster_version =
         Prop.computed __type __id "default_cluster_version";
       id = Prop.computed __type __id "id";
       latest_master_version =
         Prop.computed __type __id "latest_master_version";
       latest_node_version =
         Prop.computed __type __id "latest_node_version";
       location = Prop.computed __type __id "location";
       project = Prop.computed __type __id "project";
       release_channel_default_version =
         Prop.computed __type __id "release_channel_default_version";
       release_channel_latest_version =
         Prop.computed __type __id "release_channel_latest_version";
       valid_master_versions =
         Prop.computed __type __id "valid_master_versions";
       valid_node_versions =
         Prop.computed __type __id "valid_node_versions";
       version_prefix = Prop.computed __type __id "version_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_container_engine_versions
        (google_container_engine_versions ?id ?location ?project
           ?version_prefix ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?location ?project ?version_prefix __id =
  let (r : _ Tf_core.resource) =
    make ?id ?location ?project ?version_prefix __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
