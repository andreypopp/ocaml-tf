(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type summaries__constraint_summaries = {
  description : string prop;  (** description *)
  type_ : string prop; [@key "type"]  (** type *)
}

type summaries = {
  constraint_summaries : summaries__constraint_summaries list;
      (** constraint_summaries *)
  name : string prop;  (** name *)
  path_id : string prop;  (** path_id *)
  tags : (string * string prop) list;  (** tags *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_launch_paths

val aws_servicecatalog_launch_paths :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  unit ->
  aws_servicecatalog_launch_paths

val yojson_of_aws_servicecatalog_launch_paths :
  aws_servicecatalog_launch_paths -> json

(** RESOURCE REGISTRATION *)

type t = private {
  accept_language : string prop;
  id : string prop;
  product_id : string prop;
  summaries : summaries list prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  string ->
  t Tf_core.resource
