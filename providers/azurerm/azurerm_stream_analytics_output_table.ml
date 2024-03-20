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

type azurerm_stream_analytics_output_table = {
  batch_size : float prop;  (** batch_size *)
  columns_to_remove : string prop list option; [@option]
      (** columns_to_remove *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  partition_key : string prop;  (** partition_key *)
  resource_group_name : string prop;  (** resource_group_name *)
  row_key : string prop;  (** row_key *)
  storage_account_key : string prop;  (** storage_account_key *)
  storage_account_name : string prop;  (** storage_account_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  table : string prop;  (** table *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_table *)

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
