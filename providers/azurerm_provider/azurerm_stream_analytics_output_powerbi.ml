(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_output_powerbi__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_powerbi__timeouts *)

type azurerm_stream_analytics_output_powerbi = {
  dataset : string;  (** dataset *)
  group_id : string;  (** group_id *)
  group_name : string;  (** group_name *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  stream_analytics_job_id : string;  (** stream_analytics_job_id *)
  table : string;  (** table *)
  token_user_display_name : string option; [@option]
      (** token_user_display_name *)
  token_user_principal_name : string option; [@option]
      (** token_user_principal_name *)
  timeouts : azurerm_stream_analytics_output_powerbi__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_powerbi *)

let azurerm_stream_analytics_output_powerbi ?id
    ?token_user_display_name ?token_user_principal_name ?timeouts
    ~dataset ~group_id ~group_name ~name ~stream_analytics_job_id
    ~table __resource_id =
  let __resource_type = "azurerm_stream_analytics_output_powerbi" in
  let __resource =
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_output_powerbi __resource);
  ()
