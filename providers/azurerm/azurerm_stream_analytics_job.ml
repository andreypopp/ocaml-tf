(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type identity = {
  identity_ids : string prop list option; [@option]
      (** identity_ids *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** identity *)

type job_storage_account = {
  account_key : string prop;  (** account_key *)
  account_name : string prop;  (** account_name *)
  authentication_mode : string prop option; [@option]
      (** authentication_mode *)
}
[@@deriving yojson_of]
(** job_storage_account *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

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
  identity : identity list;
  job_storage_account : job_storage_account list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job *)

let identity ?identity_ids ~type_ () : identity =
  { identity_ids; type_ }

let job_storage_account ?authentication_mode ~account_key
    ~account_name () : job_storage_account =
  { account_key; account_name; authentication_mode }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_job ?compatibility_level
    ?content_storage_policy ?data_locale
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account () :
    azurerm_stream_analytics_job =
  {
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

let make ?compatibility_level ?content_storage_policy ?data_locale
    ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account __id =
  let __type = "azurerm_stream_analytics_job" in
  let __attrs =
    ({
       compatibility_level =
         Prop.computed __type __id "compatibility_level";
       content_storage_policy =
         Prop.computed __type __id "content_storage_policy";
       data_locale = Prop.computed __type __id "data_locale";
       events_late_arrival_max_delay_in_seconds =
         Prop.computed __type __id
           "events_late_arrival_max_delay_in_seconds";
       events_out_of_order_max_delay_in_seconds =
         Prop.computed __type __id
           "events_out_of_order_max_delay_in_seconds";
       events_out_of_order_policy =
         Prop.computed __type __id "events_out_of_order_policy";
       id = Prop.computed __type __id "id";
       job_id = Prop.computed __type __id "job_id";
       location = Prop.computed __type __id "location";
       name = Prop.computed __type __id "name";
       output_error_policy =
         Prop.computed __type __id "output_error_policy";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       sku_name = Prop.computed __type __id "sku_name";
       stream_analytics_cluster_id =
         Prop.computed __type __id "stream_analytics_cluster_id";
       streaming_units = Prop.computed __type __id "streaming_units";
       tags = Prop.computed __type __id "tags";
       transformation_query =
         Prop.computed __type __id "transformation_query";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_job
        (azurerm_stream_analytics_job ?compatibility_level
           ?content_storage_policy ?data_locale
           ?events_late_arrival_max_delay_in_seconds
           ?events_out_of_order_max_delay_in_seconds
           ?events_out_of_order_policy ?id ?output_error_policy
           ?sku_name ?stream_analytics_cluster_id ?streaming_units
           ?tags ?type_ ?timeouts ~location ~name
           ~resource_group_name ~transformation_query ~identity
           ~job_storage_account ());
    attrs = __attrs;
  }

let register ?tf_module ?compatibility_level ?content_storage_policy
    ?data_locale ?events_late_arrival_max_delay_in_seconds
    ?events_out_of_order_max_delay_in_seconds
    ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
    ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
    ?timeouts ~location ~name ~resource_group_name
    ~transformation_query ~identity ~job_storage_account __id =
  let (r : _ Tf_core.resource) =
    make ?compatibility_level ?content_storage_policy ?data_locale
      ?events_late_arrival_max_delay_in_seconds
      ?events_out_of_order_max_delay_in_seconds
      ?events_out_of_order_policy ?id ?output_error_policy ?sku_name
      ?stream_analytics_cluster_id ?streaming_units ?tags ?type_
      ?timeouts ~location ~name ~resource_group_name
      ~transformation_query ~identity ~job_storage_account __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
