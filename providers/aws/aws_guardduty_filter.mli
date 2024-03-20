(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type finding_criteria__criterion

val finding_criteria__criterion :
  ?equals:string prop list ->
  ?greater_than:string prop ->
  ?greater_than_or_equal:string prop ->
  ?less_than:string prop ->
  ?less_than_or_equal:string prop ->
  ?not_equals:string prop list ->
  field:string prop ->
  unit ->
  finding_criteria__criterion

type finding_criteria

val finding_criteria :
  criterion:finding_criteria__criterion list ->
  unit ->
  finding_criteria

type aws_guardduty_filter

val aws_guardduty_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  action:string prop ->
  detector_id:string prop ->
  name:string prop ->
  rank:float prop ->
  finding_criteria:finding_criteria list ->
  unit ->
  aws_guardduty_filter

val yojson_of_aws_guardduty_filter : aws_guardduty_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  action : string prop;
  arn : string prop;
  description : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
  rank : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  action:string prop ->
  detector_id:string prop ->
  name:string prop ->
  rank:float prop ->
  finding_criteria:finding_criteria list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  action:string prop ->
  detector_id:string prop ->
  name:string prop ->
  rank:float prop ->
  finding_criteria:finding_criteria list ->
  string ->
  t Tf_core.resource
