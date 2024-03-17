(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_container_app_environment_dapr_component__metadata = {
  name : string;  (** The name of the Metadata configuration item. *)
  secret_name : string option; [@option]
      (** The name of a secret specified in the `secrets` block that contains the value for this metadata configuration item. *)
  value : string option; [@option]
      (** The value for this metadata configuration item. *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_dapr_component__metadata *)

type azurerm_container_app_environment_dapr_component__secret = {
  name : string;  (** The Secret name. *)
  value : string;  (** The value for this secret. *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_dapr_component__secret *)

type azurerm_container_app_environment_dapr_component__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_dapr_component__timeouts *)

type azurerm_container_app_environment_dapr_component = {
  component_type : string;
      (** The Dapr Component Type. For example `state.azure.blobstorage`. *)
  container_app_environment_id : string;
      (** The Container App Managed Environment ID to configure this Dapr component on. *)
  ignore_errors : bool option; [@option]
      (** Should the Dapr sidecar to continue initialisation if the component fails to load. Defaults to `false` *)
  init_timeout : string option; [@option]
      (** The component initialisation timeout in ISO8601 format. e.g. `5s`, `2h`, `1m`. Defaults to `5s`. *)
  name : string;  (** The name for this Dapr Component. *)
  scopes : string list option; [@option]
      (** A list of scopes to which this component applies. e.g. a Container App's `dapr.app_id` value. *)
  version : string;  (** The version of the component. *)
  metadata :
    azurerm_container_app_environment_dapr_component__metadata list;
  secret :
    azurerm_container_app_environment_dapr_component__secret list;
  timeouts :
    azurerm_container_app_environment_dapr_component__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_container_app_environment_dapr_component *)

let azurerm_container_app_environment_dapr_component ?ignore_errors
    ?init_timeout ?scopes ?timeouts ~component_type
    ~container_app_environment_id ~name ~version ~metadata ~secret
    __resource_id =
  let __resource_type =
    "azurerm_container_app_environment_dapr_component"
  in
  let __resource =
    {
      component_type;
      container_app_environment_id;
      ignore_errors;
      init_timeout;
      name;
      scopes;
      version;
      metadata;
      secret;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_container_app_environment_dapr_component
       __resource);
  ()
