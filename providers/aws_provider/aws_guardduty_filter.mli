(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_filter__finding_criteria__criterion
type aws_guardduty_filter__finding_criteria
type aws_guardduty_filter

val aws_guardduty_filter :
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  action:string ->
  detector_id:string ->
  name:string ->
  rank:float ->
  finding_criteria:aws_guardduty_filter__finding_criteria list ->
  string ->
  unit
