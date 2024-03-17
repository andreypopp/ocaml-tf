(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__simple_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__simple_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__excludes__and__tag_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
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
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__simple_criterion *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values *)

type aws_macie2_classification_job__s3_job_definition__bucket_criteria__includes__and__tag_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
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
  account_id : string prop;  (** account_id *)
  buckets : string prop list;  (** buckets *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__bucket_definitions *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__simple_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__simple_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values *)

type aws_macie2_classification_job__s3_job_definition__scoping__excludes__and__tag_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  target : string prop option; [@option]  (** target *)
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
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and__simple_scope_term *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term__tag_values *)

type aws_macie2_classification_job__s3_job_definition__scoping__includes__and__tag_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  target : string prop option; [@option]  (** target *)
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
  daily_schedule : bool prop option; [@option]  (** daily_schedule *)
  monthly_schedule : float prop option; [@option]
      (** monthly_schedule *)
  weekly_schedule : string prop option; [@option]
      (** weekly_schedule *)
}
[@@deriving yojson_of]
(** aws_macie2_classification_job__schedule_frequency *)

type aws_macie2_classification_job__user_paused_details = {
  job_expires_at : string prop;  (** job_expires_at *)
  job_imminent_expiration_health_event_arn : string prop;
      (** job_imminent_expiration_health_event_arn *)
  job_paused_at : string prop;  (** job_paused_at *)
}
[@@deriving yojson_of]

type aws_macie2_classification_job = {
  custom_data_identifier_ids : string prop list option; [@option]
      (** custom_data_identifier_ids *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  initial_run : bool prop option; [@option]  (** initial_run *)
  job_status : string prop option; [@option]  (** job_status *)
  job_type : string prop;  (** job_type *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  sampling_percentage : float prop option; [@option]
      (** sampling_percentage *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  s3_job_definition :
    aws_macie2_classification_job__s3_job_definition list;
  schedule_frequency :
    aws_macie2_classification_job__schedule_frequency list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job *)

type t = {
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
  user_paused_details :
    aws_macie2_classification_job__user_paused_details list prop;
}

let aws_macie2_classification_job ?custom_data_identifier_ids
    ?description ?id ?initial_run ?job_status ?name ?name_prefix
    ?sampling_percentage ?tags ?tags_all ~job_type ~s3_job_definition
    ~schedule_frequency __resource_id =
  let __resource_type = "aws_macie2_classification_job" in
  let __resource =
    ({
       custom_data_identifier_ids;
       description;
       id;
       initial_run;
       job_status;
       job_type;
       name;
       name_prefix;
       sampling_percentage;
       tags;
       tags_all;
       s3_job_definition;
       schedule_frequency;
     }
      : aws_macie2_classification_job)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_classification_job __resource);
  let __resource_attributes =
    ({
       created_at =
         Prop.computed __resource_type __resource_id "created_at";
       custom_data_identifier_ids =
         Prop.computed __resource_type __resource_id
           "custom_data_identifier_ids";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       initial_run =
         Prop.computed __resource_type __resource_id "initial_run";
       job_arn =
         Prop.computed __resource_type __resource_id "job_arn";
       job_id = Prop.computed __resource_type __resource_id "job_id";
       job_status =
         Prop.computed __resource_type __resource_id "job_status";
       job_type =
         Prop.computed __resource_type __resource_id "job_type";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       sampling_percentage =
         Prop.computed __resource_type __resource_id
           "sampling_percentage";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       user_paused_details =
         Prop.computed __resource_type __resource_id
           "user_paused_details";
     }
      : t)
  in
  __resource_attributes
