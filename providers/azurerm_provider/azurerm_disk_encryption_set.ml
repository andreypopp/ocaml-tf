(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type azurerm_disk_encryption_set__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set__identity *)

type azurerm_disk_encryption_set__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set__timeouts *)

type azurerm_disk_encryption_set = {
  auto_key_rotation_enabled : bool option; [@option]
      (** auto_key_rotation_enabled *)
  encryption_type : string option; [@option]  (** encryption_type *)
  federated_client_id : string option; [@option]
      (** federated_client_id *)
  key_vault_key_id : string;  (** key_vault_key_id *)
  location : string;  (** location *)
  name : string;  (** name *)
  resource_group_name : string;  (** resource_group_name *)
  tags : (string * string) list option; [@option]  (** tags *)
  identity : azurerm_disk_encryption_set__identity list;
  timeouts : azurerm_disk_encryption_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set *)

let azurerm_disk_encryption_set ?auto_key_rotation_enabled
    ?encryption_type ?federated_client_id ?tags ?timeouts
    ~key_vault_key_id ~location ~name ~resource_group_name ~identity
    __resource_id =
  let __resource_type = "azurerm_disk_encryption_set" in
  let __resource =
    {
      auto_key_rotation_enabled;
      encryption_type;
      federated_client_id;
      key_vault_key_id;
      location;
      name;
      resource_group_name;
      tags;
      identity;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_encryption_set __resource);
  ()
