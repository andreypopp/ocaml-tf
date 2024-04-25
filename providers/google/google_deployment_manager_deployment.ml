(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type labels = {
  key : string prop option; [@option]
  value : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : labels) -> ()

let yojson_of_labels =
  (function
   | { key = v_key; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_value with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "value", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : labels -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_labels

[@@@deriving.end]

type target__config = { content : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : target__config) -> ()

let yojson_of_target__config =
  (function
   | { content = v_content } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       `Assoc bnds
    : target__config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__config

[@@@deriving.end]

type target__imports = {
  content : string prop option; [@option]
  name : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target__imports) -> ()

let yojson_of_target__imports =
  (function
   | { content = v_content; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_content with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "content", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : target__imports -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target__imports

[@@@deriving.end]

type target = {
  config : target__config list;
  imports : target__imports list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | { config = v_config; imports = v_imports } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target__imports v_imports
         in
         ("imports", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_target__config v_config
         in
         ("config", arg) :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

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

type google_deployment_manager_deployment = {
  create_policy : string prop option; [@option]
  delete_policy : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  preview : bool prop option; [@option]
  project : string prop option; [@option]
  labels : labels list;
  target : target list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_deployment_manager_deployment) -> ()

let yojson_of_google_deployment_manager_deployment =
  (function
   | {
       create_policy = v_create_policy;
       delete_policy = v_delete_policy;
       description = v_description;
       id = v_id;
       name = v_name;
       preview = v_preview;
       project = v_project;
       labels = v_labels;
       target = v_target;
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
         let arg = yojson_of_list yojson_of_target v_target in
         ("target", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_labels v_labels in
         ("labels", arg) :: bnds
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
         match v_preview with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "preview", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         match v_delete_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_deployment_manager_deployment ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_deployment_manager_deployment

[@@@deriving.end]

let labels ?key ?value () : labels = { key; value }
let target__config ~content () : target__config = { content }

let target__imports ?content ?name () : target__imports =
  { content; name }

let target ?(imports = []) ~config () : target = { config; imports }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_deployment_manager_deployment ?create_policy
    ?delete_policy ?description ?id ?preview ?project ?timeouts ~name
    ~labels ~target () : google_deployment_manager_deployment =
  {
    create_policy;
    delete_policy;
    description;
    id;
    name;
    preview;
    project;
    labels;
    target;
    timeouts;
  }

type t = {
  create_policy : string prop;
  delete_policy : string prop;
  deployment_id : string prop;
  description : string prop;
  id : string prop;
  manifest : string prop;
  name : string prop;
  preview : bool prop;
  project : string prop;
  self_link : string prop;
}

let make ?create_policy ?delete_policy ?description ?id ?preview
    ?project ?timeouts ~name ~labels ~target __id =
  let __type = "google_deployment_manager_deployment" in
  let __attrs =
    ({
       create_policy = Prop.computed __type __id "create_policy";
       delete_policy = Prop.computed __type __id "delete_policy";
       deployment_id = Prop.computed __type __id "deployment_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       manifest = Prop.computed __type __id "manifest";
       name = Prop.computed __type __id "name";
       preview = Prop.computed __type __id "preview";
       project = Prop.computed __type __id "project";
       self_link = Prop.computed __type __id "self_link";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_deployment_manager_deployment
        (google_deployment_manager_deployment ?create_policy
           ?delete_policy ?description ?id ?preview ?project
           ?timeouts ~name ~labels ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?create_policy ?delete_policy ?description
    ?id ?preview ?project ?timeouts ~name ~labels ~target __id =
  let (r : _ Tf_core.resource) =
    make ?create_policy ?delete_policy ?description ?id ?preview
      ?project ?timeouts ~name ~labels ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
