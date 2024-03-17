(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_identity_platform_tenant__timeouts
type google_identity_platform_tenant

val google_identity_platform_tenant :
  ?allow_password_signup:bool prop ->
  ?disable_auth:bool prop ->
  ?enable_email_link_signin:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_identity_platform_tenant__timeouts ->
  display_name:string prop ->
  string ->
  unit
