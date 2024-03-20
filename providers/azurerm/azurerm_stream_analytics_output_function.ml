(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_output_function = {
  api_key : string prop;  (** api_key *)
  batch_max_count : float prop option; [@option]
      (** batch_max_count *)
  batch_max_in_bytes : float prop option; [@option]
      (** batch_max_in_bytes *)
  function_app : string prop;  (** function_app *)
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_output_function *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_output_function ?batch_max_count
    ?batch_max_in_bytes ?id ?timeouts ~api_key ~function_app
    ~function_name ~name ~resource_group_name
    ~stream_analytics_job_name () :
    azurerm_stream_analytics_output_function =
  {
    api_key;
    batch_max_count;
    batch_max_in_bytes;
    function_app;
    function_name;
    id;
    name;
    resource_group_name;
    stream_analytics_job_name;
    timeouts;
  }

type t = {
  api_key : string prop;
  batch_max_count : float prop;
  batch_max_in_bytes : float prop;
  function_app : string prop;
  function_name : string prop;
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  stream_analytics_job_name : string prop;
}

let make ?batch_max_count ?batch_max_in_bytes ?id ?timeouts ~api_key
    ~function_app ~function_name ~name ~resource_group_name
    ~stream_analytics_job_name __id =
  let __type = "azurerm_stream_analytics_output_function" in
  let __attrs =
    ({
       api_key = Prop.computed __type __id "api_key";
       batch_max_count = Prop.computed __type __id "batch_max_count";
       batch_max_in_bytes =
         Prop.computed __type __id "batch_max_in_bytes";
       function_app = Prop.computed __type __id "function_app";
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_output_function
        (azurerm_stream_analytics_output_function ?batch_max_count
           ?batch_max_in_bytes ?id ?timeouts ~api_key ~function_app
           ~function_name ~name ~resource_group_name
           ~stream_analytics_job_name ());
    attrs = __attrs;
  }

let register ?tf_module ?batch_max_count ?batch_max_in_bytes ?id
    ?timeouts ~api_key ~function_app ~function_name ~name
    ~resource_group_name ~stream_analytics_job_name __id =
  let (r : _ Tf_core.resource) =
    make ?batch_max_count ?batch_max_in_bytes ?id ?timeouts ~api_key
      ~function_app ~function_name ~name ~resource_group_name
      ~stream_analytics_job_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
