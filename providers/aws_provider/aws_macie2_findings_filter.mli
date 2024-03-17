(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_macie2_findings_filter__finding_criteria__criterion
type aws_macie2_findings_filter__finding_criteria
type aws_macie2_findings_filter

type t = private {
  action : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  position : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val aws_macie2_findings_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?position:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  action:string prop ->
  finding_criteria:aws_macie2_findings_filter__finding_criteria list ->
  string ->
  t
