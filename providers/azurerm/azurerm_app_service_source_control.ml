(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type github_action_configuration__code_configuration = {
  runtime_stack : string prop;
      (** The value to use for the Runtime Stack in the workflow file content for code base apps. *)
  runtime_version : string prop;
      (** The value to use for the Runtime Version in the workflow file content for code base apps. *)
}
[@@deriving yojson_of]
(** github_action_configuration__code_configuration *)

type github_action_configuration__container_configuration = {
  image_name : string prop;  (** The image name for the build. *)
  registry_password : string prop option; [@option]
      (** The password used to upload the image to the container registry. *)
  registry_url : string prop;
      (** The server URL for the container registry where the build will be hosted. *)
  registry_username : string prop option; [@option]
      (** The username used to upload the image to the container registry. *)
}
[@@deriving yojson_of]
(** github_action_configuration__container_configuration *)

type github_action_configuration = {
  generate_workflow_file : bool prop option; [@option]
      (** Should the service generate the GitHub Action Workflow file. Defaults to `true` *)
  code_configuration :
    github_action_configuration__code_configuration list;
  container_configuration :
    github_action_configuration__container_configuration list;
}
[@@deriving yojson_of]
(** github_action_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_app_service_source_control = {
  app_id : string prop;
      (** The ID of the Windows or Linux Web App. *)
  branch : string prop option; [@option]
      (** The branch name to use for deployments. *)
  id : string prop option; [@option]  (** id *)
  repo_url : string prop option; [@option]
      (** The URL for the repository. *)
  rollback_enabled : bool prop option; [@option]
      (** Should the Deployment Rollback be enabled? Defaults to `false`. *)
  use_local_git : bool prop option; [@option]
      (** Should the App use local Git configuration. *)
  use_manual_integration : bool prop option; [@option]
      (** Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. *)
  use_mercurial : bool prop option; [@option]
      (** The repository specified is Mercurial. Defaults to `false`. *)
  github_action_configuration : github_action_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control *)

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
