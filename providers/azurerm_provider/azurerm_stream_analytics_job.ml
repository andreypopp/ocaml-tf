(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_job__identity = {
  identity_ids : string list option; [@option]  (** identity_ids *)
  principal_id : string;  (** principal_id *)
  tenant_id : string;  (** tenant_id *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__identity *)

type azurerm_stream_analytics_job__job_storage_account = {
  account_key : string;  (** account_key *)
  account_name : string;  (** account_name *)
  authentication_mode : string option; [@option]
      (** authentication_mode *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__job_storage_account *)

type azurerm_stream_analytics_job__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__timeouts *)

type azurerm_stream_analytics_job = {
  content_storage_policy : string option; [@option]
      (** content_storage_policy *)
  events_late_arrival_max_delay_in_seconds : float option; [@option]
      (** events_late_arrival_max_delay_in_seconds *)
  events_out_of_order_max_delay_in_seconds : float option; [@option]
      (** events_out_of_order_max_delay_in_seconds *)
  events_out_of_order_policy : string option; [@option]
      (** events_out_of_order_policy *)
  location : string;  (** location *)
  name : string;  (** name *)
  output_error_policy : string option; [@option]
      (** output_error_policy *)
  resource_group_name : string;  (** resource_group_name *)
  sku_name : string option; [@option]  (** sku_name *)
  stream_analytics_cluster_id : string option; [@option]
      (** stream_analytics_cluster_id *)
  streaming_units : float option; [@option]  (** streaming_units *)
  tags : (string * string) list option; [@option]  (** tags *)
  transformation_query : string;  (** transformation_query *)
  type_ : string option; [@option] [@key "type"]  (** type *)
  identity : azurerm_stream_analytics_job__identity list;
  job_storage_account :
    azurerm_stream_analytics_job__job_storage_account list;
  timeouts : azurerm_stream_analytics_job__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job *)

let azurerm_stream_analytics_job ?content_storage_policy
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account
    __resource_id =
  let __resource_type = "azurerm_stream_analytics_job" in
  let __resource =
    {
      content_storage_policy;
      events_late_arrival_max_delay_in_seconds;
      events_out_of_order_max_delay_in_seconds;
      events_out_of_order_policy;
      location;
      name;
      output_error_policy;
      resource_group_name;
      sku_name;
      stream_analytics_cluster_id;
      streaming_units;
      tags;
      transformation_query;
      type_;
      identity;
      job_storage_account;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_job __resource);
  ()
