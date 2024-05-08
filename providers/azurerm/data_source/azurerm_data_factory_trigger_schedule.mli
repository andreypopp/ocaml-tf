(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type schedule__monthly = {
  week : float prop;  (** week *)
  weekday : string prop;  (** weekday *)
}

type schedule = {
  days_of_month : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** days_of_month *)
  days_of_week : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** days_of_week *)
  hours : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** hours *)
  minutes : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** minutes *)
  monthly : schedule__monthly list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** monthly *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_data_factory_trigger_schedule

val azurerm_data_factory_trigger_schedule :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  unit ->
  azurerm_data_factory_trigger_schedule

val yojson_of_azurerm_data_factory_trigger_schedule :
  azurerm_data_factory_trigger_schedule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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
  schedule : schedule list prop;
  start_time : string prop;
  time_zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  data_factory_id:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
