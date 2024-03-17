(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_synapse__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_synapse__timeouts *)

type azurerm_stream_analytics_output_synapse = {
  database : string;  (** database *)
  name : string;  (** name *)
  password : string;  (** password *)
  resource_group_name : string;  (** resource_group_name *)
  server : string;  (** server *)
  stream_analytics_job_name : string;
      (** stream_analytics_job_name *)
  table : string;  (** table *)
  user : string;  (** user *)
  timeouts : azurerm_stream_analytics_output_synapse__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_synapse *)

let azurerm_stream_analytics_output_synapse ?timeouts ~database ~name
    ~password ~resource_group_name ~server ~stream_analytics_job_name
    ~table ~user __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_synapse" in
  let __resource =
    {
      database;
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
    (yojson_of_azurerm_stream_analytics_output_synapse __resource);
  ()
