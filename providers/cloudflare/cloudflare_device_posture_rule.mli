(** Provides a Cloudflare Device Posture Rule resource. Device posture rules configure security policies for device posture checks.
 *)

(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type input

val input :
  ?active_threats:float prop ->
  ?certificate_id:string prop ->
  ?check_disks:string prop list ->
  ?cn:string prop ->
  ?compliance_status:string prop ->
  ?connection_id:string prop ->
  ?count_operator:string prop ->
  ?domain:string prop ->
  ?eid_last_seen:string prop ->
  ?enabled:bool prop ->
  ?exists:bool prop ->
  ?id:string prop ->
  ?infected:bool prop ->
  ?is_active:bool prop ->
  ?issue_count:string prop ->
  ?last_seen:string prop ->
  ?network_status:string prop ->
  ?operator:string prop ->
  ?os:string prop ->
  ?os_distro_name:string prop ->
  ?os_distro_revision:string prop ->
  ?os_version_extra:string prop ->
  ?overall:string prop ->
  ?path:string prop ->
  ?require_all:bool prop ->
  ?risk_level:string prop ->
  ?running:bool prop ->
  ?sensor_config:string prop ->
  ?sha256:string prop ->
  ?state:string prop ->
  ?thumbprint:string prop ->
  ?total_score:float prop ->
  ?version:string prop ->
  ?version_operator:string prop ->
  unit ->
  input

type match_

val match_ : ?platform:string prop -> unit -> match_

type cloudflare_device_posture_rule

val cloudflare_device_posture_rule :
  ?description:string prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?schedule:string prop ->
  ?input:input list ->
  ?match_:match_ list ->
  account_id:string prop ->
  type_:string prop ->
  unit ->
  cloudflare_device_posture_rule

val yojson_of_cloudflare_device_posture_rule :
  cloudflare_device_posture_rule -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  expiration : string prop;
  id : string prop;
  name : string prop;
  schedule : string prop;
  type_ : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?schedule:string prop ->
  ?input:input list ->
  ?match_:match_ list ->
  account_id:string prop ->
  type_:string prop ->
  string ->
  t

val make :
  ?description:string prop ->
  ?expiration:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?schedule:string prop ->
  ?input:input list ->
  ?match_:match_ list ->
  account_id:string prop ->
  type_:string prop ->
  string ->
  t Tf_core.resource
