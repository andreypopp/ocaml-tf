(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_netapp_account_encryption__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_netapp_account_encryption__timeouts *)

type azurerm_netapp_account_encryption = {
  encryption_key : string prop;
      (** The versionless encryption key url. *)
  id : string prop option; [@option]  (** id *)
  netapp_account_id : string prop;
      (** The ID of the NetApp Account where encryption will be set. *)
  system_assigned_identity_principal_id : string prop option;
      [@option]
      (** The Principal ID of the System Assigned Identity to use for encryption. *)
  user_assigned_identity_id : string prop option; [@option]
      (** The resource ID of the User Assigned Identity to use for encryption. *)
  timeouts : azurerm_netapp_account_encryption__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_netapp_account_encryption *)

let azurerm_netapp_account_encryption ?id
    ?system_assigned_identity_principal_id ?user_assigned_identity_id
    ?timeouts ~encryption_key ~netapp_account_id __resource_id =
  let __resource_type = "azurerm_netapp_account_encryption" in
  let __resource =
    {
      encryption_key;
      id;
      netapp_account_id;
      system_assigned_identity_principal_id;
      user_assigned_identity_id;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_netapp_account_encryption __resource);
  ()
