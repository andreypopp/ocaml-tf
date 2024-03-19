(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type permission_scope__permissions = {
  create : bool prop option; [@option]  (** create *)
  delete : bool prop option; [@option]  (** delete *)
  list_ : bool prop option; [@option] [@key "list"]  (** list *)
  read : bool prop option; [@option]  (** read *)
  write : bool prop option; [@option]  (** write *)
}
[@@deriving yojson_of]
(** permission_scope__permissions *)

type permission_scope = {
  resource_name : string prop;  (** resource_name *)
  service : string prop;  (** service *)
  permissions : permission_scope__permissions list;
}
[@@deriving yojson_of]
(** permission_scope *)

type ssh_authorized_key = {
  description : string prop option; [@option]  (** description *)
  key : string prop;  (** key *)
}
[@@deriving yojson_of]
(** ssh_authorized_key *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  permission_scope : permission_scope list;
  ssh_authorized_key : ssh_authorized_key list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_storage_account_local_user *)

let permission_scope__permissions ?create ?delete ?list_ ?read ?write
    () : permission_scope__permissions =
  { create; delete; list_; read; write }

let permission_scope ~resource_name ~service ~permissions () :
    permission_scope =
  { resource_name; service; permissions }

let ssh_authorized_key ?description ~key () : ssh_authorized_key =
  { description; key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_account_local_user ?home_directory ?id
    ?ssh_key_enabled ?ssh_password_enabled ?timeouts ~name
    ~storage_account_id ~permission_scope ~ssh_authorized_key () :
    azurerm_storage_account_local_user =
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

type t = {
  home_directory : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  sid : string prop;
  ssh_key_enabled : bool prop;
  ssh_password_enabled : bool prop;
  storage_account_id : string prop;
}

let register ?tf_module ?home_directory ?id ?ssh_key_enabled
    ?ssh_password_enabled ?timeouts ~name ~storage_account_id
    ~permission_scope ~ssh_authorized_key __resource_id =
  let __resource_type = "azurerm_storage_account_local_user" in
  let __resource =
    azurerm_storage_account_local_user ?home_directory ?id
      ?ssh_key_enabled ?ssh_password_enabled ?timeouts ~name
      ~storage_account_id ~permission_scope ~ssh_authorized_key ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_storage_account_local_user __resource);
  let __resource_attributes =
    ({
       home_directory =
         Prop.computed __resource_type __resource_id "home_directory";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       sid = Prop.computed __resource_type __resource_id "sid";
       ssh_key_enabled =
         Prop.computed __resource_type __resource_id
           "ssh_key_enabled";
       ssh_password_enabled =
         Prop.computed __resource_type __resource_id
           "ssh_password_enabled";
       storage_account_id =
         Prop.computed __resource_type __resource_id
           "storage_account_id";
     }
      : t)
  in
  __resource_attributes
