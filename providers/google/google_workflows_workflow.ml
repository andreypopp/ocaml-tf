(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

type google_workflows_workflow = {
  call_log_level : string prop option; [@option]
  crypto_key_name : string prop option; [@option]
  description : string prop option; [@option]
  id : string prop option; [@option]
  labels : (string * string prop) list option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  project : string prop option; [@option]
  region : string prop option; [@option]
  service_account : string prop option; [@option]
  source_contents : string prop option; [@option]
  user_env_vars : (string * string prop) list option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_workflows_workflow) -> ()

let yojson_of_google_workflows_workflow =
  (function
   | {
       call_log_level = v_call_log_level;
       crypto_key_name = v_crypto_key_name;
       description = v_description;
       id = v_id;
       labels = v_labels;
       name = v_name;
       name_prefix = v_name_prefix;
       project = v_project;
       region = v_region;
       service_account = v_service_account;
       source_contents = v_source_contents;
       user_env_vars = v_user_env_vars;
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
         match v_user_env_vars with
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
             let bnd = "user_env_vars", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_contents with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_contents", arg in
             bnd :: bnds
       in
       let bnds =
         match v_service_account with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "service_account", arg in
             bnd :: bnds
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
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
             bnd :: bnds
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
         match v_crypto_key_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "crypto_key_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_call_log_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "call_log_level", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_workflows_workflow -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_workflows_workflow

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_workflows_workflow ?call_log_level ?crypto_key_name
    ?description ?id ?labels ?name ?name_prefix ?project ?region
    ?service_account ?source_contents ?user_env_vars ?timeouts () :
    google_workflows_workflow =
  {
    call_log_level;
    crypto_key_name;
    description;
    id;
    labels;
    name;
    name_prefix;
    project;
    region;
    service_account;
    source_contents;
    user_env_vars;
    timeouts;
  }

type t = {
  call_log_level : string prop;
  create_time : string prop;
  crypto_key_name : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  name : string prop;
  name_prefix : string prop;
  project : string prop;
  region : string prop;
  revision_id : string prop;
  service_account : string prop;
  source_contents : string prop;
  state : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
  user_env_vars : (string * string) list prop;
}

let make ?call_log_level ?crypto_key_name ?description ?id ?labels
    ?name ?name_prefix ?project ?region ?service_account
    ?source_contents ?user_env_vars ?timeouts __id =
  let __type = "google_workflows_workflow" in
  let __attrs =
    ({
       call_log_level = Prop.computed __type __id "call_log_level";
       create_time = Prop.computed __type __id "create_time";
       crypto_key_name = Prop.computed __type __id "crypto_key_name";
       description = Prop.computed __type __id "description";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       project = Prop.computed __type __id "project";
       region = Prop.computed __type __id "region";
       revision_id = Prop.computed __type __id "revision_id";
       service_account = Prop.computed __type __id "service_account";
       source_contents = Prop.computed __type __id "source_contents";
       state = Prop.computed __type __id "state";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       update_time = Prop.computed __type __id "update_time";
       user_env_vars = Prop.computed __type __id "user_env_vars";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_workflows_workflow
        (google_workflows_workflow ?call_log_level ?crypto_key_name
           ?description ?id ?labels ?name ?name_prefix ?project
           ?region ?service_account ?source_contents ?user_env_vars
           ?timeouts ());
    attrs = __attrs;
  }

let register ?tf_module ?call_log_level ?crypto_key_name ?description
    ?id ?labels ?name ?name_prefix ?project ?region ?service_account
    ?source_contents ?user_env_vars ?timeouts __id =
  let (r : _ Tf_core.resource) =
    make ?call_log_level ?crypto_key_name ?description ?id ?labels
      ?name ?name_prefix ?project ?region ?service_account
      ?source_contents ?user_env_vars ?timeouts __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
