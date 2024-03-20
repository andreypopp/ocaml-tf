(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input = {
  configuration_parameter : bool prop option; [@option]
      (** configuration_parameter *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** input *)

type output = { type_ : string prop [@key "type"]  (** type *) }
[@@deriving yojson_of]
(** output *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_stream_analytics_function_javascript_udf = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  resource_group_name : string prop;  (** resource_group_name *)
  script : string prop;  (** script *)
  stream_analytics_job_name : string prop;
      (** stream_analytics_job_name *)
  input : input list;
  output : output list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_udf *)

let input ?configuration_parameter ~type_ () : input =
  { configuration_parameter; type_ }

let output ~type_ () : output = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_function_javascript_udf ?id ?timeouts
    ~name ~resource_group_name ~script ~stream_analytics_job_name
    ~input ~output () :
    azurerm_stream_analytics_function_javascript_udf =
  {
    id;
    name;
    resource_group_name;
    script;
    stream_analytics_job_name;
    input;
    output;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  resource_group_name : string prop;
  script : string prop;
  stream_analytics_job_name : string prop;
}

let make ?id ?timeouts ~name ~resource_group_name ~script
    ~stream_analytics_job_name ~input ~output __id =
  let __type = "azurerm_stream_analytics_function_javascript_udf" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource_group_name =
         Prop.computed __type __id "resource_group_name";
       script = Prop.computed __type __id "script";
       stream_analytics_job_name =
         Prop.computed __type __id "stream_analytics_job_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_function_javascript_udf
        (azurerm_stream_analytics_function_javascript_udf ?id
           ?timeouts ~name ~resource_group_name ~script
           ~stream_analytics_job_name ~input ~output ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~resource_group_name
    ~script ~stream_analytics_job_name ~input ~output __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~resource_group_name ~script
      ~stream_analytics_job_name ~input ~output __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
