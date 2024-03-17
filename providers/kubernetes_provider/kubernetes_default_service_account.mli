(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_default_service_account__image_pull_secret
type kubernetes_default_service_account__metadata
type kubernetes_default_service_account__secret
type kubernetes_default_service_account__timeouts
type kubernetes_default_service_account

val kubernetes_default_service_account :
  ?automount_service_account_token:bool ->
  ?timeouts:kubernetes_default_service_account__timeouts ->
  image_pull_secret:
    kubernetes_default_service_account__image_pull_secret list ->
  metadata:kubernetes_default_service_account__metadata list ->
  secret:kubernetes_default_service_account__secret list ->
  string ->
  unit
