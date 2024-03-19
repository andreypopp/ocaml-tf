(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type recurrence = {
  expiration_date : string prop;  (** expiration_date *)
  frequency : string prop;  (** frequency *)
  interval : float prop option; [@option]  (** interval *)
  week_days : string prop list option; [@option]  (** week_days *)
}
[@@deriving yojson_of]
(** recurrence *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_lab_service_schedule = {
  id : string prop option; [@option]  (** id *)
  lab_id : string prop;  (** lab_id *)
  name : string prop;  (** name *)
  notes : string prop option; [@option]  (** notes *)
  start_time : string prop option; [@option]  (** start_time *)
  stop_time : string prop;  (** stop_time *)
  time_zone : string prop;  (** time_zone *)
  recurrence : recurrence list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_lab_service_schedule *)

let recurrence ?interval ?week_days ~expiration_date ~frequency () :
    recurrence =
  { expiration_date; frequency; interval; week_days }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_lab_service_schedule ?id ?notes ?start_time ?timeouts
    ~lab_id ~name ~stop_time ~time_zone ~recurrence () :
    azurerm_lab_service_schedule =
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

type t = {
  id : string prop;
  lab_id : string prop;
  name : string prop;
  notes : string prop;
  start_time : string prop;
  stop_time : string prop;
  time_zone : string prop;
}

let register ?tf_module ?id ?notes ?start_time ?timeouts ~lab_id
    ~name ~stop_time ~time_zone ~recurrence __resource_id =
  let __resource_type = "azurerm_lab_service_schedule" in
  let __resource =
    azurerm_lab_service_schedule ?id ?notes ?start_time ?timeouts
      ~lab_id ~name ~stop_time ~time_zone ~recurrence ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_lab_service_schedule __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       lab_id = Prop.computed __resource_type __resource_id "lab_id";
       name = Prop.computed __resource_type __resource_id "name";
       notes = Prop.computed __resource_type __resource_id "notes";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       stop_time =
         Prop.computed __resource_type __resource_id "stop_time";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
