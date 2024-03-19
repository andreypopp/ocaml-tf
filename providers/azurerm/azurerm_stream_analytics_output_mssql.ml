(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?authentication_mode ?id ?max_batch_count
    ?max_writer_count ?password ?user ?timeouts ~database ~name
    ~resource_group_name ~server ~stream_analytics_job_name ~table
    __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_mssql" in
  let __resource =
    azurerm_stream_analytics_output_mssql ?authentication_mode ?id
      ?max_batch_count ?max_writer_count ?password ?user ?timeouts
      ~database ~name ~resource_group_name ~server
      ~stream_analytics_job_name ~table ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_mssql __resource);
  let __resource_attributes =
    ({
       authentication_mode =
         Prop.computed __resource_type __resource_id
           "authentication_mode";
       database =
         Prop.computed __resource_type __resource_id "database";
       id = Prop.computed __resource_type __resource_id "id";
       max_batch_count =
         Prop.computed __resource_type __resource_id
           "max_batch_count";
       max_writer_count =
         Prop.computed __resource_type __resource_id
           "max_writer_count";
       name = Prop.computed __resource_type __resource_id "name";
       password =
         Prop.computed __resource_type __resource_id "password";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       server = Prop.computed __resource_type __resource_id "server";
       stream_analytics_job_name =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_name";
       table = Prop.computed __resource_type __resource_id "table";
       user = Prop.computed __resource_type __resource_id "user";
     }
      : t)
  in
  __resource_attributes
