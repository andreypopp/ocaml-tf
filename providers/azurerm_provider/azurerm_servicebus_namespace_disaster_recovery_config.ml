(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_servicebus_namespace_disaster_recovery_config__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_disaster_recovery_config__timeouts *)

type azurerm_servicebus_namespace_disaster_recovery_config = {
  alias_authorization_rule_id : string option; [@option]
      (** alias_authorization_rule_id *)
  name : string;  (** name *)
  partner_namespace_id : string;  (** partner_namespace_id *)
  primary_namespace_id : string;  (** primary_namespace_id *)
  timeouts :
    azurerm_servicebus_namespace_disaster_recovery_config__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_disaster_recovery_config *)

let azurerm_servicebus_namespace_disaster_recovery_config
    ?alias_authorization_rule_id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id __resource_id =
  let __resource_type =
    "azurerm_servicebus_namespace_disaster_recovery_config"
  in
  let __resource =
    {
      alias_authorization_rule_id;
      name;
      partner_namespace_id;
      primary_namespace_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace_disaster_recovery_config
       __resource);
  ()
