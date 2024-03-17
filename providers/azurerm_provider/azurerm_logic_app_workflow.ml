(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_workflow__access_control__action = {
  allowed_caller_ip_address_range : string list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__action *)

type azurerm_logic_app_workflow__access_control__content = {
  allowed_caller_ip_address_range : string list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__content *)

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim = {
  name : string;  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim *)

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy = {
  name : string;  (** name *)
  claim :
    azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy *)

type azurerm_logic_app_workflow__access_control__trigger = {
  allowed_caller_ip_address_range : string list;
      (** allowed_caller_ip_address_range *)
  open_authentication_policy :
    azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger *)

type azurerm_logic_app_workflow__access_control__workflow_management = {
  allowed_caller_ip_address_range : string list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__workflow_management *)

type azurerm_logic_app_workflow__access_control = {
  action : azurerm_logic_app_workflow__access_control__action list;
  content : azurerm_logic_app_workflow__access_control__content list;
  trigger : azurerm_logic_app_workflow__access_control__trigger list;
  workflow_management :
    azurerm_logic_app_workflow__access_control__workflow_management
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control *)

type azurerm_logic_app_workflow__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__identity *)

type azurerm_logic_app_workflow__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__timeouts *)

type azurerm_logic_app_workflow = {
  enabled : bool option; [@option]  (** enabled *)
  integration_service_environment_id : string option; [@option]
      (** integration_service_environment_id *)
  location : string;  (** location *)
  logic_app_integration_account_id : string option; [@option]
      (** logic_app_integration_account_id *)
  name : string;  (** name *)
  parameters : (string * string) list option; [@option]
      (** parameters *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  workflow_parameters : (string * string) list option; [@option]
      (** workflow_parameters *)
  workflow_schema : string option; [@option]  (** workflow_schema *)
  workflow_version : string option; [@option]
      (** workflow_version *)
  access_control : azurerm_logic_app_workflow__access_control list;
  identity : azurerm_logic_app_workflow__identity list;
  timeouts : azurerm_logic_app_workflow__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow *)

let azurerm_logic_app_workflow ?enabled
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version ?timeouts
    ~location ~name ~resource_group_name ~access_control ~identity
    __resource_id =
  let __resource_type = "azurerm_logic_app_workflow" in
  let __resource =
    {
      enabled;
      integration_service_environment_id;
      location;
      logic_app_integration_account_id;
      name;
      parameters;
      resource_group_name;
      tags;
      workflow_parameters;
      workflow_schema;
      workflow_version;
      access_control;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_workflow __resource);
  ()
