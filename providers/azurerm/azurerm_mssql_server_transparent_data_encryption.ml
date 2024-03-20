(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_mssql_server_transparent_data_encryption = {
  auto_rotation_enabled : bool prop option; [@option]
      (** auto_rotation_enabled *)
  id : string prop option; [@option]  (** id *)
  key_vault_key_id : string prop option; [@option]
      (** key_vault_key_id *)
  server_id : string prop;  (** server_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_mssql_server_transparent_data_encryption *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_mssql_server_transparent_data_encryption
    ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts ~server_id
    () : azurerm_mssql_server_transparent_data_encryption =
  {
    auto_rotation_enabled;
    id;
    key_vault_key_id;
    server_id;
    timeouts;
  }

type t = {
  auto_rotation_enabled : bool prop;
  id : string prop;
  key_vault_key_id : string prop;
  server_id : string prop;
}

let make ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
    ~server_id __id =
  let __type = "azurerm_mssql_server_transparent_data_encryption" in
  let __attrs =
    ({
       auto_rotation_enabled =
         Prop.computed __type __id "auto_rotation_enabled";
       id = Prop.computed __type __id "id";
       key_vault_key_id =
         Prop.computed __type __id "key_vault_key_id";
       server_id = Prop.computed __type __id "server_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_server_transparent_data_encryption
        (azurerm_mssql_server_transparent_data_encryption
           ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
           ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?auto_rotation_enabled ?id ?key_vault_key_id
    ?timeouts ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?auto_rotation_enabled ?id ?key_vault_key_id ?timeouts
      ~server_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
