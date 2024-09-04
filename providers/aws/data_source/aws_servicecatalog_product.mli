(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_product

val aws_servicecatalog_product :
  ?accept_language:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  id:string prop ->
  unit ->
  aws_servicecatalog_product

val yojson_of_aws_servicecatalog_product :
  aws_servicecatalog_product -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accept_language : string prop;
  arn : string prop;
  created_time : string prop;
  description : string prop;
  distributor : string prop;
  has_default_path : bool prop;
  id : string prop;
  name : string prop;
  owner : string prop;
  status : string prop;
  support_description : string prop;
  support_email : string prop;
  support_url : string prop;
  tags : string Tf_core.assoc prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?accept_language:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t

val make :
  ?accept_language:string prop ->
  ?tags:string prop Tf_core.assoc ->
  ?timeouts:timeouts ->
  id:string prop ->
  string ->
  t Tf_core.resource
