(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_action_configuration__code_configuration = {
  runtime_stack : string prop;
  runtime_version : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_action_configuration__code_configuration) -> ()

let yojson_of_github_action_configuration__code_configuration =
  (function
   | {
       runtime_stack = v_runtime_stack;
       runtime_version = v_runtime_version;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_runtime_version
         in
         ("runtime_version", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_runtime_stack in
         ("runtime_stack", arg) :: bnds
       in
       `Assoc bnds
    : github_action_configuration__code_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_action_configuration__code_configuration

[@@@deriving.end]

type github_action_configuration__container_configuration = {
  image_name : string prop;
  registry_password : string prop option; [@option]
  registry_url : string prop;
  registry_username : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : github_action_configuration__container_configuration) -> ()

let yojson_of_github_action_configuration__container_configuration =
  (function
   | {
       image_name = v_image_name;
       registry_password = v_registry_password;
       registry_url = v_registry_url;
       registry_username = v_registry_username;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_registry_username with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_username", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_url in
         ("registry_url", arg) :: bnds
       in
       let bnds =
         match v_registry_password with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "registry_password", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_name in
         ("image_name", arg) :: bnds
       in
       `Assoc bnds
    : github_action_configuration__container_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_github_action_configuration__container_configuration

[@@@deriving.end]

type github_action_configuration = {
  generate_workflow_file : bool prop option; [@option]
  code_configuration :
    github_action_configuration__code_configuration list;
  container_configuration :
    github_action_configuration__container_configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : github_action_configuration) -> ()

let yojson_of_github_action_configuration =
  (function
   | {
       generate_workflow_file = v_generate_workflow_file;
       code_configuration = v_code_configuration;
       container_configuration = v_container_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_github_action_configuration__container_configuration
             v_container_configuration
         in
         ("container_configuration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_github_action_configuration__code_configuration
             v_code_configuration
         in
         ("code_configuration", arg) :: bnds
       in
       let bnds =
         match v_generate_workflow_file with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "generate_workflow_file", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : github_action_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_github_action_configuration

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type azurerm_app_service_source_control = {
  app_id : string prop;
  branch : string prop option; [@option]
  id : string prop option; [@option]
  repo_url : string prop option; [@option]
  rollback_enabled : bool prop option; [@option]
  use_local_git : bool prop option; [@option]
  use_manual_integration : bool prop option; [@option]
  use_mercurial : bool prop option; [@option]
  github_action_configuration : github_action_configuration list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_app_service_source_control) -> ()

let yojson_of_azurerm_app_service_source_control =
  (function
   | {
       app_id = v_app_id;
       branch = v_branch;
       id = v_id;
       repo_url = v_repo_url;
       rollback_enabled = v_rollback_enabled;
       use_local_git = v_use_local_git;
       use_manual_integration = v_use_manual_integration;
       use_mercurial = v_use_mercurial;
       github_action_configuration = v_github_action_configuration;
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
         let arg =
           yojson_of_list yojson_of_github_action_configuration
             v_github_action_configuration
         in
         ("github_action_configuration", arg) :: bnds
       in
       let bnds =
         match v_use_mercurial with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_mercurial", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_manual_integration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_manual_integration", arg in
             bnd :: bnds
       in
       let bnds =
         match v_use_local_git with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "use_local_git", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rollback_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "rollback_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_repo_url with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "repo_url", arg in
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
         match v_branch with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "branch", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_app_service_source_control ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_app_service_source_control

[@@@deriving.end]

let github_action_configuration__code_configuration ~runtime_stack
    ~runtime_version () :
    github_action_configuration__code_configuration =
  { runtime_stack; runtime_version }

let github_action_configuration__container_configuration
    ?registry_password ?registry_username ~image_name ~registry_url
    () : github_action_configuration__container_configuration =
  { image_name; registry_password; registry_url; registry_username }

let github_action_configuration ?generate_workflow_file
    ~code_configuration ~container_configuration () :
    github_action_configuration =
  {
    generate_workflow_file;
    code_configuration;
    container_configuration;
  }

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_app_service_source_control ?branch ?id ?repo_url
    ?rollback_enabled ?use_local_git ?use_manual_integration
    ?use_mercurial ?timeouts ~app_id ~github_action_configuration ()
    : azurerm_app_service_source_control =
  {
    app_id;
    branch;
    id;
    repo_url;
    rollback_enabled;
    use_local_git;
    use_manual_integration;
    use_mercurial;
    github_action_configuration;
    timeouts;
  }

type t = {
  app_id : string prop;
  branch : string prop;
  id : string prop;
  repo_url : string prop;
  rollback_enabled : bool prop;
  scm_type : string prop;
  use_local_git : bool prop;
  use_manual_integration : bool prop;
  use_mercurial : bool prop;
  uses_github_action : bool prop;
}

let make ?branch ?id ?repo_url ?rollback_enabled ?use_local_git
    ?use_manual_integration ?use_mercurial ?timeouts ~app_id
    ~github_action_configuration __id =
  let __type = "azurerm_app_service_source_control" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       branch = Prop.computed __type __id "branch";
       id = Prop.computed __type __id "id";
       repo_url = Prop.computed __type __id "repo_url";
       rollback_enabled =
         Prop.computed __type __id "rollback_enabled";
       scm_type = Prop.computed __type __id "scm_type";
       use_local_git = Prop.computed __type __id "use_local_git";
       use_manual_integration =
         Prop.computed __type __id "use_manual_integration";
       use_mercurial = Prop.computed __type __id "use_mercurial";
       uses_github_action =
         Prop.computed __type __id "uses_github_action";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_app_service_source_control
        (azurerm_app_service_source_control ?branch ?id ?repo_url
           ?rollback_enabled ?use_local_git ?use_manual_integration
           ?use_mercurial ?timeouts ~app_id
           ~github_action_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?branch ?id ?repo_url ?rollback_enabled
    ?use_local_git ?use_manual_integration ?use_mercurial ?timeouts
    ~app_id ~github_action_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?branch ?id ?repo_url ?rollback_enabled ?use_local_git
      ?use_manual_integration ?use_mercurial ?timeouts ~app_id
      ~github_action_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
