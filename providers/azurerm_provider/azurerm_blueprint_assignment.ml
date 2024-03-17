(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_blueprint_assignment__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_blueprint_assignment__identity *)

type azurerm_blueprint_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_blueprint_assignment__timeouts *)

type azurerm_blueprint_assignment = {
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  lock_exclude_actions : string prop list option; [@option]
      (** lock_exclude_actions *)
  lock_exclude_principals : string prop list option; [@option]
      (** lock_exclude_principals *)
  lock_mode : string prop option; [@option]  (** lock_mode *)
  name : string prop;  (** name *)
  parameter_values : string prop option; [@option]
      (** parameter_values *)
  resource_groups : string prop option; [@option]
      (** resource_groups *)
  target_subscription_id : string prop;
      (** target_subscription_id *)
  version_id : string prop;  (** version_id *)
  identity : azurerm_blueprint_assignment__identity list;
  timeouts : azurerm_blueprint_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_blueprint_assignment *)

let azurerm_blueprint_assignment ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity __resource_id =
  let __resource_type = "azurerm_blueprint_assignment" in
  let __resource =
    {
      id;
      location;
      lock_exclude_actions;
      lock_exclude_principals;
      lock_mode;
      name;
      parameter_values;
      resource_groups;
      target_subscription_id;
      version_id;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_blueprint_assignment __resource);
  ()
