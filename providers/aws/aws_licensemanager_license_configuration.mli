(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_licensemanager_license_configuration

val aws_licensemanager_license_configuration :
  ?description:string prop ->
  ?id:string prop ->
  ?license_count:float prop ->
  ?license_count_hard_limit:bool prop ->
  ?license_rules:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  license_counting_type:string prop ->
  name:string prop ->
  unit ->
  aws_licensemanager_license_configuration

val yojson_of_aws_licensemanager_license_configuration :
  aws_licensemanager_license_configuration -> json

(** RESOURCE REGISTRATION *)

type t = private {
  arn : string prop;
  description : string prop;
  id : string prop;
  license_count : float prop;
  license_count_hard_limit : bool prop;
  license_counting_type : string prop;
  license_rules : string list prop;
  name : string prop;
  owner_account_id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?license_count:float prop ->
  ?license_count_hard_limit:bool prop ->
  ?license_rules:string prop list ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  license_counting_type:string prop ->
  name:string prop ->
  string ->
  t
