(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type non_compliance_message = {
  content : string prop;  (** content *)
  policy_definition_reference_id : string prop option; [@option]
      (** policy_definition_reference_id *)
}
[@@deriving yojson_of]
(** non_compliance_message *)

type overrides__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** overrides__selectors *)

type overrides = {
  value : string prop;  (** value *)
  selectors : overrides__selectors list;
}
[@@deriving yojson_of]
(** overrides *)

type resource_selectors__selectors = {
  in_ : string prop list option; [@option] [@key "in"]  (** in *)
  kind : string prop;  (** kind *)
  not_in : string prop list option; [@option]  (** not_in *)
}
[@@deriving yojson_of]
(** resource_selectors__selectors *)

type resource_selectors = {
  name : string prop option; [@option]  (** name *)
  selectors : resource_selectors__selectors list;
}
[@@deriving yojson_of]
(** resource_selectors *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_subscription_policy_assignment = {
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
  subscription_id : string prop;  (** subscription_id *)
  identity : identity list;
  non_compliance_message : non_compliance_message list;
  overrides : overrides list;
  resource_selectors : resource_selectors list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_subscription_policy_assignment *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let non_compliance_message ?policy_definition_reference_id ~content
    () : non_compliance_message =
  { content; policy_definition_reference_id }

let overrides__selectors ?in_ ?not_in () : overrides__selectors =
  { in_; not_in }

let overrides ~value ~selectors () : overrides = { value; selectors }

let resource_selectors__selectors ?in_ ?not_in ~kind () :
    resource_selectors__selectors =
  { in_; kind; not_in }

let resource_selectors ?name ~selectors () : resource_selectors =
  { name; selectors }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_subscription_policy_assignment ?description ?display_name
    ?enforce ?id ?location ?metadata ?not_scopes ?parameters
    ?timeouts ~name ~policy_definition_id ~subscription_id ~identity
    ~non_compliance_message ~overrides ~resource_selectors () :
    azurerm_subscription_policy_assignment =
  {
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
    subscription_id;
    identity;
    non_compliance_message;
    overrides;
    resource_selectors;
    timeouts;
  }

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
  subscription_id : string prop;
}

let register ?tf_module ?description ?display_name ?enforce ?id
    ?location ?metadata ?not_scopes ?parameters ?timeouts ~name
    ~policy_definition_id ~subscription_id ~identity
    ~non_compliance_message ~overrides ~resource_selectors
    __resource_id =
  let __resource_type = "azurerm_subscription_policy_assignment" in
  let __resource =
    azurerm_subscription_policy_assignment ?description ?display_name
      ?enforce ?id ?location ?metadata ?not_scopes ?parameters
      ?timeouts ~name ~policy_definition_id ~subscription_id
      ~identity ~non_compliance_message ~overrides
      ~resource_selectors ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_subscription_policy_assignment __resource);
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
       subscription_id =
         Prop.computed __resource_type __resource_id
           "subscription_id";
     }
      : t)
  in
  __resource_attributes
