(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_key_vault_access_policy__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_key_vault_access_policy__timeouts *)

type azurerm_key_vault_access_policy = {
  application_id : string option; [@option]  (** application_id *)
  certificate_permissions : string list option; [@option]
      (** certificate_permissions *)
  id : string option; [@option]  (** id *)
  key_permissions : string list option; [@option]
      (** key_permissions *)
  key_vault_id : string;  (** key_vault_id *)
  object_id : string;  (** object_id *)
  secret_permissions : string list option; [@option]
      (** secret_permissions *)
  storage_permissions : string list option; [@option]
      (** storage_permissions *)
  tenant_id : string;  (** tenant_id *)
  timeouts : azurerm_key_vault_access_policy__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_key_vault_access_policy *)

let azurerm_key_vault_access_policy ?application_id
    ?certificate_permissions ?id ?key_permissions ?secret_permissions
    ?storage_permissions ?timeouts ~key_vault_id ~object_id
    ~tenant_id __resource_id =
  let __resource_type = "azurerm_key_vault_access_policy" in
  let __resource =
    {
      application_id;
      certificate_permissions;
      id;
      key_permissions;
      key_vault_id;
      object_id;
      secret_permissions;
      storage_permissions;
      tenant_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_key_vault_access_policy __resource);
  ()
