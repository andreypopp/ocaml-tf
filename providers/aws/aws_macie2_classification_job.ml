(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type s3_job_definition__bucket_criteria__excludes__and__simple_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__excludes__and__simple_criterion *)

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values *)

type s3_job_definition__bucket_criteria__excludes__and__tag_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
  tag_values :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__excludes__and__tag_criterion *)

type s3_job_definition__bucket_criteria__excludes__and = {
  simple_criterion :
    s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    list;
  tag_criterion :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__excludes__and *)

type s3_job_definition__bucket_criteria__excludes = {
  and_ : s3_job_definition__bucket_criteria__excludes__and list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__excludes *)

type s3_job_definition__bucket_criteria__includes__and__simple_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__includes__and__simple_criterion *)

type s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values *)

type s3_job_definition__bucket_criteria__includes__and__tag_criterion = {
  comparator : string prop option; [@option]  (** comparator *)
  tag_values :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__includes__and__tag_criterion *)

type s3_job_definition__bucket_criteria__includes__and = {
  simple_criterion :
    s3_job_definition__bucket_criteria__includes__and__simple_criterion
    list;
  tag_criterion :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__includes__and *)

type s3_job_definition__bucket_criteria__includes = {
  and_ : s3_job_definition__bucket_criteria__includes__and list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria__includes *)

type s3_job_definition__bucket_criteria = {
  excludes : s3_job_definition__bucket_criteria__excludes list;
  includes : s3_job_definition__bucket_criteria__includes list;
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_criteria *)

type s3_job_definition__bucket_definitions = {
  account_id : string prop;  (** account_id *)
  buckets : string prop list;  (** buckets *)
}
[@@deriving yojson_of]
(** s3_job_definition__bucket_definitions *)

type s3_job_definition__scoping__excludes__and__simple_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__excludes__and__simple_scope_term *)

type s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values *)

type s3_job_definition__scoping__excludes__and__tag_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  target : string prop option; [@option]  (** target *)
  tag_values :
    s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__excludes__and__tag_scope_term *)

type s3_job_definition__scoping__excludes__and = {
  simple_scope_term :
    s3_job_definition__scoping__excludes__and__simple_scope_term list;
  tag_scope_term :
    s3_job_definition__scoping__excludes__and__tag_scope_term list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__excludes__and *)

type s3_job_definition__scoping__excludes = {
  and_ : s3_job_definition__scoping__excludes__and list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__excludes *)

type s3_job_definition__scoping__includes__and__simple_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  values : string prop list option; [@option]  (** values *)
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__includes__and__simple_scope_term *)

