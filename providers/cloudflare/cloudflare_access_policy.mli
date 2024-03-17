(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type cloudflare_access_policy__approval_group
type cloudflare_access_policy__exclude__auth_context
type cloudflare_access_policy__exclude__azure
type cloudflare_access_policy__exclude__external_evaluation
type cloudflare_access_policy__exclude__github
type cloudflare_access_policy__exclude__gsuite
type cloudflare_access_policy__exclude__okta
type cloudflare_access_policy__exclude__saml
type cloudflare_access_policy__exclude
type cloudflare_access_policy__include__auth_context
type cloudflare_access_policy__include__azure
type cloudflare_access_policy__include__external_evaluation
type cloudflare_access_policy__include__github
type cloudflare_access_policy__include__gsuite
type cloudflare_access_policy__include__okta
type cloudflare_access_policy__include__saml
type cloudflare_access_policy__include
type cloudflare_access_policy__require__auth_context
type cloudflare_access_policy__require__azure
type cloudflare_access_policy__require__external_evaluation
type cloudflare_access_policy__require__github
type cloudflare_access_policy__require__gsuite
type cloudflare_access_policy__require__okta
type cloudflare_access_policy__require__saml
type cloudflare_access_policy__require
type cloudflare_access_policy

type t = private {
  account_id : string prop;
  application_id : string prop;
  approval_required : bool prop;
  decision : string prop;
  id : string prop;
  isolation_required : bool prop;
  name : string prop;
  precedence : float prop;
  purpose_justification_prompt : string prop;
  purpose_justification_required : bool prop;
  session_duration : string prop;
  zone_id : string prop;
}

val cloudflare_access_policy :
  ?account_id:string prop ->
  ?approval_required:bool prop ->
  ?id:string prop ->
  ?isolation_required:bool prop ->
  ?purpose_justification_prompt:string prop ->
  ?purpose_justification_required:bool prop ->
  ?session_duration:string prop ->
  ?zone_id:string prop ->
  application_id:string prop ->
  decision:string prop ->
  name:string prop ->
  precedence:float prop ->
  approval_group:cloudflare_access_policy__approval_group list ->
  exclude:cloudflare_access_policy__exclude list ->
  include_:cloudflare_access_policy__include list ->
  require:cloudflare_access_policy__require list ->
  string ->
  t
