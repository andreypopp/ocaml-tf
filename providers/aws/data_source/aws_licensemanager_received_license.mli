(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type consumption_configuration__provisional_configuration = {
  max_time_to_live_in_minutes : float prop;
      (** max_time_to_live_in_minutes *)
}

type consumption_configuration__borrow_configuration = {
  allow_early_check_in : bool prop;  (** allow_early_check_in *)
  max_time_to_live_in_minutes : float prop;
      (** max_time_to_live_in_minutes *)
}

type consumption_configuration = {
  borrow_configuration :
    consumption_configuration__borrow_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** borrow_configuration *)
  provisional_configuration :
    consumption_configuration__provisional_configuration list;
      [@default []] [@yojson_drop_default ( = )]
      (** provisional_configuration *)
  renew_type : string prop;  (** renew_type *)
}

type entitlements = {
  allow_check_in : bool prop;  (** allow_check_in *)
  max_count : float prop;  (** max_count *)
  name : string prop;  (** name *)
  unit : string prop;  (** unit *)
  value : string prop;  (** value *)
}

type issuer = {
  key_fingerprint : string prop;  (** key_fingerprint *)
  name : string prop;  (** name *)
  sign_key : string prop;  (** sign_key *)
}

type license_metadata = {
  name : string prop;  (** name *)
  value : string prop;  (** value *)
}

type received_metadata = {
  allowed_operations : string prop list;
      [@default []] [@yojson_drop_default ( = )]
      (** allowed_operations *)
  received_status : string prop;  (** received_status *)
  received_status_reason : string prop;  (** received_status_reason *)
}

type validity = {
  begin_ : string prop; [@key "begin"]  (** begin *)
  end_ : string prop; [@key "end"]  (** end *)
}

type aws_licensemanager_received_license

val aws_licensemanager_received_license :
  ?id:string prop ->
  license_arn:string prop ->
  unit ->
  aws_licensemanager_received_license

val yojson_of_aws_licensemanager_received_license :
  aws_licensemanager_received_license -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  beneficiary : string prop;
  consumption_configuration : consumption_configuration list prop;
  create_time : string prop;
  entitlements : entitlements list prop;
  home_region : string prop;
  id : string prop;
  issuer : issuer list prop;
  license_arn : string prop;
  license_metadata : license_metadata list prop;
  license_name : string prop;
  product_name : string prop;
  product_sku : string prop;
  received_metadata : received_metadata list prop;
  status : string prop;
  validity : validity list prop;
  version : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  license_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  license_arn:string prop ->
  string ->
  t Tf_core.resource
