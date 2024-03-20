(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type user_paused_details = {
  job_expires_at : string prop;  (** job_expires_at *)
  job_imminent_expiration_health_event_arn : string prop;
      (** job_imminent_expiration_health_event_arn *)
  job_paused_at : string prop;  (** job_paused_at *)
}

type s3_job_definition__bucket_criteria__excludes__and__simple_criterion

val s3_job_definition__bucket_criteria__excludes__and__simple_criterion :
  ?comparator:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  s3_job_definition__bucket_criteria__excludes__and__simple_criterion

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values

val s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values :
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion

val s3_job_definition__bucket_criteria__excludes__and__tag_criterion :
  ?comparator:string prop ->
  tag_values:
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    list ->
  unit ->
  s3_job_definition__bucket_criteria__excludes__and__tag_criterion

type s3_job_definition__bucket_criteria__excludes__and

val s3_job_definition__bucket_criteria__excludes__and :
  simple_criterion:
    s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    list ->
  tag_criterion:
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    list ->
  unit ->
  s3_job_definition__bucket_criteria__excludes__and

type s3_job_definition__bucket_criteria__excludes

val s3_job_definition__bucket_criteria__excludes :
  and_:s3_job_definition__bucket_criteria__excludes__and list ->
  unit ->
  s3_job_definition__bucket_criteria__excludes

type s3_job_definition__bucket_criteria__includes__and__simple_criterion

val s3_job_definition__bucket_criteria__includes__and__simple_criterion :
  ?comparator:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  s3_job_definition__bucket_criteria__includes__and__simple_criterion

type s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values

val s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values :
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values

type s3_job_definition__bucket_criteria__includes__and__tag_criterion

val s3_job_definition__bucket_criteria__includes__and__tag_criterion :
  ?comparator:string prop ->
  tag_values:
    s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    list ->
  unit ->
  s3_job_definition__bucket_criteria__includes__and__tag_criterion

type s3_job_definition__bucket_criteria__includes__and

val s3_job_definition__bucket_criteria__includes__and :
  simple_criterion:
    s3_job_definition__bucket_criteria__includes__and__simple_criterion
    list ->
  tag_criterion:
    s3_job_definition__bucket_criteria__includes__and__tag_criterion
    list ->
  unit ->
  s3_job_definition__bucket_criteria__includes__and

type s3_job_definition__bucket_criteria__includes

val s3_job_definition__bucket_criteria__includes :
  and_:s3_job_definition__bucket_criteria__includes__and list ->
  unit ->
  s3_job_definition__bucket_criteria__includes

type s3_job_definition__bucket_criteria

val s3_job_definition__bucket_criteria :
  excludes:s3_job_definition__bucket_criteria__excludes list ->
  includes:s3_job_definition__bucket_criteria__includes list ->
  unit ->
  s3_job_definition__bucket_criteria

type s3_job_definition__bucket_definitions

val s3_job_definition__bucket_definitions :
  account_id:string prop ->
  buckets:string prop list ->
  unit ->
  s3_job_definition__bucket_definitions

type s3_job_definition__scoping__excludes__and__simple_scope_term

val s3_job_definition__scoping__excludes__and__simple_scope_term :
  ?comparator:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  s3_job_definition__scoping__excludes__and__simple_scope_term

type s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values

val s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values :
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values

type s3_job_definition__scoping__excludes__and__tag_scope_term

val s3_job_definition__scoping__excludes__and__tag_scope_term :
  ?comparator:string prop ->
  ?key:string prop ->
  ?target:string prop ->
  tag_values:
    s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    list ->
  unit ->
  s3_job_definition__scoping__excludes__and__tag_scope_term

type s3_job_definition__scoping__excludes__and

val s3_job_definition__scoping__excludes__and :
  simple_scope_term:
    s3_job_definition__scoping__excludes__and__simple_scope_term list ->
  tag_scope_term:
    s3_job_definition__scoping__excludes__and__tag_scope_term list ->
  unit ->
  s3_job_definition__scoping__excludes__and

type s3_job_definition__scoping__excludes

val s3_job_definition__scoping__excludes :
  and_:s3_job_definition__scoping__excludes__and list ->
  unit ->
  s3_job_definition__scoping__excludes

type s3_job_definition__scoping__includes__and__simple_scope_term

val s3_job_definition__scoping__includes__and__simple_scope_term :
  ?comparator:string prop ->
  ?key:string prop ->
  ?values:string prop list ->
  unit ->
  s3_job_definition__scoping__includes__and__simple_scope_term

type s3_job_definition__scoping__includes__and__tag_scope_term__tag_values

val s3_job_definition__scoping__includes__and__tag_scope_term__tag_values :
  ?key:string prop ->
  ?value:string prop ->
  unit ->
  s3_job_definition__scoping__includes__and__tag_scope_term__tag_values

type s3_job_definition__scoping__includes__and__tag_scope_term

val s3_job_definition__scoping__includes__and__tag_scope_term :
  ?comparator:string prop ->
  ?key:string prop ->
  ?target:string prop ->
  tag_values:
    s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    list ->
  unit ->
  s3_job_definition__scoping__includes__and__tag_scope_term

type s3_job_definition__scoping__includes__and

val s3_job_definition__scoping__includes__and :
  simple_scope_term:
    s3_job_definition__scoping__includes__and__simple_scope_term list ->
  tag_scope_term:
    s3_job_definition__scoping__includes__and__tag_scope_term list ->
  unit ->
  s3_job_definition__scoping__includes__and

type s3_job_definition__scoping__includes

val s3_job_definition__scoping__includes :
  and_:s3_job_definition__scoping__includes__and list ->
  unit ->
  s3_job_definition__scoping__includes

type s3_job_definition__scoping

val s3_job_definition__scoping :
  excludes:s3_job_definition__scoping__excludes list ->
  includes:s3_job_definition__scoping__includes list ->
  unit ->
  s3_job_definition__scoping

type s3_job_definition

val s3_job_definition :
  bucket_criteria:s3_job_definition__bucket_criteria list ->
  bucket_definitions:s3_job_definition__bucket_definitions list ->
  scoping:s3_job_definition__scoping list ->
  unit ->
  s3_job_definition

type schedule_frequency

val schedule_frequency :
  ?daily_schedule:bool prop ->
  ?monthly_schedule:float prop ->
  ?weekly_schedule:string prop ->
  unit ->
  schedule_frequency

type aws_macie2_classification_job

val aws_macie2_classification_job :
  ?custom_data_identifier_ids:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?initial_run:bool prop ->
  ?job_status:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  job_type:string prop ->
  s3_job_definition:s3_job_definition list ->
  schedule_frequency:schedule_frequency list ->
  unit ->
  aws_macie2_classification_job

val yojson_of_aws_macie2_classification_job :
  aws_macie2_classification_job -> json

(** RESOURCE REGISTRATION *)

type t = private {
  created_at : string prop;
  custom_data_identifier_ids : string list prop;
  description : string prop;
  id : string prop;
  initial_run : bool prop;
  job_arn : string prop;
  job_id : string prop;
  job_status : string prop;
  job_type : string prop;
  name : string prop;
  name_prefix : string prop;
  sampling_percentage : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  user_paused_details : user_paused_details list prop;
}

val register :
  ?tf_module:tf_module ->
  ?custom_data_identifier_ids:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?initial_run:bool prop ->
  ?job_status:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  job_type:string prop ->
  s3_job_definition:s3_job_definition list ->
  schedule_frequency:schedule_frequency list ->
  string ->
  t

val make :
  ?custom_data_identifier_ids:string prop list ->
  ?description:string prop ->
  ?id:string prop ->
  ?initial_run:bool prop ->
  ?job_status:string prop ->
  ?name:string prop ->
  ?name_prefix:string prop ->
  ?sampling_percentage:float prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  job_type:string prop ->
  s3_job_definition:s3_job_definition list ->
  schedule_frequency:schedule_frequency list ->
  string ->
  t Tf_core.resource
