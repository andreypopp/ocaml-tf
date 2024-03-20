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

type azurerm_stream_analytics_output_mssql = {
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
  database : string prop;  (** database *)
  id : string prop option; [@option]  (** id *)
  max_batch_count : float prop option; [@option]
      (** max_batch_count *)
  max_writer_count : float prop option; [@option]
      (** max_writer_count *)
  name : string prop;  (** name *)
  password : string prop option; [@option]  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  server : string prop;  (** server *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  table : string prop;  (** table *)
  user : string prop option; [@option]  (** user *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_mssql *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_mssql ?authentication_mode ?id
    ?max_batch_count ?max_writer_count ?password ?user ?timeouts
    ~database ~name ~resource_group_name ~server
    ~stream_analytics_job_name ~table () :
    azurerm_stream_analytics_output_mssql =
  {
    authentication_mode;
    database;
    id;
    max_batch_count;
    max_writer_count;
    name;
    password;
    resource_group_name;
    server;
    stream_analytics_job_name;
    table;
    user;
    timeouts;
  }

type t = {
  authentication_mode : string prop;
  database : string prop;
  id : string prop;
  max_batch_count : float prop;
  max_writer_count : float prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop;
}

let make ?authentication_mode ?id ?max_batch_count ?max_writer_count
    ?password ?user ?timeouts ~database ~name ~resource_group_name
    ~server ~stream_analytics_job_name ~table __id =
  let __type = "azurerm_stream_analytics_output_mssql" in
  let __attrs =
    ({
       authentication_mode =
         Prop.computed __type __id "authentication_mode";
       database = Prop.computed __type __id "database";
       id = Prop.computed __type __id "id";
       max_batch_count = Prop.computed __type __id "max_batch_count";
       max_writer_count =
         Prop.computed __type __id "max_writer_count";
       name = Prop.computed __type __id "name";
       password = Prop.computed __type __id "password";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       server = Prop.computed __type __id "server";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
       table = Prop.computed __type __id "table";
       user = Prop.computed __type __id "user";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_mssql
        (azurerm_stream_analytics_output_mssql ?authentication_mode
           ?id ?max_batch_count ?max_writer_count ?password ?user
           ?timeouts ~database ~name ~resource_group_name ~server
           ~stream_analytics_job_name ~table ());
    attrs = __attrs;
  }

let register ?tf_module ?authentication_mode ?id ?max_batch_count
    ?max_writer_count ?password ?user ?timeouts ~database ~name
    ~resource_group_name ~server ~stream_analytics_job_name ~table
    __id =
  let (r : _ Tf_core.resource) =
    make ?authentication_mode ?id ?max_batch_count ?max_writer_count
      ?password ?user ?timeouts ~database ~name ~resource_group_name
      ~server ~stream_analytics_job_name ~table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
