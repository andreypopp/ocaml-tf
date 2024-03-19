(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_auditmanager_framework_share

val aws_auditmanager_framework_share :
  ?comment:string prop ->
  destination_account:string prop ->
  destination_region:string prop ->
  framework_id:string prop ->
  unit ->
  aws_auditmanager_framework_share

val yojson_of_aws_auditmanager_framework_share :
  aws_auditmanager_framework_share -> json

(** RESOURCE REGISTRATION *)

type t = private {
  comment : string prop;
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
  id : string prop;
  status : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?comment:string prop ->
  destination_account:string prop ->
  destination_region:string prop ->
  framework_id:string prop ->
  string ->
  t
