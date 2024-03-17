(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_reference_input_mssql__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_reference_input_mssql__timeouts *)

type azurerm_stream_analytics_reference_input_mssql = {
  database : string;  (** database *)
  delta_snapshot_query : string option; [@option]
      (** delta_snapshot_query *)
  full_snapshot_query : string;  (** full_snapshot_query *)
  name : string;  (** name *)
  password : string;  (** password *)
  refresh_interval_duration : string option; [@option]
      (** refresh_interval_duration *)
  refresh_type : string;  (** refresh_type *)
  resource_group_name : string;  (** resource_group_name *)
  server : string;  (** server *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  table : string option; [@option]  (** table *)
  username : string;  (** username *)
  timeouts :
    azurerm_stream_analytics_reference_input_mssql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_reference_input_mssql *)

let azurerm_stream_analytics_reference_input_mssql
    ?delta_snapshot_query ?refresh_interval_duration ?table ?timeouts
    ~database ~full_snapshot_query ~name ~password ~refresh_type
    ~resource_group_name ~server ~stream_analytics_job_name ~username
    __resource_id =
  let __resource_type =
    "azurerm_stream_analytics_reference_input_mssql"
  in
  let __resource =
    {
      database;
      delta_snapshot_query;
      full_snapshot_query;
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
