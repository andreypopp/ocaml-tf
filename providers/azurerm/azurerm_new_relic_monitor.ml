(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_new_relic_monitor__plan = {
  billing_cycle : string prop option; [@option]  (** billing_cycle *)
  effective_date : string prop;  (** effective_date *)
  plan_id : string prop option; [@option]  (** plan_id *)
  usage_type : string prop option; [@option]  (** usage_type *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__plan *)

type azurerm_new_relic_monitor__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__timeouts *)

type azurerm_new_relic_monitor__user = {
  email : string prop;  (** email *)
  first_name : string prop;  (** first_name *)
  last_name : string prop;  (** last_name *)
  phone_number : string prop;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__user *)

type azurerm_new_relic_monitor = {
  account_creation_source : string prop option; [@option]
      (** account_creation_source *)
  account_id : string prop option; [@option]  (** account_id *)
  id : string prop option; [@option]  (** id *)
  ingestion_key : string prop option; [@option]  (** ingestion_key *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  org_creation_source : string prop option; [@option]
      (** org_creation_source *)
  organization_id : string prop option; [@option]
      (** organization_id *)
  resource_group_name : string prop;  (** resource_group_name *)
  user_id : string prop option; [@option]  (** user_id *)
  plan : azurerm_new_relic_monitor__plan list;
  timeouts : azurerm_new_relic_monitor__timeouts option;
  user : azurerm_new_relic_monitor__user list;
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor *)

type t = {
  account_creation_source : string prop;
  account_id : string prop;
  id : string prop;
  ingestion_key : string prop;
  location : string prop;
  name : string prop;
  org_creation_source : string prop;
  organization_id : string prop;
  resource_group_name : string prop;
  user_id : string prop;
}

let azurerm_new_relic_monitor ?account_creation_source ?account_id
    ?id ?ingestion_key ?org_creation_source ?organization_id ?user_id
    ?timeouts ~location ~name ~resource_group_name ~plan ~user
    __resource_id =
  let __resource_type = "azurerm_new_relic_monitor" in
  let __resource =
    ({
       account_creation_source;
       account_id;
       id;
       ingestion_key;
       location;
       name;
       org_creation_source;
       organization_id;
       resource_group_name;
       user_id;
       plan;
       timeouts;
       user;
     }
      : azurerm_new_relic_monitor)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_new_relic_monitor __resource);
  let __resource_attributes =
    ({
       account_creation_source =
         Prop.computed __resource_type __resource_id
           "account_creation_source";
       account_id =
         Prop.computed __resource_type __resource_id "account_id";
       id = Prop.computed __resource_type __resource_id "id";
       ingestion_key =
         Prop.computed __resource_type __resource_id "ingestion_key";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       org_creation_source =
         Prop.computed __resource_type __resource_id
           "org_creation_source";
       organization_id =
         Prop.computed __resource_type __resource_id
           "organization_id";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       user_id =
         Prop.computed __resource_type __resource_id "user_id";
     }
      : t)
  in
  __resource_attributes
