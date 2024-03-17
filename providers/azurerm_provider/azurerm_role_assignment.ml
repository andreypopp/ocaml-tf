(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_role_assignment__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
}
[@@deriving yojson_of]
(** azurerm_role_assignment__timeouts *)

type azurerm_role_assignment = {
  condition : string option; [@option]  (** condition *)
  condition_version : string option; [@option]
      (** condition_version *)
  delegated_managed_identity_resource_id : string option; [@option]
      (** delegated_managed_identity_resource_id *)
  description : string option; [@option]  (** description *)
  principal_id : string;  (** principal_id *)
  scope : string;  (** scope *)
  timeouts : azurerm_role_assignment__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_role_assignment *)

let azurerm_role_assignment ?condition ?condition_version
    ?delegated_managed_identity_resource_id ?description ?timeouts
    ~principal_id ~scope __resource_id =
  let __resource_type = "azurerm_role_assignment" in
  let __resource =
    {
      condition;
      condition_version;
      delegated_managed_identity_resource_id;
      description;
      principal_id;
      scope;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_role_assignment __resource);
  ()
