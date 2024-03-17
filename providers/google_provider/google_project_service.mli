(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_project_service__timeouts
type google_project_service

val google_project_service :
  ?disable_dependent_services:bool prop ->
  ?disable_on_destroy:bool prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?timeouts:google_project_service__timeouts ->
  service:string prop ->
  string ->
  unit
