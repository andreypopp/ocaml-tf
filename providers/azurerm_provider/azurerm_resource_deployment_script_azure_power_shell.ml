(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_resource_deployment_script_azure_power_shell__container = {
  container_group_name : string option; [@option]
      (** container_group_name *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__container *)

type azurerm_resource_deployment_script_azure_power_shell__environment_variable = {
  name : string;  (** name *)
  secure_value : string option; [@option]  (** secure_value *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__environment_variable *)

type azurerm_resource_deployment_script_azure_power_shell__identity = {
  identity_ids : string list;  (** identity_ids *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__identity *)

type azurerm_resource_deployment_script_azure_power_shell__storage_account = {
  key : string;  (** key *)
  name : string;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__storage_account *)

type azurerm_resource_deployment_script_azure_power_shell__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__timeouts *)

type azurerm_resource_deployment_script_azure_power_shell = {
  cleanup_preference : string option; [@option]
      (** cleanup_preference *)
  command_line : string option; [@option]  (** command_line *)
  force_update_tag : string option; [@option]
      (** force_update_tag *)
  location : string;  (** location *)
  name : string;  (** name *)
  primary_script_uri : string option; [@option]
      (** primary_script_uri *)
  resource_group_name : string;  (** resource_group_name *)
  retention_interval : string;  (** retention_interval *)
  script_content : string option; [@option]  (** script_content *)
  supporting_script_uris : string list option; [@option]
      (** supporting_script_uris *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeout : string option; [@option]  (** timeout *)
  version : string;  (** version *)
  container :
    azurerm_resource_deployment_script_azure_power_shell__container
    list;
  environment_variable :
    azurerm_resource_deployment_script_azure_power_shell__environment_variable
    list;
  identity :
    azurerm_resource_deployment_script_azure_power_shell__identity
    list;
  storage_account :
    azurerm_resource_deployment_script_azure_power_shell__storage_account
    list;
  timeouts :
    azurerm_resource_deployment_script_azure_power_shell__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell *)

let azurerm_resource_deployment_script_azure_power_shell
    ?cleanup_preference ?command_line ?force_update_tag
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?timeouts ~location ~name ~resource_group_name
    ~retention_interval ~version ~container ~environment_variable
    ~identity ~storage_account __resource_id =
  let __resource_type =
    "azurerm_resource_deployment_script_azure_power_shell"
  in
  let __resource =
    {
      cleanup_preference;
      command_line;
      force_update_tag;
      location;
      name;
      primary_script_uri;
      resource_group_name;
      retention_interval;
      script_content;
      supporting_script_uris;
      tags;
      timeout;
      version;
      container;
      environment_variable;
      identity;
      storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_deployment_script_azure_power_shell
       __resource);
  ()
