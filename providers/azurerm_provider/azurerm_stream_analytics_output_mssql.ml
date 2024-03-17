(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_mssql__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_mssql__timeouts *)

type azurerm_stream_analytics_output_mssql = {
  authentication_mode : string option; [@option]
      (** authentication_mode *)
  database : string;  (** database *)
  id : string option; [@option]  (** id *)
  max_batch_count : float option; [@option]  (** max_batch_count *)
  max_writer_count : float option; [@option]  (** max_writer_count *)
  name : string;  (** name *)
  password : string option; [@option]  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  server : string;  (** server *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  table : string;  (** table *)
  user : string option; [@option]  (** user *)
  timeouts : azurerm_stream_analytics_output_mssql__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_mssql *)

let azurerm_stream_analytics_output_mssql ?authentication_mode ?id
    ?max_batch_count ?max_writer_count ?password ?user ?timeouts
    ~database ~name ~resource_group_name ~server
    ~stream_analytics_job_name ~table __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_mssql" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_mssql __resource);
  ()
