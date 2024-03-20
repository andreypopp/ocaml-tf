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

type azurerm_stream_analytics_reference_input_mssql = {
  database : string prop;  (** database *)
  delta_snapshot_query : string prop option; [@option]
      (** delta_snapshot_query *)
  full_snapshot_query : string prop;  (** full_snapshot_query *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  refresh_interval_duration : string prop option; [@option]
      (** refresh_interval_duration *)
  refresh_type : string prop;  (** refresh_type *)
  resource_group_name : string prop;  (** resource_group_name *)
  server : string prop;  (** server *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  table : string prop option; [@option]  (** table *)
  username : string prop;  (** username *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_reference_input_mssql *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_reference_input_mssql
    ?delta_snapshot_query ?id ?refresh_interval_duration ?table
    ?timeouts ~database ~full_snapshot_query ~name ~password
    ~refresh_type ~resource_group_name ~server
    ~stream_analytics_job_name ~username () :
    azurerm_stream_analytics_reference_input_mssql =
  {
    database;
    delta_snapshot_query;
    full_snapshot_query;
    id;
    name;
    password;
    refresh_interval_duration;
    refresh_type;
    resource_group_name;
    server;
    stream_analytics_job_name;
    table;
    username;
    timeouts;
  }

type t = {
  database : string prop;
  delta_snapshot_query : string prop;
  full_snapshot_query : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  refresh_interval_duration : string prop;
  refresh_type : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  username : string prop;
}

let make ?delta_snapshot_query ?id ?refresh_interval_duration ?table
    ?timeouts ~database ~full_snapshot_query ~name ~password
    ~refresh_type ~resource_group_name ~server
    ~stream_analytics_job_name ~username __id =
  let __type = "azurerm_stream_analytics_reference_input_mssql" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       delta_snapshot_query =
         Prop.computed __type __id "delta_snapshot_query";
       full_snapshot_query =
         Prop.computed __type __id "full_snapshot_query";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       refresh_interval_duration =
         Prop.computed __type __id "refresh_interval_duration";
       refresh_type = Prop.computed __type __id "refresh_type";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server = Prop.computed __type __id "server";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       table = Prop.computed __type __id "table";
       username = Prop.computed __type __id "username";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_reference_input_mssql
        (azurerm_stream_analytics_reference_input_mssql
           ?delta_snapshot_query ?id ?refresh_interval_duration
           ?table ?timeouts ~database ~full_snapshot_query ~name
           ~password ~refresh_type ~resource_group_name ~server
           ~stream_analytics_job_name ~username ());
    attrs = __attrs;
  }

let register ?tf_module ?delta_snapshot_query ?id
    ?refresh_interval_duration ?table ?timeouts ~database
    ~full_snapshot_query ~name ~password ~refresh_type
    ~resource_group_name ~server ~stream_analytics_job_name ~username
    __id =
  let (r : _ Tf_core.resource) =
    make ?delta_snapshot_query ?id ?refresh_interval_duration ?table
      ?timeouts ~database ~full_snapshot_query ~name ~password
      ~refresh_type ~resource_group_name ~server
      ~stream_analytics_job_name ~username __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
