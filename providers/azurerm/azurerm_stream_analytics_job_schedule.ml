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

type azurerm_stream_analytics_job_schedule = {
  id : string prop option; [@option]  (** id *)
  start_mode : string prop;  (** start_mode *)
  start_time : string prop option; [@option]  (** start_time *)
  stream_analytics_job_id : string prop;
      (** stream_analytics_job_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job_schedule *)

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_stream_analytics_job_schedule ?id ?start_time ?timeouts
    ~start_mode ~stream_analytics_job_id () :
    azurerm_stream_analytics_job_schedule =
  { id; start_mode; start_time; stream_analytics_job_id; timeouts }

type t = {
  id : string prop;
  last_output_time : string prop;
  start_mode : string prop;
  start_time : string prop;
  stream_analytics_job_id : string prop;
}

let make ?id ?start_time ?timeouts ~start_mode
    ~stream_analytics_job_id __id =
  let __type = "azurerm_stream_analytics_job_schedule" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       last_output_time =
         Prop.computed __type __id "last_output_time";
       start_mode = Prop.computed __type __id "start_mode";
       start_time = Prop.computed __type __id "start_time";
       stream_analytics_job_id =
         Prop.computed __type __id "stream_analytics_job_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_stream_analytics_job_schedule
        (azurerm_stream_analytics_job_schedule ?id ?start_time
           ?timeouts ~start_mode ~stream_analytics_job_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?start_time ?timeouts ~start_mode
    ~stream_analytics_job_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?start_time ?timeouts ~start_mode
      ~stream_analytics_job_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
