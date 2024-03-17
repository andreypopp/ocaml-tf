(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_iotcentral_organization__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_iotcentral_organization__timeouts *)

type azurerm_iotcentral_organization = {
  display_name : string prop;  (** display_name *)
  id : string prop option; [@option]  (** id *)
  iotcentral_application_id : string prop;
      (** iotcentral_application_id *)
  organization_id : string prop;  (** organization_id *)
  parent_organization_id : string prop option; [@option]
      (** parent_organization_id *)
  timeouts : azurerm_iotcentral_organization__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_iotcentral_organization *)

type t = {
  display_name : string prop;
  id : string prop;
  iotcentral_application_id : string prop;
  organization_id : string prop;
  parent_organization_id : string prop;
}

let azurerm_iotcentral_organization ?id ?parent_organization_id
    ?timeouts ~display_name ~iotcentral_application_id
    ~organization_id __resource_id =
  let __resource_type = "azurerm_iotcentral_organization" in
  let __resource =
    ({
       display_name;
       id;
       iotcentral_application_id;
       organization_id;
       parent_organization_id;
       timeouts;
     }
      : azurerm_iotcentral_organization)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_iotcentral_organization __resource);
  let __resource_attributes =
    ({
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       iotcentral_application_id =
         Prop.computed __resource_type __resource_id
           "iotcentral_application_id";
       organization_id =
         Prop.computed __resource_type __resource_id
           "organization_id";
       parent_organization_id =
         Prop.computed __resource_type __resource_id
           "parent_organization_id";
     }
      : t)
  in
  __resource_attributes
