(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type identity_constraints__cel_expression

val identity_constraints__cel_expression :
  ?description:string prop ->
  ?expression:string prop ->
  ?location:string prop ->
  ?title:string prop ->
  unit ->
  identity_constraints__cel_expression

type identity_constraints

val identity_constraints :
  ?cel_expression:identity_constraints__cel_expression list ->
  allow_subject_alt_names_passthrough:bool prop ->
  allow_subject_passthrough:bool prop ->
  unit ->
  identity_constraints

type passthrough_extensions__additional_extensions

val passthrough_extensions__additional_extensions :
  object_id_path:float prop list ->
  unit ->
  passthrough_extensions__additional_extensions

type passthrough_extensions

val passthrough_extensions :
  ?known_extensions:string prop list ->
  ?additional_extensions:
    passthrough_extensions__additional_extensions list ->
  unit ->
  passthrough_extensions

type predefined_values__additional_extensions__object_id

val predefined_values__additional_extensions__object_id :
  object_id_path:float prop list ->
  unit ->
  predefined_values__additional_extensions__object_id

type predefined_values__additional_extensions

val predefined_values__additional_extensions :
  ?critical:bool prop ->
  value:string prop ->
  object_id:predefined_values__additional_extensions__object_id list ->
  unit ->
  predefined_values__additional_extensions

type predefined_values__ca_options

val predefined_values__ca_options :
  ?is_ca:bool prop ->
  ?max_issuer_path_length:float prop ->
  unit ->
  predefined_values__ca_options

type predefined_values__key_usage__base_key_usage

val predefined_values__key_usage__base_key_usage :
  ?cert_sign:bool prop ->
  ?content_commitment:bool prop ->
  ?crl_sign:bool prop ->
  ?data_encipherment:bool prop ->
  ?decipher_only:bool prop ->
  ?digital_signature:bool prop ->
  ?encipher_only:bool prop ->
  ?key_agreement:bool prop ->
  ?key_encipherment:bool prop ->
  unit ->
  predefined_values__key_usage__base_key_usage

type predefined_values__key_usage__extended_key_usage

val predefined_values__key_usage__extended_key_usage :
  ?client_auth:bool prop ->
  ?code_signing:bool prop ->
  ?email_protection:bool prop ->
  ?ocsp_signing:bool prop ->
  ?server_auth:bool prop ->
  ?time_stamping:bool prop ->
  unit ->
  predefined_values__key_usage__extended_key_usage

type predefined_values__key_usage__unknown_extended_key_usages

val predefined_values__key_usage__unknown_extended_key_usages :
  object_id_path:float prop list ->
  unit ->
  predefined_values__key_usage__unknown_extended_key_usages

type predefined_values__key_usage

val predefined_values__key_usage :
  ?base_key_usage:predefined_values__key_usage__base_key_usage list ->
  ?extended_key_usage:
    predefined_values__key_usage__extended_key_usage list ->
  ?unknown_extended_key_usages:
    predefined_values__key_usage__unknown_extended_key_usages list ->
  unit ->
  predefined_values__key_usage

type predefined_values__policy_ids

val predefined_values__policy_ids :
  object_id_path:float prop list ->
  unit ->
  predefined_values__policy_ids

type predefined_values

val predefined_values :
  ?aia_ocsp_servers:string prop list ->
  ?additional_extensions:
    predefined_values__additional_extensions list ->
  ?ca_options:predefined_values__ca_options list ->
  ?key_usage:predefined_values__key_usage list ->
  ?policy_ids:predefined_values__policy_ids list ->
  unit ->
  predefined_values

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_privateca_certificate_template

val google_privateca_certificate_template :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?maximum_lifetime:string prop ->
  ?project:string prop ->
  ?identity_constraints:identity_constraints list ->
  ?passthrough_extensions:passthrough_extensions list ->
  ?predefined_values:predefined_values list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  unit ->
  google_privateca_certificate_template

val yojson_of_google_privateca_certificate_template :
  google_privateca_certificate_template -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  maximum_lifetime : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?maximum_lifetime:string prop ->
  ?project:string prop ->
  ?identity_constraints:identity_constraints list ->
  ?passthrough_extensions:passthrough_extensions list ->
  ?predefined_values:predefined_values list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?maximum_lifetime:string prop ->
  ?project:string prop ->
  ?identity_constraints:identity_constraints list ->
  ?passthrough_extensions:passthrough_extensions list ->
  ?predefined_values:predefined_values list ->
  ?timeouts:timeouts ->
  location:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
