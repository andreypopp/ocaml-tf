(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_workflow__access_control__action = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__action *)

type azurerm_logic_app_workflow__access_control__content = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__content *)

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim *)

type azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy = {
  name : string prop;  (** name *)
  claim :
    azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy__claim
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy *)

type azurerm_logic_app_workflow__access_control__trigger = {
  allowed_caller_ip_address_range : string prop list;
      (** allowed_caller_ip_address_range *)
  open_authentication_policy :
    azurerm_logic_app_workflow__access_control__trigger__open_authentication_policy
    list;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__access_control__trigger *)

type azurerm_logic_app_workflow__access_control__workflow_management = {
  allowed_caller_ip_address_range : string prop list;
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
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__identity *)

type azurerm_logic_app_workflow__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow__timeouts *)

type azurerm_logic_app_workflow = {
  enabled : bool prop option; [@option]  (** enabled *)
  id : string prop option; [@option]  (** id *)
  integration_service_environment_id : string prop option; [@option]
      (** integration_service_environment_id *)
  location : string prop;  (** location *)
  logic_app_integration_account_id : string prop option; [@option]
      (** logic_app_integration_account_id *)
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  workflow_parameters : (string * string prop) list option; [@option]
      (** workflow_parameters *)
  workflow_schema : string prop option; [@option]
      (** workflow_schema *)
  workflow_version : string prop option; [@option]
      (** workflow_version *)
  access_control : azurerm_logic_app_workflow__access_control list;
  identity : azurerm_logic_app_workflow__identity list;
  timeouts : azurerm_logic_app_workflow__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_workflow *)

let azurerm_logic_app_workflow ?enabled ?id
    ?integration_service_environment_id
    ?logic_app_integration_account_id ?parameters ?tags
    ?workflow_parameters ?workflow_schema ?workflow_version ?timeouts
    ~location ~name ~resource_group_name ~access_control ~identity
    __resource_id =
  let __resource_type = "azurerm_logic_app_workflow" in
  let __resource =
    {
      enabled;
      id;
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
