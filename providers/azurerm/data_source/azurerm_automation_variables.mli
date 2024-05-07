(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type bool_ = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : bool prop;  (** value *)
}

type datetime = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type encrypted = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type int_ = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : float prop;  (** value *)
}

type null = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type object_ = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type string_ = {
  description : string prop;  (** description *)
  encrypted : bool prop;  (** encrypted *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type azurerm_automation_variables

val azurerm_automation_variables :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  unit ->
  azurerm_automation_variables

val yojson_of_azurerm_automation_variables :
  azurerm_automation_variables -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  automation_account_id : string prop;
  bool_ : bool_ list prop;
  datetime : datetime list prop;
  encrypted : encrypted list prop;
  id : string prop;
  int_ : int_ list prop;
  null : null list prop;
  object_ : object_ list prop;
  string_ : string_ list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  automation_account_id:string prop ->
  string ->
  t Tf_core.resource
