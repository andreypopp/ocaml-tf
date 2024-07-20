(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type results = {
  asset_type : string prop;
  create_time : string prop;
  description : string prop;
  display_name : string prop;
  folders : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  kms_keys : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  labels : (string * string prop) list;
  location : string prop;
  name : string prop;
  network_tags : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  organization : string prop;
  parent_asset_type : string prop;
  parent_full_resource_name : string prop;
  project : string prop;
  state : string prop;
  update_time : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : results) -> ()

let yojson_of_results =
  (function
   | {
       asset_type = v_asset_type;
       create_time = v_create_time;
       description = v_description;
       display_name = v_display_name;
       folders = v_folders;
       kms_keys = v_kms_keys;
       labels = v_labels;
       location = v_location;
       name = v_name;
       network_tags = v_network_tags;
       organization = v_organization;
       parent_asset_type = v_parent_asset_type;
       parent_full_resource_name = v_parent_full_resource_name;
       project = v_project;
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
         let arg = yojson_of_prop yojson_of_string v_project in
         ("project", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_parent_full_resource_name
         in
         ("parent_full_resource_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_parent_asset_type
         in
         ("parent_asset_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_organization in
         ("organization", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_network_tags then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_network_tags
           in
           let bnd = "network_tags", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (function
               | v0, v1 ->
                   let v0 = yojson_of_string v0
                   and v1 = yojson_of_prop yojson_of_string v1 in
                   `List [ v0; v1 ])
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_kms_keys then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_kms_keys
           in
           let bnd = "kms_keys", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_folders then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_folders
           in
           let bnd = "folders", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_create_time in
         ("create_time", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_asset_type in
         ("asset_type", arg) :: bnds
       in
       `Assoc bnds
    : results -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_results

[@@@deriving.end]

type google_cloud_asset_search_all_resources = {
  asset_types : string prop list option; [@option]
  id : string prop option; [@option]
  query : string prop option; [@option]
  scope : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_cloud_asset_search_all_resources) -> ()

let yojson_of_google_cloud_asset_search_all_resources =
  (function
   | {
       asset_types = v_asset_types;
       id = v_id;
       query = v_query;
       scope = v_scope;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_scope in
         ("scope", arg) :: bnds
       in
       let bnds =
         match v_query with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "query", arg in
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
         match v_asset_types with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "asset_types", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_cloud_asset_search_all_resources ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_cloud_asset_search_all_resources

[@@@deriving.end]

let google_cloud_asset_search_all_resources ?asset_types ?id ?query
    ~scope () : google_cloud_asset_search_all_resources =
  { asset_types; id; query; scope }

type t = {
  tf_name : string;
  asset_types : string list prop;
  id : string prop;
  query : string prop;
  results : results list prop;
  scope : string prop;
}

let make ?asset_types ?id ?query ~scope __id =
  let __type = "google_cloud_asset_search_all_resources" in
  let __attrs =
    ({
       tf_name = __id;
       asset_types = Prop.computed __type __id "asset_types";
       id = Prop.computed __type __id "id";
       query = Prop.computed __type __id "query";
       results = Prop.computed __type __id "results";
       scope = Prop.computed __type __id "scope";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_cloud_asset_search_all_resources
        (google_cloud_asset_search_all_resources ?asset_types ?id
           ?query ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?asset_types ?id ?query ~scope __id =
  let (r : _ Tf_core.resource) =
    make ?asset_types ?id ?query ~scope __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
