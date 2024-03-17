(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_auditmanager_framework_share

type t = private {
  comment : string prop;
  destination_account : string prop;
  destination_region : string prop;
  framework_id : string prop;
  id : string prop;
  status : string prop;
}

val aws_auditmanager_framework_share :
  ?comment:string prop ->
  destination_account:string prop ->
  destination_region:string prop ->
  framework_id:string prop ->
  string ->
  t
