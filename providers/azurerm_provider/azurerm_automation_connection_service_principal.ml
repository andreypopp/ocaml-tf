(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_automation_connection_service_principal__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_service_principal__timeouts *)

type azurerm_automation_connection_service_principal = {
  application_id : string;  (** application_id *)
  automation_account_name : string;  (** automation_account_name *)
  certificate_thumbprint : string;  (** certificate_thumbprint *)
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  subscription_id : string;  (** subscription_id *)
  tenant_id : string;  (** tenant_id *)
  timeouts :
    azurerm_automation_connection_service_principal__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_service_principal *)

let azurerm_automation_connection_service_principal ?description
    ?timeouts ~application_id ~automation_account_name
    ~certificate_thumbprint ~name ~resource_group_name
    ~subscription_id ~tenant_id __resource_id =
  let __resource_type =
    "azurerm_automation_connection_service_principal"
  in
  let __resource =
    {
      application_id;
      automation_account_name;
      certificate_thumbprint;
      description;
      name;
      resource_group_name;
      subscription_id;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_automation_connection_service_principal
       __resource);
  ()
