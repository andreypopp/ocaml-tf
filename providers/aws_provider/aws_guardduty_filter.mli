(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_guardduty_filter__finding_criteria__criterion
type aws_guardduty_filter__finding_criteria
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
  finding_criteria:aws_guardduty_filter__finding_criteria list ->
  string ->
  unit