type s3_job_definition__scoping__includes__and__tag_scope_term__tag_values = {
  key : string prop option; [@option]  (** key *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__includes__and__tag_scope_term__tag_values *)

type s3_job_definition__scoping__includes__and__tag_scope_term = {
  comparator : string prop option; [@option]  (** comparator *)
  key : string prop option; [@option]  (** key *)
  target : string prop option; [@option]  (** target *)
  tag_values :
    s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__includes__and__tag_scope_term *)

type s3_job_definition__scoping__includes__and = {
  simple_scope_term :
    s3_job_definition__scoping__includes__and__simple_scope_term list;
  tag_scope_term :
    s3_job_definition__scoping__includes__and__tag_scope_term list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__includes__and *)

type s3_job_definition__scoping__includes = {
  and_ : s3_job_definition__scoping__includes__and list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping__includes *)

type s3_job_definition__scoping = {
  excludes : s3_job_definition__scoping__excludes list;
  includes : s3_job_definition__scoping__includes list;
}
[@@deriving yojson_of]
(** s3_job_definition__scoping *)

type s3_job_definition = {
  bucket_criteria : s3_job_definition__bucket_criteria list;
  bucket_definitions : s3_job_definition__bucket_definitions list;
  scoping : s3_job_definition__scoping list;
}
[@@deriving yojson_of]
(** s3_job_definition *)

type schedule_frequency = {
  daily_schedule : bool prop option; [@option]  (** daily_schedule *)
  monthly_schedule : float prop option; [@option]
      (** monthly_schedule *)
  weekly_schedule : string prop option; [@option]
      (** weekly_schedule *)
}
[@@deriving yojson_of]
(** schedule_frequency *)

type user_paused_details = {
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
  s3_job_definition : s3_job_definition list;
  schedule_frequency : schedule_frequency list;
}
[@@deriving yojson_of]
(** aws_macie2_classification_job *)

let s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    ?comparator ?key ?values () :
    s3_job_definition__bucket_criteria__excludes__and__simple_criterion
    =
  { comparator; key; values }

let s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    ?key ?value () :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion__tag_values
    =
  { key; value }

let s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    ?comparator ~tag_values () :
    s3_job_definition__bucket_criteria__excludes__and__tag_criterion
    =
  { comparator; tag_values }

let s3_job_definition__bucket_criteria__excludes__and
    ~simple_criterion ~tag_criterion () :
    s3_job_definition__bucket_criteria__excludes__and =
  { simple_criterion; tag_criterion }

let s3_job_definition__bucket_criteria__excludes ~and_ () :
    s3_job_definition__bucket_criteria__excludes =
  { and_ }

let s3_job_definition__bucket_criteria__includes__and__simple_criterion
    ?comparator ?key ?values () :
    s3_job_definition__bucket_criteria__includes__and__simple_criterion
    =
  { comparator; key; values }

let s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    ?key ?value () :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion__tag_values
    =
  { key; value }

let s3_job_definition__bucket_criteria__includes__and__tag_criterion
    ?comparator ~tag_values () :
    s3_job_definition__bucket_criteria__includes__and__tag_criterion
    =
  { comparator; tag_values }

let s3_job_definition__bucket_criteria__includes__and
    ~simple_criterion ~tag_criterion () :
    s3_job_definition__bucket_criteria__includes__and =
  { simple_criterion; tag_criterion }

let s3_job_definition__bucket_criteria__includes ~and_ () :
    s3_job_definition__bucket_criteria__includes =
  { and_ }

let s3_job_definition__bucket_criteria ~excludes ~includes () :
    s3_job_definition__bucket_criteria =
  { excludes; includes }

let s3_job_definition__bucket_definitions ~account_id ~buckets () :
    s3_job_definition__bucket_definitions =
  { account_id; buckets }

let s3_job_definition__scoping__excludes__and__simple_scope_term
    ?comparator ?key ?values () :
    s3_job_definition__scoping__excludes__and__simple_scope_term =
  { comparator; key; values }

let s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    ?key ?value () :
    s3_job_definition__scoping__excludes__and__tag_scope_term__tag_values
    =
  { key; value }

let s3_job_definition__scoping__excludes__and__tag_scope_term
    ?comparator ?key ?target ~tag_values () :
    s3_job_definition__scoping__excludes__and__tag_scope_term =
  { comparator; key; target; tag_values }

let s3_job_definition__scoping__excludes__and ~simple_scope_term
    ~tag_scope_term () : s3_job_definition__scoping__excludes__and =
  { simple_scope_term; tag_scope_term }

let s3_job_definition__scoping__excludes ~and_ () :
    s3_job_definition__scoping__excludes =
  { and_ }

let s3_job_definition__scoping__includes__and__simple_scope_term
    ?comparator ?key ?values () :
    s3_job_definition__scoping__includes__and__simple_scope_term =
  { comparator; key; values }

let s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    ?key ?value () :
    s3_job_definition__scoping__includes__and__tag_scope_term__tag_values
    =
  { key; value }

let s3_job_definition__scoping__includes__and__tag_scope_term
    ?comparator ?key ?target ~tag_values () :
    s3_job_definition__scoping__includes__and__tag_scope_term =
  { comparator; key; target; tag_values }

let s3_job_definition__scoping__includes__and ~simple_scope_term
    ~tag_scope_term () : s3_job_definition__scoping__includes__and =
  { simple_scope_term; tag_scope_term }

let s3_job_definition__scoping__includes ~and_ () :
    s3_job_definition__scoping__includes =
  { and_ }

let s3_job_definition__scoping ~excludes ~includes () :
    s3_job_definition__scoping =
  { excludes; includes }

let s3_job_definition ~bucket_criteria ~bucket_definitions ~scoping
    () : s3_job_definition =
  { bucket_criteria; bucket_definitions; scoping }

let schedule_frequency ?daily_schedule ?monthly_schedule
    ?weekly_schedule () : schedule_frequency =
  { daily_schedule; monthly_schedule; weekly_schedule }

let aws_macie2_classification_job ?custom_data_identifier_ids
    ?description ?id ?initial_run ?job_status ?name ?name_prefix
    ?sampling_percentage ?tags ?tags_all ~job_type ~s3_job_definition
    ~schedule_frequency () : aws_macie2_classification_job =
  {
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
  user_paused_details : user_paused_details list prop;
}

let make ?custom_data_identifier_ids ?description ?id ?initial_run
    ?job_status ?name ?name_prefix ?sampling_percentage ?tags
    ?tags_all ~job_type ~s3_job_definition ~schedule_frequency __id =
  let __type = "aws_macie2_classification_job" in
  let __attrs =
    ({
       created_at = Prop.computed __type __id "created_at";
       custom_data_identifier_ids =
         Prop.computed __type __id "custom_data_identifier_ids";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       initial_run = Prop.computed __type __id "initial_run";
       job_arn = Prop.computed __type __id "job_arn";
       job_id = Prop.computed __type __id "job_id";
       job_status = Prop.computed __type __id "job_status";
       job_type = Prop.computed __type __id "job_type";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       sampling_percentage =
         Prop.computed __type __id "sampling_percentage";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       user_paused_details =
         Prop.computed __type __id "user_paused_details";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_classification_job
        (aws_macie2_classification_job ?custom_data_identifier_ids
           ?description ?id ?initial_run ?job_status ?name
           ?name_prefix ?sampling_percentage ?tags ?tags_all
           ~job_type ~s3_job_definition ~schedule_frequency ());
    attrs = __attrs;
  }

let register ?tf_module ?custom_data_identifier_ids ?description ?id
    ?initial_run ?job_status ?name ?name_prefix ?sampling_percentage
    ?tags ?tags_all ~job_type ~s3_job_definition ~schedule_frequency
    __id =
  let (r : _ Tf_core.resource) =
    make ?custom_data_identifier_ids ?description ?id ?initial_run
      ?job_status ?name ?name_prefix ?sampling_percentage ?tags
      ?tags_all ~job_type ~s3_job_definition ~schedule_frequency __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
