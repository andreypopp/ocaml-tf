(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_app_service_source_control__github_action_configuration__code_configuration = {
  runtime_stack : string;
      (** The value to use for the Runtime Stack in the workflow file content for code base apps. *)
  runtime_version : string;
      (** The value to use for the Runtime Version in the workflow file content for code base apps. *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control__github_action_configuration__code_configuration *)

type azurerm_app_service_source_control__github_action_configuration__container_configuration = {
  image_name : string;  (** The image name for the build. *)
  registry_password : string option; [@option]
      (** The password used to upload the image to the container registry. *)
  registry_url : string;
      (** The server URL for the container registry where the build will be hosted. *)
  registry_username : string option; [@option]
      (** The username used to upload the image to the container registry. *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control__github_action_configuration__container_configuration *)

type azurerm_app_service_source_control__github_action_configuration = {
  generate_workflow_file : bool option; [@option]
      (** Should the service generate the GitHub Action Workflow file. Defaults to `true` *)
  linux_action : bool;
      (** Denotes this action uses a Linux base image. *)
  code_configuration :
    azurerm_app_service_source_control__github_action_configuration__code_configuration
    list;
  container_configuration :
    azurerm_app_service_source_control__github_action_configuration__container_configuration
    list;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control__github_action_configuration *)

type azurerm_app_service_source_control__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control__timeouts *)

type azurerm_app_service_source_control = {
  app_id : string;  (** The ID of the Windows or Linux Web App. *)
  rollback_enabled : bool option; [@option]
      (** Should the Deployment Rollback be enabled? Defaults to `false`. *)
  use_local_git : bool option; [@option]
      (** Should the App use local Git configuration. *)
  use_manual_integration : bool option; [@option]
      (** Should code be deployed manually. Set to `false` to enable continuous integration, such as webhooks into online repos such as GitHub. Defaults to `false`. *)
  use_mercurial : bool option; [@option]
      (** The repository specified is Mercurial. Defaults to `false`. *)
  github_action_configuration :
    azurerm_app_service_source_control__github_action_configuration
    list;
  timeouts : azurerm_app_service_source_control__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_app_service_source_control *)

let azurerm_app_service_source_control ?rollback_enabled
    ?use_local_git ?use_manual_integration ?use_mercurial ?timeouts
    ~app_id ~github_action_configuration __resource_id =
  let __resource_type = "azurerm_app_service_source_control" in
  let __resource =
    {
      app_id;
      rollback_enabled;
      use_local_git;
      use_manual_integration;
      use_mercurial;
      github_action_configuration;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_app_service_source_control __resource);
  ()
