(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_role_assignment = {
  condition : string prop option; [@option]  (** condition *)
  condition_version : string prop option; [@option]
      (** condition_version *)
  delegated_managed_identity_resource_id : string prop option;
      [@option]
      (** delegated_managed_identity_resource_id *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  principal_id : string prop;  (** principal_id *)
  principal_type : string prop option; [@option]
      (** principal_type *)
  role_definition_id : string prop option; [@option]
      (** role_definition_id *)
  role_definition_name : string prop option; [@option]
      (** role_definition_name *)
  scope : string prop;  (** scope *)
  skip_service_principal_aad_check : bool prop option; [@option]
      (** skip_service_principal_aad_check *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_role_assignment *)

let timeouts ?create ?delete ?read () : timeouts =
  { create; delete; read }

let azurerm_role_assignment ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    () : azurerm_role_assignment =
  {
    condition;
    condition_version;
    delegated_managed_identity_resource_id;
    description;
    id;
    name;
    principal_id;
    principal_type;
    role_definition_id;
    role_definition_name;
    scope;
    skip_service_principal_aad_check;
    timeouts;
  }

type t = {
  condition : string prop;
  condition_version : string prop;
  delegated_managed_identity_resource_id : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  principal_id : string prop;
  principal_type : string prop;
  role_definition_id : string prop;
  role_definition_name : string prop;
  scope : string prop;
  skip_service_principal_aad_check : bool prop;
}

let register ?tf_module ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __resource_id =
  let __resource_type = "azurerm_role_assignment" in
  let __resource =
    azurerm_role_assignment ?condition ?condition_version
      ?delegated_managed_identity_resource_id ?description ?id ?name
      ?principal_type ?role_definition_id ?role_definition_name
      ?skip_service_principal_aad_check ?timeouts ~principal_id
      ~scope ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_role_assignment __resource);
  let __resource_attributes =
    ({
       condition =
         Prop.computed __resource_type __resource_id "condition";
       condition_version =
         Prop.computed __resource_type __resource_id
           "condition_version";
       delegated_managed_identity_resource_id =
         Prop.computed __resource_type __resource_id
           "delegated_managed_identity_resource_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       principal_id =
         Prop.computed __resource_type __resource_id "principal_id";
       principal_type =
         Prop.computed __resource_type __resource_id "principal_type";
       role_definition_id =
         Prop.computed __resource_type __resource_id
           "role_definition_id";
       role_definition_name =
         Prop.computed __resource_type __resource_id
           "role_definition_name";
       scope = Prop.computed __resource_type __resource_id "scope";
       skip_service_principal_aad_check =
         Prop.computed __resource_type __resource_id
           "skip_service_principal_aad_check";
     }
      : t)
  in
  __resource_attributes
