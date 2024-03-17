(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__simple_criterion = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__simple_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values = {
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion = {
  comparator : string option; [@option]  (** comparator *)
  tag_values :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and = {
  simple_criterion :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    list;
  tag_criterion :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes = {
  and_ :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__simple_criterion = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__simple_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values = {
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion = {
  comparator : string option; [@option]  (** comparator *)
  tag_values :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and = {
  simple_criterion :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__simple_criterion
    list;
  tag_criterion :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes = {
  and_ :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria = {
  excludes :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes
    list;
  includes :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria *)

type aws_macie2_classification_job__s3_job_definition__bucket_definitions = {
  account_id : string;  (** account_id *)
  buckets : string list;  (** buckets *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_definitions *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__simple_scope_term = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__simple_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values = {
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  target : string option; [@option]  (** target *)
  tag_values :
    aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and = {
  simple_scope_term :
    aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__simple_scope_term
    list;
  tag_scope_term :
    aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes = {
  and_ :
    aws_macie2_classification_job__s3_job_definition__scoping__excludes__and
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and__simple_scope_term = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  values : string list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and__simple_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term__tag_values = {
  key : string option; [@option]  (** key *)
  value : string option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term__tag_values *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term = {
  comparator : string option; [@option]  (** comparator *)
  key : string option; [@option]  (** key *)
  target : string option; [@option]  (** target *)
  tag_values :
    aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and = {
  simple_scope_term :
    aws_macie2_classification_job__s3_job_definition__scoping__includes__and__simple_scope_term
    list;
  tag_scope_term :
    aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes = {
  and_ :
    aws_macie2_classification_job__s3_job_definition__scoping__includes__and
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes *)

type aws_macie2_classification_job__s3_job_definition__scoping = {
  excludes :
    aws_macie2_classification_job__s3_job_definition__scoping__excludes
    list;
  includes :
    aws_macie2_classification_job__s3_job_definition__scoping__includes
    list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping *)

type aws_macie2_classification_job__s3_job_definition = {
  bucket_criteria :
    aws_macie2_classification_job__s3_job_definition__bucket_criteria
    list;
  bucket_definitions :
    aws_macie2_classification_job__s3_job_definition__bucket_definitions
    list;
  scoping :
    aws_macie2_classification_job__s3_job_definition__scoping list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition *)

type aws_macie2_classification_job__schedule_frequency = {
  daily_schedule : bool option; [@option]  (** daily_schedule *)
  monthly_schedule : float option; [@option]  (** monthly_schedule *)
  weekly_schedule : string option; [@option]  (** weekly_schedule *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__schedule_frequency *)

type aws_macie2_classification_job__user_paused_details = {
  job_expires_at : string;  (** job_expires_at *)
  job_imminent_expiration_health_event_arn : string;
      (** job_imminent_expiration_health_event_arn *)
  job_paused_at : string;  (** job_paused_at *)
}
[@@deriving yojson_of]

type aws_macie2_classification_job = {
  initial_run : bool option; [@option]  (** initial_run *)
  job_type : string;  (** job_type *)
  tags : (string * string) list option; [@option]  (** tags *)
  s3_job_definition :
    aws_macie2_classification_job__s3_job_definition list;
  schedule_frequency :
    aws_macie2_classification_job__schedule_frequency list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job *)

let aws_macie2_classification_job ?initial_run ?tags ~job_type
    ~s3_job_definition ~schedule_frequency __resource_id =
  let __resource_type = "aws_macie2_classification_job" in
  let __resource =
    {
      initial_run;
      job_type;
      tags;
      s3_job_definition;
      schedule_frequency;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_classification_job __resource);
  ()
