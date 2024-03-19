(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_redshift_partner

val aws_redshift_partner :
  ?id:string prop ->
  account_id:string prop ->
  cluster_identifier:string prop ->
  database_name:string prop ->
  partner_name:string prop ->
  unit ->
  aws_redshift_partner

val yojson_of_aws_redshift_partner : aws_redshift_partner -> json

(** RESOURCE REGISTRATION *)

type t = private {
  account_id : string prop;
  cluster_identifier : string prop;
  database_name : string prop;
  id : string prop;
  partner_name : string prop;
  status : string prop;
  status_message : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  cluster_identifier:string prop ->
  database_name:string prop ->
  partner_name:string prop ->
  string ->
  t
