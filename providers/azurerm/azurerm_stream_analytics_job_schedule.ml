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

let register ?tf_module ?id ?start_time ?timeouts ~start_mode
    ~stream_analytics_job_id __resource_id =
  let __resource_type = "azurerm_stream_analytics_job_schedule" in
  let __resource =
    azurerm_stream_analytics_job_schedule ?id ?start_time ?timeouts
      ~start_mode ~stream_analytics_job_id ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_job_schedule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       last_output_time =
         Prop.computed __resource_type __resource_id
           "last_output_time";
       start_mode =
         Prop.computed __resource_type __resource_id "start_mode";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       stream_analytics_job_id =
         Prop.computed __resource_type __resource_id
           "stream_analytics_job_id";
     }
      : t)
  in
  __resource_attributes
