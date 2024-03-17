(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_deployment_script_azure_power_shell__container = {
  container_group_name : string prop option; [@option]
      (** container_group_name *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__container *)

type azurerm_resource_deployment_script_azure_power_shell__environment_variable = {
  name : string prop;  (** name *)
  secure_value : string prop option; [@option]  (** secure_value *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__environment_variable *)

type azurerm_resource_deployment_script_azure_power_shell__identity = {
  identity_ids : string prop list;  (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__identity *)

type azurerm_resource_deployment_script_azure_power_shell__storage_account = {
  key : string prop;  (** key *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__storage_account *)

type azurerm_resource_deployment_script_azure_power_shell__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_deployment_script_azure_power_shell__timeouts *)

type azurerm_resource_deployment_script_azure_power_shell = {
  cleanup_preference : string prop option; [@option]
      (** cleanup_preference *)
  command_line : string prop option; [@option]  (** command_line *)
  force_update_tag : string prop option; [@option]
      (** force_update_tag *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  primary_script_uri : string prop option; [@option]
      (** primary_script_uri *)
  resource_group_name : string prop;  (** resource_group_name *)
  retention_interval : string prop;  (** retention_interval *)
  script_content : string prop option; [@option]
      (** script_content *)
  supporting_script_uris : string prop list option; [@option]
      (** supporting_script_uris *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  timeout : string prop option; [@option]  (** timeout *)
  version : string prop;  (** version *)
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

type t = {
  cleanup_preference : string prop;
  command_line : string prop;
  force_update_tag : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  outputs : string prop;
  primary_script_uri : string prop;
  resource_group_name : string prop;
  retention_interval : string prop;
  script_content : string prop;
  supporting_script_uris : string list prop;
  tags : (string * string) list prop;
  timeout : string prop;
  version : string prop;
}

let azurerm_resource_deployment_script_azure_power_shell
    ?cleanup_preference ?command_line ?force_update_tag ?id
    ?primary_script_uri ?script_content ?supporting_script_uris ?tags
    ?timeout ?timeouts ~location ~name ~resource_group_name
    ~retention_interval ~version ~container ~environment_variable
    ~identity ~storage_account __resource_id =
  let __resource_type =
    "azurerm_resource_deployment_script_azure_power_shell"
  in
  let __resource =
    ({
       cleanup_preference;
       command_line;
       force_update_tag;
       id;
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
      : azurerm_resource_deployment_script_azure_power_shell)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_deployment_script_azure_power_shell
       __resource);
  let __resource_attributes =
    ({
       cleanup_preference =
         Prop.computed __resource_type __resource_id
           "cleanup_preference";
       command_line =
         Prop.computed __resource_type __resource_id "command_line";
       force_update_tag =
         Prop.computed __resource_type __resource_id
           "force_update_tag";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       outputs =
         Prop.computed __resource_type __resource_id "outputs";
       primary_script_uri =
         Prop.computed __resource_type __resource_id
           "primary_script_uri";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       retention_interval =
         Prop.computed __resource_type __resource_id
           "retention_interval";
       script_content =
         Prop.computed __resource_type __resource_id "script_content";
       supporting_script_uris =
         Prop.computed __resource_type __resource_id
           "supporting_script_uris";
       tags = Prop.computed __resource_type __resource_id "tags";
       timeout =
         Prop.computed __resource_type __resource_id "timeout";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
