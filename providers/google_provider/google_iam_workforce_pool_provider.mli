(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workforce_pool_provider__oidc__client_secret__value
type google_iam_workforce_pool_provider__oidc__client_secret
type google_iam_workforce_pool_provider__oidc__web_sso_config
type google_iam_workforce_pool_provider__oidc
type google_iam_workforce_pool_provider__saml
type google_iam_workforce_pool_provider__timeouts
type google_iam_workforce_pool_provider

val google_iam_workforce_pool_provider :
  ?attribute_condition:string ->
  ?attribute_mapping:(string * string) list ->
  ?description:string ->
  ?disabled:bool ->
  ?display_name:string ->
  ?timeouts:google_iam_workforce_pool_provider__timeouts ->
  location:string ->
  provider_id:string ->
  workforce_pool_id:string ->
  oidc:google_iam_workforce_pool_provider__oidc list ->
  saml:google_iam_workforce_pool_provider__saml list ->
  string ->
  unit
