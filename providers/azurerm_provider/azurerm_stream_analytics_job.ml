(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_job__identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  principal_id : string prop;  (** principal_id *)
  tenant_id : string prop;  (** tenant_id *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__identity *)

type azurerm_stream_analytics_job__job_storage_account = {
  account_key : string prop;  (** account_key *)
  account_name : string prop;  (** account_name *)
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__job_storage_account *)

type azurerm_stream_analytics_job__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job__timeouts *)

type azurerm_stream_analytics_job = {
  compatibility_level : string prop option; [@option]
      (** compatibility_level *)
  content_storage_policy : string prop option; [@option]
      (** content_storage_policy *)
  data_locale : string prop option; [@option]  (** data_locale *)
  events_late_arrival_max_delay_in_seconds : float prop option;
      [@option]
      (** events_late_arrival_max_delay_in_seconds *)
  events_out_of_order_max_delay_in_seconds : float prop option;
      [@option]
      (** events_out_of_order_max_delay_in_seconds *)
  events_out_of_order_policy : string prop option; [@option]
      (** events_out_of_order_policy *)
  id : string prop option; [@option]  (** id *)
  location : string prop;  (** location *)
  name : string prop;  (** name *)
  output_error_policy : string prop option; [@option]
      (** output_error_policy *)
  resource_group_name : string prop;  (** resource_group_name *)
  sku_name : string prop option; [@option]  (** sku_name *)
  stream_analytics_cluster_id : string prop option; [@option]
      (** stream_analytics_cluster_id *)
  streaming_units : float prop option; [@option]
      (** streaming_units *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  transformation_query : string prop;  (** transformation_query *)
  type_ : string prop option; [@option] [@key "type"]  (** type *)
  identity : azurerm_stream_analytics_job__identity list;
  job_storage_account :
    azurerm_stream_analytics_job__job_storage_account list;
  timeouts : azurerm_stream_analytics_job__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job *)

type t = {
  compatibility_level : string prop;
  content_storage_policy : string prop;
  data_locale : string prop;
  events_late_arrival_max_delay_in_seconds : float prop;
  events_out_of_order_max_delay_in_seconds : float prop;
  events_out_of_order_policy : string prop;
  id : string prop;
  job_id : string prop;
  location : string prop;
  name : string prop;
  output_error_policy : string prop;
  resource_group_name : string prop;
  sku_name : string prop;
  stream_analytics_cluster_id : string prop;
  streaming_units : float prop;
  tags : (string * string) list prop;
  transformation_query : string prop;
  type_ : string prop;
}

let azurerm_stream_analytics_job ?compatibility_level
    ?content_storage_policy ?data_locale
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account
    __resource_id =
  let __resource_type = "azurerm_stream_analytics_job" in
  let __resource =
    ({
       compatibility_level;
       content_storage_policy;
       data_locale;
       events_late_arrival_max_delay_in_seconds;
       events_out_of_order_max_delay_in_seconds;
       events_out_of_order_policy;
       id;
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
      : azurerm_stream_analytics_job)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_job __resource);
  let __resource_attributes =
    ({
       compatibility_level =
         Prop.computed __resource_type __resource_id
           "compatibility_level";
       content_storage_policy =
         Prop.computed __resource_type __resource_id
           "content_storage_policy";
       data_locale =
         Prop.computed __resource_type __resource_id "data_locale";
       events_late_arrival_max_delay_in_seconds =
         Prop.computed __resource_type __resource_id
           "events_late_arrival_max_delay_in_seconds";
       events_out_of_order_max_delay_in_seconds =
         Prop.computed __resource_type __resource_id
           "events_out_of_order_max_delay_in_seconds";
       events_out_of_order_policy =
         Prop.computed __resource_type __resource_id
           "events_out_of_order_policy";
       id = Prop.computed __resource_type __resource_id "id";
       job_id = Prop.computed __resource_type __resource_id "job_id";
       location =
         Prop.computed __resource_type __resource_id "location";
       name = Prop.computed __resource_type __resource_id "name";
       output_error_policy =
         Prop.computed __resource_type __resource_id
           "output_error_policy";
       resource_group_name =
         Prop.computed __resource_type __resource_id
           "resource_group_name";
       sku_name =
         Prop.computed __resource_type __resource_id "sku_name";
       stream_analytics_cluster_id =
         Prop.computed __resource_type __resource_id
           "stream_analytics_cluster_id";
       streaming_units =
         Prop.computed __resource_type __resource_id
           "streaming_units";
       tags = Prop.computed __resource_type __resource_id "tags";
       transformation_query =
         Prop.computed __resource_type __resource_id
           "transformation_query";
       type_ = Prop.computed __resource_type __resource_id "type";
     }
      : t)
  in
  __resource_attributes
