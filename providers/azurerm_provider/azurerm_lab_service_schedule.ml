(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type azurerm_lab_service_schedule__recurrence = {
  expiration_date : string prop;  (** expiration_date *)
  frequency : string prop;  (** frequency *)
  interval : float prop option; [@option]  (** interval *)
  week_days : string prop list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule__recurrence *)

type azurerm_lab_service_schedule__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule__timeouts *)

type azurerm_lab_service_schedule = {
  id : string prop option; [@option]  (** id *)
  lab_id : string prop;  (** lab_id *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  start_time : string prop option; [@option]  (** start_time *)
  stop_time : string prop;  (** stop_time *)
  time_zone : string prop;  (** time_zone *)
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
