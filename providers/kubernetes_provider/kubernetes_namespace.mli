(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_namespace__metadata
type kubernetes_namespace__timeouts
type kubernetes_namespace

val kubernetes_namespace :
  ?wait_for_default_service_account:bool ->
  ?timeouts:kubernetes_namespace__timeouts ->
  metadata:kubernetes_namespace__metadata list ->
  string ->
  unit
