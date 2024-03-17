(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_logic_app_integration_account_session__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_session__timeouts *)

type azurerm_logic_app_integration_account_session = {
  content : string prop;  (** content *)
  id : string prop option; [@option]  (** id *)
  integration_account_name : string prop;
      (** integration_account_name *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  timeouts :
    azurerm_logic_app_integration_account_session__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_logic_app_integration_account_session *)

let azurerm_logic_app_integration_account_session ?id ?timeouts
    ~content ~integration_account_name ~name ~resource_group_name
    __resource_id =
  let __resource_type =
    "azurerm_logic_app_integration_account_session"
  in
  let __resource =
    {
      content;
      id;
      integration_account_name;
      name;
      resource_group_name;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_logic_app_integration_account_session
       __resource);
  ()
