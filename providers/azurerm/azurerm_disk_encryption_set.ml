(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_disk_encryption_set__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set__identity *)

type azurerm_disk_encryption_set__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set__timeouts *)

type azurerm_disk_encryption_set = {
  auto_key_rotation_enabled : bool prop option; [@option]
      (** auto_key_rotation_enabled *)
  encryption_type : string prop option; [@option]
      (** encryption_type *)
  federated_client_id : string prop option; [@option]
      (** federated_client_id *)
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop;  (** key_vault_key_id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  identity : azurerm_disk_encryption_set__identity list;
  timeouts : azurerm_disk_encryption_set__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_disk_encryption_set *)

type t = {
  auto_key_rotation_enabled : bool prop;
  encryption_type : string prop;
  federated_client_id : string prop;
  id : string prop;
  key_vault_key_id : string prop;
  key_vault_key_url : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  tags : (string * string) list prop;
}

let azurerm_disk_encryption_set ?auto_key_rotation_enabled
    ?encryption_type ?federated_client_id ?id ?tags ?timeouts
    ~key_vault_key_id ~location ~name ~resource_group_name ~identity
    __resource_id =
  let __resource_type = "azurerm_disk_encryption_set" in
  let __resource =
    ({
       auto_key_rotation_enabled;
       encryption_type;
       federated_client_id;
       id;
       key_vault_key_id;
       location;
       name;
       resource_group_name;
       tags;
       identity;
       timeouts;
     }
      : azurerm_disk_encryption_set)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_disk_encryption_set __resource);
  let __resource_attributes =
    ({
       auto_key_rotation_enabled =
         Prop.computed __resource_type __resource_id
           "auto_key_rotation_enabled";
       encryption_type =
         Prop.computed __resource_type __resource_id
           "encryption_type";
       federated_client_id =
         Prop.computed __resource_type __resource_id
           "federated_client_id";
       id = Prop.computed __resource_type __resource_id "id";
       key_vault_key_id =
         Prop.computed __resource_type __resource_id
           "key_vault_key_id";
       key_vault_key_url =
         Prop.computed __resource_type __resource_id
           "key_vault_key_url";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       tags = Prop.computed __resource_type __resource_id "tags";
     }
      : t)
  in
  __resource_attributes
