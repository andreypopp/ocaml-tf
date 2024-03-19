(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_organizations_delegated_administrator

val aws_organizations_delegated_administrator :
  ?id:string prop ->
  account_id:string prop ->
  service_principal:string prop ->
  unit ->
  aws_organizations_delegated_administrator

val yojson_of_aws_organizations_delegated_administrator :
  aws_organizations_delegated_administrator -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_id:string prop ->
  service_principal:string prop ->
  string ->
  t
