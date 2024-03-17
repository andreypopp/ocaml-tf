(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant__timeouts
type google_identity_platform_tenant

val google_identity_platform_tenant :
  ?allow_password_signup:bool ->
  ?disable_auth:bool ->
  ?enable_email_link_signin:bool ->
  ?id:string ->
  ?project:string ->
  ?timeouts:google_identity_platform_tenant__timeouts ->
  display_name:string ->
  string ->
  unit
