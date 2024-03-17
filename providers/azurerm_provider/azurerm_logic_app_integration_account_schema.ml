(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_logic_app_integration_account_schema__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_schema__timeouts *)

type azurerm_logic_app_integration_account_schema = {
  content : string;  (** content *)
  file_name : string option; [@option]  (** file_name *)
  integration_account_name : string;  (** integration_account_name *)
  metadata : string option; [@option]  (** metadata *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_schema__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_schema *)

let azurerm_logic_app_integration_account_schema ?file_name ?metadata
    ?timeouts ~content ~integration_account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_schema"
  in
  let __resource =
    {
      content;
      file_name;
      integration_account_name;
      metadata;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_schema
       __resource);
  ()
