(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type provisioning_artifact_details = {
  active : bool prop;  (** active *)
  created_time : string prop;  (** created_time *)
  description : string prop;  (** description *)
  guidance : string prop;  (** guidance *)
  id : string prop;  (** id *)
  name : string prop;  (** name *)
  type_ : string prop; [@key "type"]  (** type *)
}

type timeouts

val timeouts : ?read:string prop -> unit -> timeouts

type aws_servicecatalog_provisioning_artifacts

val aws_servicecatalog_provisioning_artifacts :
  ?accept_language:string prop ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  product_id:string prop ->
  unit ->
  aws_servicecatalog_provisioning_artifacts

val yojson_of_aws_servicecatalog_provisioning_artifacts :
  aws_servicecatalog_provisioning_artifacts -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  accept_language : string prop;
  id : string prop;
  product_id : string prop;
  provisioning_artifact_details :
    provisioning_artifact_details list prop;
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
