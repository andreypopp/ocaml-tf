(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_automation_connection_service_principal__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_automation_connection_service_principal__timeouts *)

type azurerm_automation_connection_service_principal = {
  application_id : string prop;  (** application_id *)
  automation_account_name : string prop;
      (** automation_account_name *)
  certificate_thumbprint : string prop;
      (** certificate_thumbprint *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  subscription_id : string prop;  (** subscription_id *)
  tenant_id : string prop;  (** tenant_id *)
  timeouts :
    azurerm_automation_connection_service_principal__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_automation_connection_service_principal *)

let azurerm_automation_connection_service_principal ?description ?id
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
      id;
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
