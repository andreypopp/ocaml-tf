(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type filter__tag = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type filter__not__tag = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type filter__not__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type filter__not = {
  dimension : filter__not__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  tag : filter__not__tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tag *)
}

type filter__dimension = {
  name : string prop;  (** name *)
  operator : string prop;  (** operator *)
  values : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** values *)
}

type filter = {
  dimension : filter__dimension list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** dimension *)
  not : filter__not list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** not *)
  tag : filter__tag list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** tag *)
}

type notification = {
  contact_emails : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** contact_emails *)
  contact_groups : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** contact_groups *)
  contact_roles : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
      (** contact_roles *)
  enabled : bool prop;  (** enabled *)
  operator : string prop;  (** operator *)
  threshold : float prop;  (** threshold *)
  threshold_type : string prop;  (** threshold_type *)
}

type time_period = {
  end_date : string prop;  (** end_date *)
  start_date : string prop;  (** start_date *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_consumption_budget_resource_group

val azurerm_consumption_budget_resource_group :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_id:string prop ->
  unit ->
  azurerm_consumption_budget_resource_group

val yojson_of_azurerm_consumption_budget_resource_group :
  azurerm_consumption_budget_resource_group -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  amount : float prop;
  filter : filter list prop;
  id : string prop;
  name : string prop;
  notification : notification list prop;
  resource_group_id : string prop;
  time_grain : string prop;
  time_period : time_period list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  name:string prop ->
  resource_group_id:string prop ->
  string ->
  t Tf_core.resource
