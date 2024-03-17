(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_stream_analytics_job_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job_schedule__timeouts *)

type azurerm_stream_analytics_job_schedule = {
  id : string option; [@option]  (** id *)
  start_mode : string;  (** start_mode *)
  start_time : string option; [@option]  (** start_time *)
  stream_analytics_job_id : string;  (** stream_analytics_job_id *)
  timeouts : azurerm_stream_analytics_job_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_stream_analytics_job_schedule *)

let azurerm_stream_analytics_job_schedule ?id ?start_time ?timeouts
    ~start_mode ~stream_analytics_job_id __resource_id =
  let __resource_type = "azurerm_stream_analytics_job_schedule" in
  let __resource =
    { id; start_mode; start_time; stream_analytics_job_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_stream_analytics_job_schedule __resource);
  ()
