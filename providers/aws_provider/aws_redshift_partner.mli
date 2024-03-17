(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshift_partner

type t = private {
  account_id : string prop;
  cluster_identifier : string prop;
  database_name : string prop;
  id : string prop;
  partner_name : string prop;
  status : string prop;
  status_message : string prop;
}

val aws_redshift_partner :
  ?id:string prop ->
  account_id:string prop ->
  cluster_identifier:string prop ->
  database_name:string prop ->
  partner_name:string prop ->
  string ->
  t
