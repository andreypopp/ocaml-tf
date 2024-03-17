(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_storage_account_local_user__permission_scope__permissions = {
  create : bool prop option; [@option]  (** create *)
  delete : bool prop option; [@option]  (** delete *)
  list : bool prop option; [@option]  (** list *)
  read : bool prop option; [@option]  (** read *)
  write : bool prop option; [@option]  (** write *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user__permission_scope__permissions *)

type azurerm_storage_account_local_user__permission_scope = {
  resource_name : string prop;  (** resource_name *)
  service : string prop;  (** service *)
  permissions :
    azurerm_storage_account_local_user__permission_scope__permissions
    list;
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user__permission_scope *)

type azurerm_storage_account_local_user__ssh_authorized_key = {
  description : string prop option; [@option]  (** description *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user__ssh_authorized_key *)

type azurerm_storage_account_local_user__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user__timeouts *)

type azurerm_storage_account_local_user = {
  home_directory : string prop option; [@option]
      (** home_directory *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ssh_key_enabled : bool prop option; [@option]
      (** ssh_key_enabled *)
  ssh_password_enabled : bool prop option; [@option]
      (** ssh_password_enabled *)
  storage_account_id : string prop;  (** storage_account_id *)
  permission_scope :
    azurerm_storage_account_local_user__permission_scope list;
  ssh_authorized_key :
    azurerm_storage_account_local_user__ssh_authorized_key list;
  timeouts : azurerm_storage_account_local_user__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user *)

let azurerm_storage_account_local_user ?home_directory ?id
    ?ssh_key_enabled ?ssh_password_enabled ?timeouts ~name
    ~storage_account_id ~permission_scope ~ssh_authorized_key
    __resource_id =
  let __resource_type = "azurerm_storage_account_local_user" in
  let __resource =
    {
      home_directory;
      id;
      name;
      ssh_key_enabled;
      ssh_password_enabled;
      storage_account_id;
      permission_scope;
      ssh_authorized_key;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account_local_user __resource);
  ()
