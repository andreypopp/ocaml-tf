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

type azurerm_kusto_database = {
  cluster_name : string prop;
  hot_cache_period : string prop option; [@option]
  id : string prop option; [@option]
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  soft_delete_period : string prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kusto_database) -> ()

let yojson_of_azurerm_kusto_database =
  (function
   | {
       cluster_name = v_cluster_name;
       hot_cache_period = v_hot_cache_period;
       id = v_id;
       location = v_location;
       name = v_name;
       resource_group_name = v_resource_group_name;
       soft_delete_period = v_soft_delete_period;
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
         match v_soft_delete_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "soft_delete_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location in
         ("location", arg) :: bnds
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
         match v_hot_cache_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "hot_cache_period", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_name in
         ("cluster_name", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_kusto_database -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kusto_database

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_kusto_database ?hot_cache_period ?id ?soft_delete_period
    ?timeouts ~cluster_name ~location ~name ~resource_group_name () :
    azurerm_kusto_database =
  {
    cluster_name;
    hot_cache_period;
    id;
    location;
    name;
    resource_group_name;
    soft_delete_period;
    timeouts;
  }

type t = {
  tf_name : string;
  cluster_name : string prop;
  hot_cache_period : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  resource_group_name : string prop;
  size : float prop;
  soft_delete_period : string prop;
}

let make ?hot_cache_period ?id ?soft_delete_period ?timeouts
    ~cluster_name ~location ~name ~resource_group_name __id =
  let __type = "azurerm_kusto_database" in
  let __attrs =
    ({
       tf_name = __id;
       cluster_name = Prop.computed __type __id "cluster_name";
       hot_cache_period =
         Prop.computed __type __id "hot_cache_period";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       size = Prop.computed __type __id "size";
       soft_delete_period =
         Prop.computed __type __id "soft_delete_period";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kusto_database
        (azurerm_kusto_database ?hot_cache_period ?id
           ?soft_delete_period ?timeouts ~cluster_name ~location
           ~name ~resource_group_name ());
    attrs = __attrs;
  }

let register ?tf_module ?hot_cache_period ?id ?soft_delete_period
    ?timeouts ~cluster_name ~location ~name ~resource_group_name __id
    =
  let (r : _ Tf_core.resource) =
    make ?hot_cache_period ?id ?soft_delete_period ?timeouts
      ~cluster_name ~location ~name ~resource_group_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
