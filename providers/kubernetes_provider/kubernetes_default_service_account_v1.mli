(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_default_service_account_v1__image_pull_secret
type kubernetes_default_service_account_v1__metadata
type kubernetes_default_service_account_v1__secret
type kubernetes_default_service_account_v1__timeouts
type kubernetes_default_service_account_v1

val kubernetes_default_service_account_v1 :
  ?automount_service_account_token:bool prop ->
  ?id:string prop ->
  ?timeouts:kubernetes_default_service_account_v1__timeouts ->
  image_pull_secret:
    kubernetes_default_service_account_v1__image_pull_secret list ->
  metadata:kubernetes_default_service_account_v1__metadata list ->
  secret:kubernetes_default_service_account_v1__secret list ->
  string ->
  unit
