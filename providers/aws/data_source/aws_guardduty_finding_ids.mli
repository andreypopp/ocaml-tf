(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_guardduty_finding_ids

val aws_guardduty_finding_ids :
  detector_id:string prop -> unit -> aws_guardduty_finding_ids

val yojson_of_aws_guardduty_finding_ids :
  aws_guardduty_finding_ids -> json

(** RESOURCE REGISTRATION *)

type t = private {
  detector_id : string prop;
  finding_ids : string list prop;
  has_findings : bool prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module -> detector_id:string prop -> string -> t

val make : detector_id:string prop -> string -> t Tf_core.resource
