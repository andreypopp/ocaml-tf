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

type azurerm_storage_sync_server_endpoint = {
  cloud_tiering_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  initial_download_policy : string prop option; [@option]
  local_cache_mode : string prop option; [@option]
  name : string prop;
  registered_server_id : string prop;
  server_local_path : string prop;
  storage_sync_group_id : string prop;
  tier_files_older_than_days : float prop option; [@option]
  volume_free_space_percent : float prop option; [@option]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_storage_sync_server_endpoint) -> ()

let yojson_of_azurerm_storage_sync_server_endpoint =
  (function
   | {
       cloud_tiering_enabled = v_cloud_tiering_enabled;
       id = v_id;
       initial_download_policy = v_initial_download_policy;
       local_cache_mode = v_local_cache_mode;
       name = v_name;
       registered_server_id = v_registered_server_id;
       server_local_path = v_server_local_path;
       storage_sync_group_id = v_storage_sync_group_id;
       tier_files_older_than_days = v_tier_files_older_than_days;
       volume_free_space_percent = v_volume_free_space_percent;
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
         match v_volume_free_space_percent with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "volume_free_space_percent", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tier_files_older_than_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "tier_files_older_than_days", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_sync_group_id
         in
         ("storage_sync_group_id", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_server_local_path
         in
         ("server_local_path", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_registered_server_id
         in
         ("registered_server_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_local_cache_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "local_cache_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_initial_download_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "initial_download_policy", arg in
             bnd :: bnds
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
         match v_cloud_tiering_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cloud_tiering_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_storage_sync_server_endpoint ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_storage_sync_server_endpoint

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_storage_sync_server_endpoint ?cloud_tiering_enabled ?id
    ?initial_download_policy ?local_cache_mode
    ?tier_files_older_than_days ?volume_free_space_percent ?timeouts
    ~name ~registered_server_id ~server_local_path
    ~storage_sync_group_id () : azurerm_storage_sync_server_endpoint
    =
  {
    cloud_tiering_enabled;
    id;
    initial_download_policy;
    local_cache_mode;
    name;
    registered_server_id;
    server_local_path;
    storage_sync_group_id;
    tier_files_older_than_days;
    volume_free_space_percent;
    timeouts;
  }

type t = {
  tf_name : string;
  cloud_tiering_enabled : bool prop;
  id : string prop;
  initial_download_policy : string prop;
  local_cache_mode : string prop;
  name : string prop;
  registered_server_id : string prop;
  server_local_path : string prop;
  storage_sync_group_id : string prop;
  tier_files_older_than_days : float prop;
  volume_free_space_percent : float prop;
}

let make ?cloud_tiering_enabled ?id ?initial_download_policy
    ?local_cache_mode ?tier_files_older_than_days
    ?volume_free_space_percent ?timeouts ~name ~registered_server_id
    ~server_local_path ~storage_sync_group_id __id =
  let __type = "azurerm_storage_sync_server_endpoint" in
  let __attrs =
    ({
       tf_name = __id;
       cloud_tiering_enabled =
         Prop.computed __type __id "cloud_tiering_enabled";
       id = Prop.computed __type __id "id";
       initial_download_policy =
         Prop.computed __type __id "initial_download_policy";
       local_cache_mode =
         Prop.computed __type __id "local_cache_mode";
       name = Prop.computed __type __id "name";
       registered_server_id =
         Prop.computed __type __id "registered_server_id";
       server_local_path =
         Prop.computed __type __id "server_local_path";
       storage_sync_group_id =
         Prop.computed __type __id "storage_sync_group_id";
       tier_files_older_than_days =
         Prop.computed __type __id "tier_files_older_than_days";
       volume_free_space_percent =
         Prop.computed __type __id "volume_free_space_percent";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_storage_sync_server_endpoint
        (azurerm_storage_sync_server_endpoint ?cloud_tiering_enabled
           ?id ?initial_download_policy ?local_cache_mode
           ?tier_files_older_than_days ?volume_free_space_percent
           ?timeouts ~name ~registered_server_id ~server_local_path
           ~storage_sync_group_id ());
    attrs = __attrs;
  }

let register ?tf_module ?cloud_tiering_enabled ?id
    ?initial_download_policy ?local_cache_mode
    ?tier_files_older_than_days ?volume_free_space_percent ?timeouts
    ~name ~registered_server_id ~server_local_path
    ~storage_sync_group_id __id =
  let (r : _ Tf_core.resource) =
    make ?cloud_tiering_enabled ?id ?initial_download_policy
      ?local_cache_mode ?tier_files_older_than_days
      ?volume_free_space_percent ?timeouts ~name
      ~registered_server_id ~server_local_path ~storage_sync_group_id
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
