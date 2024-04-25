(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type dashboard_attributes

val dashboard_attributes :
  ?engagement_metrics:string prop -> unit -> dashboard_attributes

type guardian_attributes

val guardian_attributes :
  ?optimized_shared_delivery:string prop ->
  unit ->
  guardian_attributes

type aws_sesv2_account_vdm_attributes

val aws_sesv2_account_vdm_attributes :
  ?id:string prop ->
  ?dashboard_attributes:dashboard_attributes list ->
  ?guardian_attributes:guardian_attributes list ->
  vdm_enabled:string prop ->
  unit ->
  aws_sesv2_account_vdm_attributes

val yojson_of_aws_sesv2_account_vdm_attributes :
  aws_sesv2_account_vdm_attributes -> json

(** RESOURCE REGISTRATION *)

type t = private { id : string prop; vdm_enabled : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?dashboard_attributes:dashboard_attributes list ->
  ?guardian_attributes:guardian_attributes list ->
  vdm_enabled:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?dashboard_attributes:dashboard_attributes list ->
  ?guardian_attributes:guardian_attributes list ->
  vdm_enabled:string prop ->
  string ->
  t Tf_core.resource
