(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_iam_workforce_pool_provider__oidc__client_secret__value
type google_iam_workforce_pool_provider__oidc__client_secret
type google_iam_workforce_pool_provider__oidc__web_sso_config
type google_iam_workforce_pool_provider__oidc
type google_iam_workforce_pool_provider__saml
type google_iam_workforce_pool_provider__timeouts
type google_iam_workforce_pool_provider

type t = private {
  attribute_condition : string prop;
  attribute_mapping : (string * string) list prop;
  description : string prop;
  disabled : bool prop;
  display_name : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  provider_id : string prop;
  state : string prop;
  workforce_pool_id : string prop;
}

val google_iam_workforce_pool_provider :
  ?attribute_condition:string prop ->
  ?attribute_mapping:(string * string prop) list ->
  ?description:string prop ->
  ?disabled:bool prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?timeouts:google_iam_workforce_pool_provider__timeouts ->
  location:string prop ->
  provider_id:string prop ->
  workforce_pool_id:string prop ->
  oidc:google_iam_workforce_pool_provider__oidc list ->
  saml:google_iam_workforce_pool_provider__saml list ->
  string ->
  t
