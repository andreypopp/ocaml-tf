(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_findings_filter__finding_criteria__criterion
type aws_macie2_findings_filter__finding_criteria
type aws_macie2_findings_filter

val aws_macie2_findings_filter :
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?name_prefix:string ->
  ?position:float ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  action:string ->
  finding_criteria:aws_macie2_findings_filter__finding_criteria list ->
  string ->
  unit
