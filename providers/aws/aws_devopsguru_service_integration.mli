(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type kms_server_side_encryption

val kms_server_side_encryption :
  ?kms_key_id:string prop ->
  ?opt_in_status:string prop ->
  ?type_:string prop ->
  unit ->
  kms_server_side_encryption

type logs_anomaly_detection

val logs_anomaly_detection :
  ?opt_in_status:string prop -> unit -> logs_anomaly_detection

type ops_center

val ops_center : ?opt_in_status:string prop -> unit -> ops_center

type aws_devopsguru_service_integration

val aws_devopsguru_service_integration :
  ?kms_server_side_encryption:kms_server_side_encryption list ->
  ?logs_anomaly_detection:logs_anomaly_detection list ->
  ?ops_center:ops_center list ->
  unit ->
  aws_devopsguru_service_integration

val yojson_of_aws_devopsguru_service_integration :
  aws_devopsguru_service_integration -> json

(** RESOURCE REGISTRATION *)

type t = private { tf_name : string; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?kms_server_side_encryption:kms_server_side_encryption list ->
  ?logs_anomaly_detection:logs_anomaly_detection list ->
  ?ops_center:ops_center list ->
  string ->
  t

val make :
  ?kms_server_side_encryption:kms_server_side_encryption list ->
  ?logs_anomaly_detection:logs_anomaly_detection list ->
  ?ops_center:ops_center list ->
  string ->
  t Tf_core.resource
