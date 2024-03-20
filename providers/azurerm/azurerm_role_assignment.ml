(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __id =
  let __type = "azurerm_role_assignment" in
  let __attrs =
    ({
       condition = Prop.computed __type __id "condition";
       condition_version =
         Prop.computed __type __id "condition_version";
       delegated_managed_identity_resource_id =
         Prop.computed __type __id
           "delegated_managed_identity_resource_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       principal_id = Prop.computed __type __id "principal_id";
       principal_type = Prop.computed __type __id "principal_type";
       role_definition_id =
         Prop.computed __type __id "role_definition_id";
       role_definition_name =
         Prop.computed __type __id "role_definition_name";
       scope = Prop.computed __type __id "scope";
       skip_service_principal_aad_check =
         Prop.computed __type __id "skip_service_principal_aad_check";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_role_assignment
        (azurerm_role_assignment ?condition ?condition_version
           ?delegated_managed_identity_resource_id ?description ?id
           ?name ?principal_type ?role_definition_id
           ?role_definition_name ?skip_service_principal_aad_check
           ?timeouts ~principal_id ~scope ());
    attrs = __attrs;
  }

let register ?tf_module ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __id =
  let (r : _ Tf_core.resource) =
    make ?condition ?condition_version
      ?delegated_managed_identity_resource_id ?description ?id ?name
      ?principal_type ?role_definition_id ?role_definition_name
      ?skip_service_principal_aad_check ?timeouts ~principal_id
      ~scope __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
