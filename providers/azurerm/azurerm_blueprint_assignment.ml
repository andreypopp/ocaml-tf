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

type t = {
  blueprint_name : string prop;
  description : string prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  lock_exclude_actions : string list prop;
  lock_exclude_principals : string list prop;
  lock_mode : string prop;
  name : string prop;
  parameter_values : string prop;
  resource_groups : string prop;
  target_subscription_id : string prop;
  type_ : string prop;
  version_id : string prop;
}

let azurerm_blueprint_assignment ?id ?lock_exclude_actions
    ?lock_exclude_principals ?lock_mode ?parameter_values
    ?resource_groups ?timeouts ~location ~name
    ~target_subscription_id ~version_id ~identity __resource_id =
  let __resource_type = "azurerm_blueprint_assignment" in
  let __resource =
    ({
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
      : azurerm_blueprint_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_blueprint_assignment __resource);
  let __resource_attributes =
    ({
       blueprint_name =
         Prop.computed __resource_type __resource_id "blueprint_name";
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       lock_exclude_actions =
         Prop.computed __resource_type __resource_id
           "lock_exclude_actions";
       lock_exclude_principals =
         Prop.computed __resource_type __resource_id
           "lock_exclude_principals";
       lock_mode =
         Prop.computed __resource_type __resource_id "lock_mode";
       name = Prop.computed __resource_type __resource_id "name";
       parameter_values =
         Prop.computed __resource_type __resource_id
           "parameter_values";
       resource_groups =
         Prop.computed __resource_type __resource_id
           "resource_groups";
       target_subscription_id =
         Prop.computed __resource_type __resource_id
           "target_subscription_id";
       type_ = Prop.computed __resource_type __resource_id "type";
       version_id =
         Prop.computed __resource_type __resource_id "version_id";
     }
      : t)
  in
  __resource_attributes
