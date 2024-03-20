(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type encryption_settings__disk_encryption_key = {
  secret_url : string prop;  (** secret_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** encryption_settings__disk_encryption_key *)

type encryption_settings__key_encryption_key = {
  key_url : string prop;  (** key_url *)
  source_vault_id : string prop;  (** source_vault_id *)
}
[@@deriving yojson_of]
(** encryption_settings__key_encryption_key *)

type encryption_settings = {
  enabled : bool prop option; [@option]  (** enabled *)
  disk_encryption_key :
    encryption_settings__disk_encryption_key list;
  key_encryption_key : encryption_settings__key_encryption_key list;
}
[@@deriving yojson_of]
(** encryption_settings *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_snapshot = {
  create_option : string prop;  (** create_option *)
  disk_size_gb : float prop option; [@option]  (** disk_size_gb *)
  id : string prop option; [@option]  (** id *)
  incremental_enabled : bool prop option; [@option]
      (** incremental_enabled *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  source_resource_id : string prop option; [@option]
      (** source_resource_id *)
  source_uri : string prop option; [@option]  (** source_uri *)
  storage_account_id : string prop option; [@option]
      (** storage_account_id *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  encryption_settings : encryption_settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_snapshot *)

let encryption_settings__disk_encryption_key ~secret_url
    ~source_vault_id () : encryption_settings__disk_encryption_key =
  { secret_url; source_vault_id }

let encryption_settings__key_encryption_key ~key_url ~source_vault_id
    () : encryption_settings__key_encryption_key =
  { key_url; source_vault_id }

let encryption_settings ?enabled ~disk_encryption_key
    ~key_encryption_key () : encryption_settings =
  { enabled; disk_encryption_key; key_encryption_key }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_snapshot ?disk_size_gb ?id ?incremental_enabled
    ?source_resource_id ?source_uri ?storage_account_id ?tags
    ?timeouts ~create_option ~location ~name ~resource_group_name
    ~encryption_settings () : azurerm_snapshot =
  {
    create_option;
    disk_size_gb;
    id;
    incremental_enabled;
    location;
    name;
    resource_group_name;
    source_resource_id;
    source_uri;
    storage_account_id;
    tags;
    encryption_settings;
    timeouts;
  }

type t = {
  create_option : string prop;
  disk_size_gb : float prop;
  id : string prop;
  incremental_enabled : bool prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  source_resource_id : string prop;
  source_uri : string prop;
  storage_account_id : string prop;
  tags : (string * string) list prop;
  trusted_launch_enabled : bool prop;
}

let make ?disk_size_gb ?id ?incremental_enabled ?source_resource_id
    ?source_uri ?storage_account_id ?tags ?timeouts ~create_option
    ~location ~name ~resource_group_name ~encryption_settings __id =
  let __type = "azurerm_snapshot" in
  let __attrs =
    ({
       create_option = Prop.computed __type __id "create_option";
       disk_size_gb = Prop.computed __type __id "disk_size_gb";
       id = Prop.computed __type __id "id";
       incremental_enabled =
         Prop.computed __type __id "incremental_enabled";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       source_resource_id =
         Prop.computed __type __id "source_resource_id";
       source_uri = Prop.computed __type __id "source_uri";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       tags = Prop.computed __type __id "tags";
       trusted_launch_enabled =
         Prop.computed __type __id "trusted_launch_enabled";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_snapshot
        (azurerm_snapshot ?disk_size_gb ?id ?incremental_enabled
           ?source_resource_id ?source_uri ?storage_account_id ?tags
           ?timeouts ~create_option ~location ~name
           ~resource_group_name ~encryption_settings ());
    attrs = __attrs;
  }

let register ?tf_module ?disk_size_gb ?id ?incremental_enabled
    ?source_resource_id ?source_uri ?storage_account_id ?tags
    ?timeouts ~create_option ~location ~name ~resource_group_name
    ~encryption_settings __id =
  let (r : _ Tf_core.resource) =
    make ?disk_size_gb ?id ?incremental_enabled ?source_resource_id
      ?source_uri ?storage_account_id ?tags ?timeouts ~create_option
      ~location ~name ~resource_group_name ~encryption_settings __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
