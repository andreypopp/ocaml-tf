(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type pipeline = {
  name : string prop;  (** name *)
  parameters : (string * string prop) list option; [@option]
      (** parameters *)
}
[@@deriving yojson_of]
(** pipeline *)

type schedule__monthly = {
  week : float prop option; [@option]  (** week *)
  weekday : string prop;  (** weekday *)
}
[@@deriving yojson_of]
(** schedule__monthly *)

type schedule = {
  days_of_month : float prop list option; [@option]
      (** days_of_month *)
  days_of_week : string prop list option; [@option]
      (** days_of_week *)
  hours : float prop list option; [@option]  (** hours *)
  minutes : float prop list option; [@option]  (** minutes *)
  monthly : schedule__monthly list;
}
[@@deriving yojson_of]
(** schedule *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  read : string prop option; [@option]  (** read *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type azurerm_data_factory_trigger_schedule = {
  activated : bool prop option; [@option]  (** activated *)
  annotations : string prop list option; [@option]
      (** annotations *)
  data_factory_id : string prop;  (** data_factory_id *)
  description : string prop option; [@option]  (** description *)
  end_time : string prop option; [@option]  (** end_time *)
  frequency : string prop option; [@option]  (** frequency *)
  id : string prop option; [@option]  (** id *)
  interval : float prop option; [@option]  (** interval *)
  name : string prop;  (** name *)
  pipeline_name : string prop option; [@option]  (** pipeline_name *)
  pipeline_parameters : (string * string prop) list option; [@option]
      (** pipeline_parameters *)
  start_time : string prop option; [@option]  (** start_time *)
  time_zone : string prop option; [@option]  (** time_zone *)
  pipeline : pipeline list;
  schedule : schedule list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** azurerm_data_factory_trigger_schedule *)

let pipeline ?parameters ~name () : pipeline = { name; parameters }

let schedule__monthly ?week ~weekday () : schedule__monthly =
  { week; weekday }

let schedule ?days_of_month ?days_of_week ?hours ?minutes ~monthly ()
    : schedule =
  { days_of_month; days_of_week; hours; minutes; monthly }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let azurerm_data_factory_trigger_schedule ?activated ?annotations
    ?description ?end_time ?frequency ?id ?interval ?pipeline_name
    ?pipeline_parameters ?start_time ?time_zone ?timeouts
    ~data_factory_id ~name ~pipeline ~schedule () :
    azurerm_data_factory_trigger_schedule =
  {
    activated;
    annotations;
    data_factory_id;
    description;
    end_time;
    frequency;
    id;
    interval;
    name;
    pipeline_name;
    pipeline_parameters;
    start_time;
    time_zone;
    pipeline;
    schedule;
    timeouts;
  }

type t = {
  activated : bool prop;
  annotations : string list prop;
  data_factory_id : string prop;
  description : string prop;
  end_time : string prop;
  frequency : string prop;
  id : string prop;
  interval : float prop;
  name : string prop;
  pipeline_name : string prop;
  pipeline_parameters : (string * string) list prop;
  start_time : string prop;
  time_zone : string prop;
}

let register ?tf_module ?activated ?annotations ?description
    ?end_time ?frequency ?id ?interval ?pipeline_name
    ?pipeline_parameters ?start_time ?time_zone ?timeouts
    ~data_factory_id ~name ~pipeline ~schedule __resource_id =
  let __resource_type = "azurerm_data_factory_trigger_schedule" in
  let __resource =
    azurerm_data_factory_trigger_schedule ?activated ?annotations
      ?description ?end_time ?frequency ?id ?interval ?pipeline_name
      ?pipeline_parameters ?start_time ?time_zone ?timeouts
      ~data_factory_id ~name ~pipeline ~schedule ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_azurerm_data_factory_trigger_schedule __resource);
  let __resource_attributes =
    ({
       activated =
         Prop.computed __resource_type __resource_id "activated";
       annotations =
         Prop.computed __resource_type __resource_id "annotations";
       data_factory_id =
         Prop.computed __resource_type __resource_id
           "data_factory_id";
       description =
         Prop.computed __resource_type __resource_id "description";
       end_time =
         Prop.computed __resource_type __resource_id "end_time";
       frequency =
         Prop.computed __resource_type __resource_id "frequency";
       id = Prop.computed __resource_type __resource_id "id";
       interval =
         Prop.computed __resource_type __resource_id "interval";
       name = Prop.computed __resource_type __resource_id "name";
       pipeline_name =
         Prop.computed __resource_type __resource_id "pipeline_name";
       pipeline_parameters =
         Prop.computed __resource_type __resource_id
           "pipeline_parameters";
       start_time =
         Prop.computed __resource_type __resource_id "start_time";
       time_zone =
         Prop.computed __resource_type __resource_id "time_zone";
     }
      : t)
  in
  __resource_attributes
