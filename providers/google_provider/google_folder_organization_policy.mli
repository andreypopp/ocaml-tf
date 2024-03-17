(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_folder_organization_policy__boolean_policy
type google_folder_organization_policy__list_policy__allow
type google_folder_organization_policy__list_policy__deny
type google_folder_organization_policy__list_policy
type google_folder_organization_policy__restore_policy
type google_folder_organization_policy__timeouts
type google_folder_organization_policy

val google_folder_organization_policy :
  ?timeouts:google_folder_organization_policy__timeouts ->
  constraint_:string ->
  folder:string ->
  boolean_policy:
    google_folder_organization_policy__boolean_policy list ->
  list_policy:google_folder_organization_policy__list_policy list ->
  restore_policy:
    google_folder_organization_policy__restore_policy list ->
  string ->
  unit
