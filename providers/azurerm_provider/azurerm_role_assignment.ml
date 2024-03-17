(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_role_assignment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_role_assignment__timeouts *)

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
  timeouts : azurerm_role_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_role_assignment *)

let azurerm_role_assignment ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?id ?name
    ?principal_type ?role_definition_id ?role_definition_name
    ?skip_service_principal_aad_check ?timeouts ~principal_id ~scope
    __resource_id =
  let __resource_type = "azurerm_role_assignment" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_role_assignment __resource);
  ()
