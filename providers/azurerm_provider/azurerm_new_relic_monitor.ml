(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_new_relic_monitor__plan = {
  billing_cycle : string option; [@option]  (** billing_cycle *)
  effective_date : string;  (** effective_date *)
  plan_id : string option; [@option]  (** plan_id *)
  usage_type : string option; [@option]  (** usage_type *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__plan *)

type azurerm_new_relic_monitor__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__timeouts *)

type azurerm_new_relic_monitor__user = {
  email : string;  (** email *)
  first_name : string;  (** first_name *)
  last_name : string;  (** last_name *)
  phone_number : string;  (** phone_number *)
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor__user *)

type azurerm_new_relic_monitor = {
  account_creation_source : string option; [@option]
      (** account_creation_source *)
  account_id : string option; [@option]  (** account_id *)
  id : string option; [@option]  (** id *)
  ingestion_key : string option; [@option]  (** ingestion_key *)
  location : string;  (** location *)
  name : string;  (** name *)
  org_creation_source : string option; [@option]
      (** org_creation_source *)
  organization_id : string option; [@option]  (** organization_id *)
  resource_group_name : string;  (** resource_group_name *)
  user_id : string option; [@option]  (** user_id *)
  plan : azurerm_new_relic_monitor__plan list;
  timeouts : azurerm_new_relic_monitor__timeouts option;
  user : azurerm_new_relic_monitor__user list;
}
[@@deriving yojson_of]
(** azurerm_new_relic_monitor *)

let azurerm_new_relic_monitor ?account_creation_source ?account_id
    ?id ?ingestion_key ?org_creation_source ?organization_id ?user_id
    ?timeouts ~location ~name ~resource_group_name ~plan ~user
    __resource_id =
  let __resource_type = "azurerm_new_relic_monitor" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_new_relic_monitor __resource);
  ()
