(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type daily_schedule = {
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}

type hourly_schedule = {
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}

type monthly_schedule = {
  days_of_month : float prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** days_of_month *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}

type weekly_schedule = {
  days_of_week : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** days_of_week *)
  hour : float prop;  (** hour *)
  minute : float prop;  (** minute *)
  snapshots_to_keep : float prop;  (** snapshots_to_keep *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_netapp_snapshot_policy

val azurerm_netapp_snapshot_policy :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  unit ->
  azurerm_netapp_snapshot_policy

val yojson_of_azurerm_netapp_snapshot_policy :
  azurerm_netapp_snapshot_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_name : string prop;
  daily_schedule : daily_schedule list prop;
  enabled : bool prop;
  hourly_schedule : hourly_schedule list prop;
  id : string prop;
  location : string prop;
  monthly_schedule : monthly_schedule list prop;
  name : string prop;
  resource_group_name : string prop;
  tags : string Tf_core.assoc prop;
  weekly_schedule : weekly_schedule list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  account_name:string prop ->
  name:string prop ->
  resource_group_name:string prop ->
  string ->
  t Tf_core.resource
