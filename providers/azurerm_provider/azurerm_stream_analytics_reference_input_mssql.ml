(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_reference_input_mssql__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_reference_input_mssql__timeouts *)

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
  timeouts :
    azurerm_stream_analytics_reference_input_mssql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_reference_input_mssql *)

let azurerm_stream_analytics_reference_input_mssql
    ?delta_snapshot_query ?id ?refresh_interval_duration ?table
    ?timeouts ~database ~full_snapshot_query ~name ~password
    ~refresh_type ~resource_group_name ~server
    ~stream_analytics_job_name ~username __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_reference_input_mssql"
  in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_reference_input_mssql
       __resource);
  ()
