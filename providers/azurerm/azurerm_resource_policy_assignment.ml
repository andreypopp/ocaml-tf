(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_resource_policy_assignment__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__identity *)

type azurerm_resource_policy_assignment__non_compliance_message = {
  content : string prop;  (** content *)
  policy_definition_reference_id : string prop option; [@option]
      (** policy_definition_reference_id *)
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__non_compliance_message *)

type azurerm_resource_policy_assignment__overrides__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  kind : string prop;  (** kind *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__overrides__selectors *)

type azurerm_resource_policy_assignment__overrides = {
  value : string prop;  (** value *)
  selectors :
    azurerm_resource_policy_assignment__overrides__selectors list;
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__overrides *)

type azurerm_resource_policy_assignment__resource_selectors__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  kind : string prop;  (** kind *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__resource_selectors__selectors *)

type azurerm_resource_policy_assignment__resource_selectors = {
  name : string prop option; [@option]  (** name *)
  selectors :
    azurerm_resource_policy_assignment__resource_selectors__selectors
    list;
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__resource_selectors *)

type azurerm_resource_policy_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment__timeouts *)

type azurerm_resource_policy_assignment = {
  description : string prop option; [@option]  (** description *)
  display_name : string prop option; [@option]  (** display_name *)
  enforce : bool prop option; [@option]  (** enforce *)
  id : string prop option; [@option]  (** id *)
  location : string prop option; [@option]  (** location *)
  metadata : string prop option; [@option]  (** metadata *)
  name : string prop;  (** name *)
  not_scopes : string prop list option; [@option]  (** not_scopes *)
  parameters : string prop option; [@option]  (** parameters *)
  policy_definition_id : string prop;  (** policy_definition_id *)
  resource_id : string prop;  (** resource_id *)
  identity : azurerm_resource_policy_assignment__identity list;
  non_compliance_message :
    azurerm_resource_policy_assignment__non_compliance_message list;
  overrides : azurerm_resource_policy_assignment__overrides list;
  resource_selectors :
    azurerm_resource_policy_assignment__resource_selectors list;
  timeouts : azurerm_resource_policy_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_resource_policy_assignment *)

type t = {
  description : string prop;
  display_name : string prop;
  enforce : bool prop;
  id : string prop;
  location : string prop;
  metadata : string prop;
  name : string prop;
  not_scopes : string list prop;
  parameters : string prop;
  policy_definition_id : string prop;
  resource_id : string prop;
}

let azurerm_resource_policy_assignment ?description ?display_name
    ?enforce ?id ?location ?metadata ?not_scopes ?parameters
    ?timeouts ~name ~policy_definition_id ~resource_id ~identity
    ~non_compliance_message ~overrides ~resource_selectors
    __resource_id =
  let __resource_type = "azurerm_resource_policy_assignment" in
  let __resource =
    ({
       description;
       display_name;
       enforce;
       id;
       location;
       metadata;
       name;
       not_scopes;
       parameters;
       policy_definition_id;
       resource_id;
       identity;
       non_compliance_message;
       overrides;
       resource_selectors;
       timeouts;
     }
      : azurerm_resource_policy_assignment)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_resource_policy_assignment __resource);
  let __resource_attributes =
    ({
       description =
         Prop.computed __resource_type __resource_id "description";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       enforce =
         Prop.computed __resource_type __resource_id "enforce";
       id = Prop.computed __resource_type __resource_id "id";
       location =
         Prop.computed __resource_type __resource_id "location";
       metadata =
         Prop.computed __resource_type __resource_id "metadata";
       name = Prop.computed __resource_type __resource_id "name";
       not_scopes =
         Prop.computed __resource_type __resource_id "not_scopes";
       parameters =
         Prop.computed __resource_type __resource_id "parameters";
       policy_definition_id =
         Prop.computed __resource_type __resource_id
           "policy_definition_id";
       resource_id =
         Prop.computed __resource_type __resource_id "resource_id";
     }
      : t)
  in
  __resource_attributes
