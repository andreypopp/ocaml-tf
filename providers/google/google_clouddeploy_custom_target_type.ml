(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type custom_actions__include_skaffold_modules__git = {
  path : string prop option; [@option]
  ref : string prop option; [@option]
  repo : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_actions__include_skaffold_modules__git) -> ()

let yojson_of_custom_actions__include_skaffold_modules__git =
  (function
   | { path = v_path; ref = v_ref; repo = v_repo } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_repo in
         ("repo", arg) :: bnds
       in
       let bnds =
         match v_ref with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ref", arg in
             bnd :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_actions__include_skaffold_modules__git ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_actions__include_skaffold_modules__git

[@@@deriving.end]

type custom_actions__include_skaffold_modules__google_cloud_storage = {
  path : string prop option; [@option]
  source : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       custom_actions__include_skaffold_modules__google_cloud_storage) ->
  ()

let yojson_of_custom_actions__include_skaffold_modules__google_cloud_storage
    =
  (function
   | { path = v_path; source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       let bnds =
         match v_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_actions__include_skaffold_modules__google_cloud_storage ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_custom_actions__include_skaffold_modules__google_cloud_storage

[@@@deriving.end]

type custom_actions__include_skaffold_modules = {
  configs : string prop list option; [@option]
  git : custom_actions__include_skaffold_modules__git list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google_cloud_storage :
    custom_actions__include_skaffold_modules__google_cloud_storage
    list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_actions__include_skaffold_modules) -> ()

let yojson_of_custom_actions__include_skaffold_modules =
  (function
   | {
       configs = v_configs;
       git = v_git;
       google_cloud_storage = v_google_cloud_storage;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_google_cloud_storage then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_actions__include_skaffold_modules__google_cloud_storage)
               v_google_cloud_storage
           in
           let bnd = "google_cloud_storage", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_git then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_actions__include_skaffold_modules__git)
               v_git
           in
           let bnd = "git", arg in
           bnd :: bnds
       in
       let bnds =
         match v_configs with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "configs", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : custom_actions__include_skaffold_modules ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_actions__include_skaffold_modules

[@@@deriving.end]

type custom_actions = {
  deploy_action : string prop;
  render_action : string prop option; [@option]
  include_skaffold_modules :
    custom_actions__include_skaffold_modules list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : custom_actions) -> ()

let yojson_of_custom_actions =
  (function
   | {
       deploy_action = v_deploy_action;
       render_action = v_render_action;
       include_skaffold_modules = v_include_skaffold_modules;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_include_skaffold_modules then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_custom_actions__include_skaffold_modules)
               v_include_skaffold_modules
           in
           let bnd = "include_skaffold_modules", arg in
           bnd :: bnds
       in
       let bnds =
         match v_render_action with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "render_action", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_deploy_action in
         ("deploy_action", arg) :: bnds
       in
       `Assoc bnds
    : custom_actions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_custom_actions

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type google_clouddeploy_custom_target_type = {
  annotations : (string * string prop) list option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  location : string prop;
  name : string prop;
  project : string prop option; [@option]
  custom_actions : custom_actions list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_clouddeploy_custom_target_type) -> ()

let yojson_of_google_clouddeploy_custom_target_type =
  (function
   | {
       annotations = v_annotations;
       description = v_description;
       id = v_id;
       labels = v_labels;
       location = v_location;
       name = v_name;
       project = v_project;
       custom_actions = v_custom_actions;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_custom_actions then bnds
         else
           let arg =
             (yojson_of_list yojson_of_custom_actions)
               v_custom_actions
           in
           let bnd = "custom_actions", arg in
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
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         match v_annotations with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "annotations", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_clouddeploy_custom_target_type ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_clouddeploy_custom_target_type

[@@@deriving.end]

let custom_actions__include_skaffold_modules__git ?path ?ref ~repo ()
    : custom_actions__include_skaffold_modules__git =
  { path; ref; repo }

let custom_actions__include_skaffold_modules__google_cloud_storage
    ?path ~source () :
    custom_actions__include_skaffold_modules__google_cloud_storage =
  { path; source }

let custom_actions__include_skaffold_modules ?configs ?(git = [])
    ?(google_cloud_storage = []) () :
    custom_actions__include_skaffold_modules =
  { configs; git; google_cloud_storage }

let custom_actions ?render_action ?(include_skaffold_modules = [])
    ~deploy_action () : custom_actions =
  { deploy_action; render_action; include_skaffold_modules }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_clouddeploy_custom_target_type ?annotations ?description
    ?id ?labels ?project ?(custom_actions = []) ?timeouts ~location
    ~name () : google_clouddeploy_custom_target_type =
  {
    annotations;
    description;
    id;
    labels;
    location;
    name;
    project;
    custom_actions;
    timeouts;
  }

type t = {
  tf_name : string;
  annotations : (string * string) list prop;
  create_time : string prop;
  custom_target_type_id : string prop;
  description : string prop;
  effective_annotations : (string * string) list prop;
  effective_labels : (string * string) list prop;
  etag : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  uid : string prop;
  update_time : string prop;
}

let make ?annotations ?description ?id ?labels ?project
    ?(custom_actions = []) ?timeouts ~location ~name __id =
  let __type = "google_clouddeploy_custom_target_type" in
  let __attrs =
    ({
       tf_name = __id;
       annotations = Prop.computed __type __id "annotations";
       create_time = Prop.computed __type __id "create_time";
       custom_target_type_id =
         Prop.computed __type __id "custom_target_type_id";
       description = Prop.computed __type __id "description";
       effective_annotations =
         Prop.computed __type __id "effective_annotations";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       etag = Prop.computed __type __id "etag";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       project = Prop.computed __type __id "project";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       uid = Prop.computed __type __id "uid";
       update_time = Prop.computed __type __id "update_time";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_clouddeploy_custom_target_type
        (google_clouddeploy_custom_target_type ?annotations
           ?description ?id ?labels ?project ~custom_actions
           ?timeouts ~location ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?annotations ?description ?id ?labels
    ?project ?(custom_actions = []) ?timeouts ~location ~name __id =
  let (r : _ Tf_core.resource) =
    make ?annotations ?description ?id ?labels ?project
      ~custom_actions ?timeouts ~location ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
