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

type azurerm_kusto_cluster_customer_managed_key = {
  cluster_id : string prop;
  id : string prop option; [@option]
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop option; [@option]
  user_identity : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_cluster_customer_managed_key) -> ()

let yojson_of_azurerm_kusto_cluster_customer_managed_key =
  (function
   | {
       cluster_id = v_cluster_id;
       id = v_id;
       key_name = v_key_name;
       key_vault_id = v_key_vault_id;
       key_version = v_key_version;
       user_identity = v_user_identity;
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
         match v_user_identity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "user_identity", arg in
             bnd :: bnds
       in
       let bnds =
         match v_key_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "key_version", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_vault_id in
         ("key_vault_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_name in
         ("key_name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_id in
         ("cluster_id", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_cluster_customer_managed_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_cluster_customer_managed_key

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_cluster_customer_managed_key ?id ?key_version
    ?user_identity ?timeouts ~cluster_id ~key_name ~key_vault_id () :
    azurerm_kusto_cluster_customer_managed_key =
  {
    cluster_id;
    id;
    key_name;
    key_vault_id;
    key_version;
    user_identity;
    timeouts;
  }

type t = {
  cluster_id : string prop;
  id : string prop;
  key_name : string prop;
  key_vault_id : string prop;
  key_version : string prop;
  user_identity : string prop;
}

let make ?id ?key_version ?user_identity ?timeouts ~cluster_id
    ~key_name ~key_vault_id __id =
  let __type = "azurerm_kusto_cluster_customer_managed_key" in
  let __attrs =
    ({
       cluster_id = Prop.computed __type __id "cluster_id";
       id = Prop.computed __type __id "id";
       key_name = Prop.computed __type __id "key_name";
       key_vault_id = Prop.computed __type __id "key_vault_id";
       key_version = Prop.computed __type __id "key_version";
       user_identity = Prop.computed __type __id "user_identity";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_cluster_customer_managed_key
        (azurerm_kusto_cluster_customer_managed_key ?id ?key_version
           ?user_identity ?timeouts ~cluster_id ~key_name
           ~key_vault_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_version ?user_identity ?timeouts
    ~cluster_id ~key_name ~key_vault_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_version ?user_identity ?timeouts ~cluster_id
      ~key_name ~key_vault_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
