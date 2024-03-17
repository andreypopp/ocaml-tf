(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_privateca_certificate_template__identity_constraints__cel_expression

type google_privateca_certificate_template__identity_constraints

type google_privateca_certificate_template__passthrough_extensions__additional_extensions

type google_privateca_certificate_template__passthrough_extensions

type google_privateca_certificate_template__predefined_values__additional_extensions__object_id

type google_privateca_certificate_template__predefined_values__additional_extensions

type google_privateca_certificate_template__predefined_values__ca_options

type google_privateca_certificate_template__predefined_values__key_usage__base_key_usage

type google_privateca_certificate_template__predefined_values__key_usage__extended_key_usage

type google_privateca_certificate_template__predefined_values__key_usage__unknown_extended_key_usages

type google_privateca_certificate_template__predefined_values__key_usage

type google_privateca_certificate_template__predefined_values__policy_ids

type google_privateca_certificate_template__predefined_values
type google_privateca_certificate_template__timeouts
type google_privateca_certificate_template

type t = private {
  create_time : string prop;
  description : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  name : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val google_privateca_certificate_template :
  ?description:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?project:string prop ->
  ?timeouts:google_privateca_certificate_template__timeouts ->
  location:string prop ->
  name:string prop ->
  identity_constraints:
    google_privateca_certificate_template__identity_constraints list ->
  passthrough_extensions:
    google_privateca_certificate_template__passthrough_extensions
    list ->
  predefined_values:
    google_privateca_certificate_template__predefined_values list ->
  string ->
  t
