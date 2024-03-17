(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_schema__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_schema__timeouts *)

type azurerm_logic_app_integration_account_schema = {
  content : string prop;  (** content *)
  file_name : string prop option; [@option]  (** file_name *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_schema__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_schema *)

let azurerm_logic_app_integration_account_schema ?file_name ?id
    ?metadata ?timeouts ~content ~integration_account_name ~name
    ~resource_group_name __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_schema"
  in
  let __resource =
    {
      content;
      file_name;
      id;
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
