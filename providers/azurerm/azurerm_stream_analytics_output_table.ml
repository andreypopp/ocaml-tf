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

type azurerm_stream_analytics_output_table = {
  batch_size : float prop;
  columns_to_remove : string prop list option; [@option]
  id : string prop option; [@option]
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  row_key : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_stream_analytics_output_table) -> ()

let yojson_of_azurerm_stream_analytics_output_table =
  (function
   | {
       batch_size = v_batch_size;
       columns_to_remove = v_columns_to_remove;
       id = v_id;
       name = v_name;
       partition_key = v_partition_key;
       resource_group_name = v_resource_group_name;
       row_key = v_row_key;
       storage_account_key = v_storage_account_key;
       storage_account_name = v_storage_account_name;
       stream_analytics_job_name = v_stream_analytics_job_name;
       table = v_table;
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
         let arg = yojson_of_prop yojson_of_string v_table in
         ("table", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_stream_analytics_job_name
         in
         ("stream_analytics_job_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_name
         in
         ("storage_account_name", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_storage_account_key
         in
         ("storage_account_key", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_row_key in
         ("row_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_resource_group_name
         in
         ("resource_group_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_partition_key in
         ("partition_key", arg) :: bnds
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
       let bnds =
         match v_columns_to_remove with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "columns_to_remove", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_batch_size in
         ("batch_size", arg) :: bnds
       in
       `Assoc bnds
    : azurerm_stream_analytics_output_table ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_stream_analytics_output_table

[@@@deriving.end]

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_table ?columns_to_remove ?id
    ?timeouts ~batch_size ~name ~partition_key ~resource_group_name
    ~row_key ~storage_account_key ~storage_account_name
    ~stream_analytics_job_name ~table () :
    azurerm_stream_analytics_output_table =
  {
    batch_size;
    columns_to_remove;
    id;
    name;
    partition_key;
    resource_group_name;
    row_key;
    storage_account_key;
    storage_account_name;
    stream_analytics_job_name;
    table;
    timeouts;
  }

type t = {
  batch_size : float prop;
  columns_to_remove : string list prop;
  id : string prop;
  name : string prop;
  partition_key : string prop;
  resource_group_name : string prop;
  row_key : string prop;
  storage_account_key : string prop;
  storage_account_name : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
}

let make ?columns_to_remove ?id ?timeouts ~batch_size ~name
    ~partition_key ~resource_group_name ~row_key ~storage_account_key
    ~storage_account_name ~stream_analytics_job_name ~table __id =
  let __type = "azurerm_stream_analytics_output_table" in
  let __attrs =
    ({
       batch_size = Prop.computed __type __id "batch_size";
       columns_to_remove =
         Prop.computed __type __id "columns_to_remove";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       partition_key = Prop.computed __type __id "partition_key";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       row_key = Prop.computed __type __id "row_key";
       storage_account_key =
         Prop.computed __type __id "storage_account_key";
       storage_account_name =
         Prop.computed __type __id "storage_account_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       table = Prop.computed __type __id "table";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_table
        (azurerm_stream_analytics_output_table ?columns_to_remove ?id
           ?timeouts ~batch_size ~name ~partition_key
           ~resource_group_name ~row_key ~storage_account_key
           ~storage_account_name ~stream_analytics_job_name ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?columns_to_remove ?id ?timeouts ~batch_size
    ~name ~partition_key ~resource_group_name ~row_key
    ~storage_account_key ~storage_account_name
    ~stream_analytics_job_name ~table __id =
  let (r : _ Tf_core.resource) =
    make ?columns_to_remove ?id ?timeouts ~batch_size ~name
      ~partition_key ~resource_group_name ~row_key
      ~storage_account_key ~storage_account_name
      ~stream_analytics_job_name ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
