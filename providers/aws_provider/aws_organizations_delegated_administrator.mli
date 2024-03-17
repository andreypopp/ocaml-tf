(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_delegated_administrator

type t = private {
  account_id : string prop;
  arn : string prop;
  delegation_enabled_date : string prop;
  email : string prop;
  id : string prop;
  joined_method : string prop;
  joined_timestamp : string prop;
  name : string prop;
  service_principal : string prop;
  status : string prop;
}

val aws_organizations_delegated_administrator :
  ?id:string prop ->
  account_id:string prop ->
  service_principal:string prop ->
  string ->
  t
