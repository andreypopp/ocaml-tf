(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_amplify_domain_association__sub_domain
type aws_amplify_domain_association

val aws_amplify_domain_association :
  ?enable_auto_sub_domain:bool prop ->
  ?id:string prop ->
  ?wait_for_verification:bool prop ->
  app_id:string prop ->
  domain_name:string prop ->
  sub_domain:aws_amplify_domain_association__sub_domain list ->
  string ->
  unit
