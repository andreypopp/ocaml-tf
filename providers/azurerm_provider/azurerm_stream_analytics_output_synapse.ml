(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_synapse__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_synapse__timeouts *)

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
  timeouts : azurerm_stream_analytics_output_synapse__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_synapse *)

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

let azurerm_stream_analytics_output_synapse ?id ?timeouts ~database
    ~name ~password ~resource_group_name ~server
    ~stream_analytics_job_name ~table ~user __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_synapse" in
  let __resource =
    ({
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
      : azurerm_stream_analytics_output_synapse)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_synapse __resource);
  let __resource_attributes =
    ({
       database =
         Prop.computed __resource_type __resource_id "database";
       id = Prop.computed __resource_type __resource_id "id";
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
