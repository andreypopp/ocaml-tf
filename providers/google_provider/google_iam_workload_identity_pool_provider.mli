(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workload_identity_pool_provider__aws
type google_iam_workload_identity_pool_provider__oidc
type google_iam_workload_identity_pool_provider__saml
type google_iam_workload_identity_pool_provider__timeouts
type google_iam_workload_identity_pool_provider

val google_iam_workload_identity_pool_provider :
  ?attribute_condition:string ->
  ?attribute_mapping:(string * string) list ->
  ?description:string ->
  ?disabled:bool ->
  ?display_name:string ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_iam_workload_identity_pool_provider__timeouts ->
  workload_identity_pool_id:string ->
  workload_identity_pool_provider_id:string ->
  aws:google_iam_workload_identity_pool_provider__aws list ->
  oidc:google_iam_workload_identity_pool_provider__oidc list ->
  saml:google_iam_workload_identity_pool_provider__saml list ->
  string ->
  unit
