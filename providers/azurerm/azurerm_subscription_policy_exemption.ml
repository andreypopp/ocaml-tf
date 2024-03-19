(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subscription_policy_exemption = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  exemption_category : string prop;  (** exemption_category *)
  expires_on : string prop option; [@option]  (** expires_on *)
  id : string prop option; [@option]  (** id *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  policy_assignment_id : string prop;  (** policy_assignment_id *)
  policy_definition_reference_ids : string prop list option;
      [@option]
      (** policy_definition_reference_ids *)
  subscription_id : string prop;  (** subscription_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_policy_exemption *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_policy_exemption ?description ?display_name
    ?expires_on ?id ?metadata ?policy_definition_reference_ids
    ?timeouts ~exemption_category ~name ~policy_assignment_id
    ~subscription_id () : azurerm_subscription_policy_exemption =
  {
    description;
    display_name;
    exemption_category;
    expires_on;
    id;
    metadata;
    name;
    policy_assignment_id;
    policy_definition_reference_ids;
    subscription_id;
    timeouts;
  }

type t = {
  description : string prop;
  display_name : string prop;
  exemption_category : string prop;
  expires_on : string prop;
  id : string prop;
  metadata : string prop;
  name : string prop;
  policy_assignment_id : string prop;
  policy_definition_reference_ids : string list prop;
  subscription_id : string prop;
}

let register ?tf_module ?description ?display_name ?expires_on ?id
    ?metadata ?policy_definition_reference_ids ?timeouts
    ~exemption_category ~name ~policy_assignment_id ~subscription_id
    __resource_id =
  let __resource_type = "azurerm_subscription_policy_exemption" in
  let __resource =
    azurerm_subscription_policy_exemption ?description ?display_name
      ?expires_on ?id ?metadata ?policy_definition_reference_ids
      ?timeouts ~exemption_category ~name ~policy_assignment_id
      ~subscription_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription_policy_exemption __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       exemption_category =
         Prop.computed __resource_type __resource_id
           "exemption_category";
       expires_on =
         Prop.computed __resource_type __resource_id "expires_on";
       id = Prop.computed __resource_type __resource_id "id";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       policy_assignment_id =
         Prop.computed __resource_type __resource_id
           "policy_assignment_id";
       policy_definition_reference_ids =
         Prop.computed __resource_type __resource_id
           "policy_definition_reference_ids";
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
     }
      : t)
  in
  __resource_attributes
