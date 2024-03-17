(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_source_control_slot__github_action_configuration__code_configuration = {
  runtime_stack : string prop;
      (** The value to use for the Runtime Stack in the workflow file content for code base apps. *)
  runtime_version : string prop;
      (** The value to use for the Runtime Version in the workflow file content for code base apps. *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_slot__github_action_configuration__code_configuration *)

type azurerm_app_service_source_control_slot__github_action_configuration__container_configuration = {
  image_name : string prop;  (** The image name for the build. *)
  registry_password : string prop option; [@option]
      (** The password used to upload the image to the container registry. *)
  registry_url : string prop;
      (** The server URL for the container registry where the build will be hosted. *)
  registry_username : string prop option; [@option]
      (** The username used to upload the image to the container registry. *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_slot__github_action_configuration__container_configuration *)

type azurerm_app_service_source_control_slot__github_action_configuration = {
  generate_workflow_file : bool prop option; [@option]
      (** Should the service generate the GitHub Action Workflow file. Defaults to `true` *)
  linux_action : bool prop;
      (** Denotes this action uses a Linux base image. *)
  code_configuration :
    azurerm_app_service_source_control_slot__github_action_configuration__code_configuration
    list;
  container_configuration :
    azurerm_app_service_source_control_slot__github_action_configuration__container_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_slot__github_action_configuration *)

type azurerm_app_service_source_control_slot__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_slot__timeouts *)

type azurerm_app_service_source_control_slot = {
  branch : string prop option; [@option]
      (** The URL for the repository *)
  id : string prop option; [@option]  (** id *)
  repo_url : string prop option; [@option]
      (** The branch name to use for deployments. *)
  rollback_enabled : bool prop option; [@option]
      (** Should the Deployment Rollback be enabled? Defaults to `false` *)
  slot_id : string prop;
      (** The ID of the Linux or Windows Web App Slot. *)
  use_local_git : bool prop option; [@option]
      (** Should the Slot use local Git configuration. *)
  use_manual_integration : bool prop option; [@option]
      (** Should code be deployed manually. Set to `true` to disable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false` *)
  use_mercurial : bool prop option; [@option]
      (** The repository specified is Mercurial. Defaults to `false`. *)
  github_action_configuration :
    azurerm_app_service_source_control_slot__github_action_configuration
    list;
  timeouts : azurerm_app_service_source_control_slot__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control_slot *)

type t = {
  branch : string prop;
  id : string prop;
  repo_url : string prop;
  rollback_enabled : bool prop;
  scm_type : string prop;
  slot_id : string prop;
  use_local_git : bool prop;
  use_manual_integration : bool prop;
  use_mercurial : bool prop;
  uses_github_action : bool prop;
}

let azurerm_app_service_source_control_slot ?branch ?id ?repo_url
    ?rollback_enabled ?use_local_git ?use_manual_integration
    ?use_mercurial ?timeouts ~slot_id ~github_action_configuration
    __resource_id =
  let __resource_type = "azurerm_app_service_source_control_slot" in
  let __resource =
    ({
       branch;
       id;
       repo_url;
       rollback_enabled;
       slot_id;
       use_local_git;
       use_manual_integration;
       use_mercurial;
       github_action_configuration;
       timeouts;
     }
      : azurerm_app_service_source_control_slot)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_source_control_slot __resource);
  let __resource_attributes =
    ({
       branch = Prop.computed __resource_type __resource_id "branch";
       id = Prop.computed __resource_type __resource_id "id";
       repo_url =
         Prop.computed __resource_type __resource_id "repo_url";
       rollback_enabled =
         Prop.computed __resource_type __resource_id
           "rollback_enabled";
       scm_type =
         Prop.computed __resource_type __resource_id "scm_type";
       slot_id =
         Prop.computed __resource_type __resource_id "slot_id";
       use_local_git =
         Prop.computed __resource_type __resource_id "use_local_git";
       use_manual_integration =
         Prop.computed __resource_type __resource_id
           "use_manual_integration";
       use_mercurial =
         Prop.computed __resource_type __resource_id "use_mercurial";
       uses_github_action =
         Prop.computed __resource_type __resource_id
           "uses_github_action";
     }
      : t)
  in
  __resource_attributes
