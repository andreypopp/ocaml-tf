(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_certificate__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_certificate__timeouts *)

type azurerm_automation_connection_certificate = {
  automation_account_name : string prop;
      (** automation_account_name *)
  automation_certificate_name : string prop;
      (** automation_certificate_name *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts :
    azurerm_automation_connection_certificate__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_certificate *)

let azurerm_automation_connection_certificate ?description ?id
    ?timeouts ~automation_account_name ~automation_certificate_name
    ~name ~resource_group_name ~subscription_id __resource_id =
  let __resource_type =
    "azurerm_automation_connection_certificate"
  in
  let __resource =
    {
      automation_account_name;
      automation_certificate_name;
      description;
      id;
      name;
      resource_group_name;
      subscription_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_certificate __resource);
  ()
