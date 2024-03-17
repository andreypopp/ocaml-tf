(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_servicebus_namespace_disaster_recovery_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_disaster_recovery_config__timeouts *)

type azurerm_servicebus_namespace_disaster_recovery_config = {
  alias_authorization_rule_id : string prop option; [@option]
      (** alias_authorization_rule_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partner_namespace_id : string prop;  (** partner_namespace_id *)
  primary_namespace_id : string prop;  (** primary_namespace_id *)
  timeouts :
    azurerm_servicebus_namespace_disaster_recovery_config__timeouts
    option;
}
[@@deriving yojson_of]
(** azurerm_servicebus_namespace_disaster_recovery_config *)

type t = {
  alias_authorization_rule_id : string prop;
  default_primary_key : string prop;
  default_secondary_key : string prop;
  id : string prop;
  name : string prop;
  partner_namespace_id : string prop;
  primary_connection_string_alias : string prop;
  primary_namespace_id : string prop;
  secondary_connection_string_alias : string prop;
}

let azurerm_servicebus_namespace_disaster_recovery_config
    ?alias_authorization_rule_id ?id ?timeouts ~name
    ~partner_namespace_id ~primary_namespace_id __resource_id =
  let __resource_type =
    "azurerm_servicebus_namespace_disaster_recovery_config"
  in
  let __resource =
    ({
       alias_authorization_rule_id;
       id;
       name;
       partner_namespace_id;
       primary_namespace_id;
       timeouts;
     }
      : azurerm_servicebus_namespace_disaster_recovery_config)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_servicebus_namespace_disaster_recovery_config
       __resource);
  let __resource_attributes =
    ({
       alias_authorization_rule_id =
         Prop.computed __resource_type __resource_id
           "alias_authorization_rule_id";
       default_primary_key =
         Prop.computed __resource_type __resource_id
           "default_primary_key";
       default_secondary_key =
         Prop.computed __resource_type __resource_id
           "default_secondary_key";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       partner_namespace_id =
         Prop.computed __resource_type __resource_id
           "partner_namespace_id";
       primary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "primary_connection_string_alias";
       primary_namespace_id =
         Prop.computed __resource_type __resource_id
           "primary_namespace_id";
       secondary_connection_string_alias =
         Prop.computed __resource_type __resource_id
           "secondary_connection_string_alias";
     }
      : t)
  in
  __resource_attributes
