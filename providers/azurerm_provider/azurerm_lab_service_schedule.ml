(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_schedule__recurrence = {
  expiration_date : string;  (** expiration_date *)
  frequency : string;  (** frequency *)
  interval : float option; [@option]  (** interval *)
  week_days : string list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule__recurrence *)

type azurerm_lab_service_schedule__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  read : string option; [@option]  (** read *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule__timeouts *)

type azurerm_lab_service_schedule = {
  id : string option; [@option]  (** id *)
  lab_id : string;  (** lab_id *)
  name : string;  (** name *)
  notes : string option; [@option]  (** notes *)
  start_time : string option; [@option]  (** start_time *)
  stop_time : string;  (** stop_time *)
  time_zone : string;  (** time_zone *)
  recurrence : azurerm_lab_service_schedule__recurrence list;
  timeouts : azurerm_lab_service_schedule__timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule *)

let azurerm_lab_service_schedule ?id ?notes ?start_time ?timeouts
    ~lab_id ~name ~stop_time ~time_zone ~recurrence __resource_id =
  let __resource_type = "azurerm_lab_service_schedule" in
  let __resource =
    {
      id;
      lab_id;
      name;
      notes;
      start_time;
      stop_time;
      time_zone;
      recurrence;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_schedule __resource);
  ()
