(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = { read : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { read = v_read } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type identity = {
  identity_ids : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : identity) -> ()

let yojson_of_identity =
  (function
   | { identity_ids = v_identity_ids; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         if [] = v_identity_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_identity_ids
           in
           let bnd = "identity_ids", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : identity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_identity

[@@@deriving.end]

type azurerm_mssql_database = {
  id : string prop option; [@option]
  name : string prop;
  server_id : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_mssql_database) -> ()

let yojson_of_azurerm_mssql_database =
  (function
   | {
       id = v_id;
       name = v_name;
       server_id = v_server_id;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_server_id in
         ("server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_mssql_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_mssql_database

[@@@deriving.end]

let timeouts ?read () : timeouts = { read }

let azurerm_mssql_database ?id ?timeouts ~name ~server_id () :
    azurerm_mssql_database =
  { id; name; server_id; timeouts }

type t = {
  tf_name : string;
  collation : string prop;
  elastic_pool_id : string prop;
  enclave_type : string prop;
  id : string prop;
  identity : identity list prop;
  license_type : string prop;
  max_size_gb : float prop;
  name : string prop;
  read_replica_count : float prop;
  read_scale : bool prop;
  server_id : string prop;
  sku_name : string prop;
  storage_account_type : string prop;
  tags : (string * string) list prop;
  transparent_data_encryption_enabled : bool prop;
  transparent_data_encryption_key_automatic_rotation_enabled :
    bool prop;
  transparent_data_encryption_key_vault_key_id : string prop;
  zone_redundant : bool prop;
}

let make ?id ?timeouts ~name ~server_id __id =
  let __type = "azurerm_mssql_database" in
  let __attrs =
    ({
       tf_name = __id;
       collation = Prop.computed __type __id "collation";
       elastic_pool_id = Prop.computed __type __id "elastic_pool_id";
       enclave_type = Prop.computed __type __id "enclave_type";
       id = Prop.computed __type __id "id";
       identity = Prop.computed __type __id "identity";
       license_type = Prop.computed __type __id "license_type";
       max_size_gb = Prop.computed __type __id "max_size_gb";
       name = Prop.computed __type __id "name";
       read_replica_count =
         Prop.computed __type __id "read_replica_count";
       read_scale = Prop.computed __type __id "read_scale";
       server_id = Prop.computed __type __id "server_id";
       sku_name = Prop.computed __type __id "sku_name";
       storage_account_type =
         Prop.computed __type __id "storage_account_type";
       tags = Prop.computed __type __id "tags";
       transparent_data_encryption_enabled =
         Prop.computed __type __id
           "transparent_data_encryption_enabled";
       transparent_data_encryption_key_automatic_rotation_enabled =
         Prop.computed __type __id
           "transparent_data_encryption_key_automatic_rotation_enabled";
       transparent_data_encryption_key_vault_key_id =
         Prop.computed __type __id
           "transparent_data_encryption_key_vault_key_id";
       zone_redundant = Prop.computed __type __id "zone_redundant";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_mssql_database
        (azurerm_mssql_database ?id ?timeouts ~name ~server_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~server_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~server_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
