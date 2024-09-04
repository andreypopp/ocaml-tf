(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type azurerm_key_vault_managed_storage_account = {
  id : string prop option; [@option]
  key_vault_id : string prop;
  name : string prop;
  regenerate_key_automatically : bool prop option; [@option]
  regeneration_period : string prop option; [@option]
  storage_account_id : string prop;
  storage_account_key : string prop;
  tags : string prop Tf_core.assoc option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_key_vault_managed_storage_account) -> ()

let yojson_of_azurerm_key_vault_managed_storage_account =
  (function
   | {
       id = v_id;
       key_vault_id = v_key_vault_id;
       name = v_name;
       regenerate_key_automatically = v_regenerate_key_automatically;
       regeneration_period = v_regeneration_period;
       storage_account_id = v_storage_account_id;
       storage_account_key = v_storage_account_key;
       tags = v_tags;
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
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_key
         in
         ("storage_account_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_id
         in
         ("storage_account_id", arg) :: bnds
       in
       let bnds =
         match v_regeneration_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "regeneration_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regenerate_key_automatically with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "regenerate_key_automatically", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
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
    : azurerm_key_vault_managed_storage_account ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_key_vault_managed_storage_account

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_key_vault_managed_storage_account ?id
    ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key () :
    azurerm_key_vault_managed_storage_account =
  {
    id;
    key_vault_id;
    name;
    regenerate_key_automatically;
    regeneration_period;
    storage_account_id;
    storage_account_key;
    tags;
    timeouts;
  }

type t = {
  tf_name : string;
  id : string prop;
  key_vault_id : string prop;
  name : string prop;
  regenerate_key_automatically : bool prop;
  regeneration_period : string prop;
  storage_account_id : string prop;
  storage_account_key : string prop;
  tags : string Tf_core.assoc prop;
}

let make ?id ?regenerate_key_automatically ?regeneration_period ?tags
    ?timeouts ~key_vault_id ~name ~storage_account_id
    ~storage_account_key __id =
  let __type = "azurerm_key_vault_managed_storage_account" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       name = Prop.computed __type __id "name";
       regenerate_key_automatically =
         Prop.computed __type __id "regenerate_key_automatically";
       regeneration_period =
         Prop.computed __type __id "regeneration_period";
       storage_account_id =
         Prop.computed __type __id "storage_account_id";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       tags = Prop.computed __type __id "tags";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_key_vault_managed_storage_account
        (azurerm_key_vault_managed_storage_account ?id
           ?regenerate_key_automatically ?regeneration_period ?tags
           ?timeouts ~key_vault_id ~name ~storage_account_id
           ~storage_account_key ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?regenerate_key_automatically
    ?regeneration_period ?tags ?timeouts ~key_vault_id ~name
    ~storage_account_id ~storage_account_key __id =
  let (r : _ Tf_core.resource) =
    make ?id ?regenerate_key_automatically ?regeneration_period ?tags
      ?timeouts ~key_vault_id ~name ~storage_account_id
      ~storage_account_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
