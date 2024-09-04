(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type finding_criteria__criterion

val finding_criteria__criterion :
  ?eq:string prop list ->
  ?eq_exact_match:string prop list ->
  ?gt:string prop ->
  ?gte:string prop ->
  ?lt:string prop ->
  ?lte:string prop ->
  ?neq:string prop list ->
  field:string prop ->
  unit ->
  finding_criteria__criterion

type finding_criteria

val finding_criteria :
  criterion:finding_criteria__criterion list ->
  unit ->
  finding_criteria

type aws_macie2_findings_filter

val aws_macie2_findings_filter :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?position:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  action:string prop ->
  finding_criteria:finding_criteria list ->
  unit ->
  aws_macie2_findings_filter

val yojson_of_aws_macie2_findings_filter :
  aws_macie2_findings_filter -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  action : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  position : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

val register :
  ?tf_module:tf_module ->
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?position:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  action:string prop ->
  finding_criteria:finding_criteria list ->
  string ->
  t

val make :
  ?description:string prop ->
  ?id:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?position:float prop ->
  ?tags:string prop Tf_core.assoc ->
  ?tags_all:string prop Tf_core.assoc ->
  action:string prop ->
  finding_criteria:finding_criteria list ->
  string ->
  t Tf_core.resource
