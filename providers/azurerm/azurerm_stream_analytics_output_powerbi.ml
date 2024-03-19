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

type azurerm_stream_analytics_output_powerbi = {
  dataset : string prop;  (** dataset *)
  group_id : string prop;  (** group_id *)
  group_name : string prop;  (** group_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  table : string prop;  (** table *)
  token_user_display_name : string prop option; [@option]
      (** token_user_display_name *)
  token_user_principal_name : string prop option; [@option]
      (** token_user_principal_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_powerbi *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_powerbi ?id
    ?token_user_display_name ?token_user_principal_name ?timeouts
    ~dataset ~group_id ~group_name ~name ~stream_analytics_job_id
    ~table () : azurerm_stream_analytics_output_powerbi =
  {
    dataset;
    group_id;
    group_name;
    id;
    name;
    stream_analytics_job_id;
    table;
    token_user_display_name;
    token_user_principal_name;
    timeouts;
  }

type t = {
  dataset : string prop;
  group_id : string prop;
  group_name : string prop;
  id : string prop;
  name : string prop;
  stream_analytics_job_id : string prop;
  table : string prop;
  token_user_display_name : string prop;
  token_user_principal_name : string prop;
}

let register ?tf_module ?id ?token_user_display_name
    ?token_user_principal_name ?timeouts ~dataset ~group_id
    ~group_name ~name ~stream_analytics_job_id ~table __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_powerbi" in
  let __resource =
    azurerm_stream_analytics_output_powerbi ?id
      ?token_user_display_name ?token_user_principal_name ?timeouts
      ~dataset ~group_id ~group_name ~name ~stream_analytics_job_id
      ~table ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_powerbi __resource);
  let __resource_attributes =
    ({
       dataset =
         Prop.computed __resource_type __resource_id "dataset";
       group_id =
         Prop.computed __resource_type __resource_id "group_id";
       group_name =
         Prop.computed __resource_type __resource_id "group_name";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       stream_analytics_job_id =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_id";
       table = Prop.computed __resource_type __resource_id "table";
       token_user_display_name =
         Prop.computed __resource_type __resource_id
           "token_user_display_name";
       token_user_principal_name =
         Prop.computed __resource_type __resource_id
           "token_user_principal_name";
     }
      : t)
  in
  __resource_attributes
