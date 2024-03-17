(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_iotcentral_organization__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_organization__timeouts *)

type azurerm_iotcentral_organization = {
  display_name : string;  (** display_name *)
  iotcentral_application_id : string;
      (** iotcentral_application_id *)
  organization_id : string;  (** organization_id *)
  parent_organization_id : string option; [@option]
      (** parent_organization_id *)
  timeouts : azurerm_iotcentral_organization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_organization *)

let azurerm_iotcentral_organization ?parent_organization_id ?timeouts
    ~display_name ~iotcentral_application_id ~organization_id
    __resource_id =
  let __resource_type = "azurerm_iotcentral_organization" in
  let __resource =
    {
      display_name;
      iotcentral_application_id;
      organization_id;
      parent_organization_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iotcentral_organization __resource);
  ()
