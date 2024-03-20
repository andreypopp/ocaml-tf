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

type azurerm_stream_analytics_output_synapse = {
  database : string prop;  (** database *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  password : string prop;  (** password *)
  resource_group_name : string prop;  (** resource_group_name *)
  server : string prop;  (** server *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  table : string prop;  (** table *)
  user : string prop;  (** user *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_synapse *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_synapse ?id ?timeouts ~database
    ~name ~password ~resource_group_name ~server
    ~stream_analytics_job_name ~table ~user () :
    azurerm_stream_analytics_output_synapse =
  {
    database;
    id;
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
  database : string prop;
  id : string prop;
  name : string prop;
  password : string prop;
  resource_group_name : string prop;
  server : string prop;
  stream_analytics_job_name : string prop;
  table : string prop;
  user : string prop;
}

let make ?id ?timeouts ~database ~name ~password ~resource_group_name
    ~server ~stream_analytics_job_name ~table ~user __id =
  let __type = "azurerm_stream_analytics_output_synapse" in
  let __attrs =
    ({
       database = Prop.computed __type __id "database";
       id = Prop.computed __type __id "id";
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
      yojson_of_azurerm_stream_analytics_output_synapse
        (azurerm_stream_analytics_output_synapse ?id ?timeouts
           ~database ~name ~password ~resource_group_name ~server
           ~stream_analytics_job_name ~table ~user ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~database ~name ~password
    ~resource_group_name ~server ~stream_analytics_job_name ~table
    ~user __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~database ~name ~password ~resource_group_name
      ~server ~stream_analytics_job_name ~table ~user __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
