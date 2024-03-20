(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?home_directory ?id ?ssh_key_enabled ?ssh_password_enabled
    ?timeouts ~name ~storage_account_id ~permission_scope
    ~ssh_authorized_key __id =
  let __type = "azurerm_storage_account_local_user" in
  let __attrs =
    ({
       home_directory = Prop.computed __type __id "home_directory";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       sid = Prop.computed __type __id "sid";
       ssh_key_enabled = Prop.computed __type __id "ssh_key_enabled";
       ssh_password_enabled =
         Prop.computed __type __id "ssh_password_enabled";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_account_local_user
        (azurerm_storage_account_local_user ?home_directory ?id
           ?ssh_key_enabled ?ssh_password_enabled ?timeouts ~name
           ~storage_account_id ~permission_scope ~ssh_authorized_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?home_directory ?id ?ssh_key_enabled
    ?ssh_password_enabled ?timeouts ~name ~storage_account_id
    ~permission_scope ~ssh_authorized_key __id =
  let (r : _ Tf_core.resource) =
    make ?home_directory ?id ?ssh_key_enabled ?ssh_password_enabled
      ?timeouts ~name ~storage_account_id ~permission_scope
      ~ssh_authorized_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
