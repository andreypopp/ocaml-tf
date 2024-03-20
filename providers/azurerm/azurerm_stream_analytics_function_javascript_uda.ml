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

type azurerm_stream_analytics_function_javascript_uda = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  script : string prop;  (** script *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  input : input list;
  output : output list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_function_javascript_uda *)

let input ?configuration_parameter ~type_ () : input =
  { configuration_parameter; type_ }

let output ~type_ () : output = { type_ }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_function_javascript_uda ?id ?timeouts
    ~name ~script ~stream_analytics_job_id ~input ~output () :
    azurerm_stream_analytics_function_javascript_uda =
  {
    id;
    name;
    script;
    stream_analytics_job_id;
    input;
    output;
    timeouts;
  }

type t = {
  id : string prop;
  name : string prop;
  script : string prop;
  stream_analytics_job_id : string prop;
}

let make ?id ?timeouts ~name ~script ~stream_analytics_job_id ~input
    ~output __id =
  let __type = "azurerm_stream_analytics_function_javascript_uda" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       script = Prop.computed __type __id "script";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_function_javascript_uda
        (azurerm_stream_analytics_function_javascript_uda ?id
           ?timeouts ~name ~script ~stream_analytics_job_id ~input
           ~output ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~name ~script
    ~stream_analytics_job_id ~input ~output __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~name ~script ~stream_analytics_job_id ~input
      ~output __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
