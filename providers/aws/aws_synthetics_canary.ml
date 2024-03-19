(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type artifact_config__s3_encryption = {
  encryption_mode : string prop option; [@option]
      (** encryption_mode *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** artifact_config__s3_encryption *)

type artifact_config = {
  s3_encryption : artifact_config__s3_encryption list;
}
[@@deriving yojson_of]
(** artifact_config *)

type run_config = {
  active_tracing : bool prop option; [@option]  (** active_tracing *)
  environment_variables : (string * string prop) list option;
      [@option]
      (** environment_variables *)
  memory_in_mb : float prop option; [@option]  (** memory_in_mb *)
  timeout_in_seconds : float prop option; [@option]
      (** timeout_in_seconds *)
}
[@@deriving yojson_of]
(** run_config *)

type schedule = {
  duration_in_seconds : float prop option; [@option]
      (** duration_in_seconds *)
  expression : string prop;  (** expression *)
}
[@@deriving yojson_of]
(** schedule *)

type vpc_config = {
  security_group_ids : string prop list option; [@option]
      (** security_group_ids *)
  subnet_ids : string prop list option; [@option]  (** subnet_ids *)
}
[@@deriving yojson_of]
(** vpc_config *)

type timeline = {
  created : string prop;  (** created *)
  last_modified : string prop;  (** last_modified *)
  last_started : string prop;  (** last_started *)
  last_stopped : string prop;  (** last_stopped *)
}
[@@deriving yojson_of]

type aws_synthetics_canary = {
  artifact_s3_location : string prop;  (** artifact_s3_location *)
  delete_lambda : bool prop option; [@option]  (** delete_lambda *)
  execution_role_arn : string prop;  (** execution_role_arn *)
  failure_retention_period : float prop option; [@option]
      (** failure_retention_period *)
  handler : string prop;  (** handler *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  runtime_version : string prop;  (** runtime_version *)
  s3_bucket : string prop option; [@option]  (** s3_bucket *)
  s3_key : string prop option; [@option]  (** s3_key *)
  s3_version : string prop option; [@option]  (** s3_version *)
  start_canary : bool prop option; [@option]  (** start_canary *)
  success_retention_period : float prop option; [@option]
      (** success_retention_period *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  zip_file : string prop option; [@option]  (** zip_file *)
  artifact_config : artifact_config list;
  run_config : run_config list;
  schedule : schedule list;
  vpc_config : vpc_config list;
}
[@@deriving yojson_of]
(** aws_synthetics_canary *)

let artifact_config__s3_encryption ?encryption_mode ?kms_key_arn () :
    artifact_config__s3_encryption =
  { encryption_mode; kms_key_arn }

let artifact_config ~s3_encryption () : artifact_config =
  { s3_encryption }

let run_config ?active_tracing ?environment_variables ?memory_in_mb
    ?timeout_in_seconds () : run_config =
  {
    active_tracing;
    environment_variables;
    memory_in_mb;
    timeout_in_seconds;
  }

let schedule ?duration_in_seconds ~expression () : schedule =
  { duration_in_seconds; expression }

let vpc_config ?security_group_ids ?subnet_ids () : vpc_config =
  { security_group_ids; subnet_ids }

let aws_synthetics_canary ?delete_lambda ?failure_retention_period
    ?id ?s3_bucket ?s3_key ?s3_version ?start_canary
    ?success_retention_period ?tags ?tags_all ?zip_file
    ~artifact_s3_location ~execution_role_arn ~handler ~name
    ~runtime_version ~artifact_config ~run_config ~schedule
    ~vpc_config () : aws_synthetics_canary =
  {
    artifact_s3_location;
    delete_lambda;
    execution_role_arn;
    failure_retention_period;
    handler;
    id;
    name;
    runtime_version;
    s3_bucket;
    s3_key;
    s3_version;
    start_canary;
    success_retention_period;
    tags;
    tags_all;
    zip_file;
    artifact_config;
    run_config;
    schedule;
    vpc_config;
  }

type t = {
  arn : string prop;
  artifact_s3_location : string prop;
  delete_lambda : bool prop;
  engine_arn : string prop;
  execution_role_arn : string prop;
  failure_retention_period : float prop;
  handler : string prop;
  id : string prop;
  name : string prop;
  runtime_version : string prop;
  s3_bucket : string prop;
  s3_key : string prop;
  s3_version : string prop;
  source_location_arn : string prop;
  start_canary : bool prop;
  status : string prop;
  success_retention_period : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  timeline : timeline list prop;
  zip_file : string prop;
}

let register ?tf_module ?delete_lambda ?failure_retention_period ?id
    ?s3_bucket ?s3_key ?s3_version ?start_canary
    ?success_retention_period ?tags ?tags_all ?zip_file
    ~artifact_s3_location ~execution_role_arn ~handler ~name
    ~runtime_version ~artifact_config ~run_config ~schedule
    ~vpc_config __resource_id =
  let __resource_type = "aws_synthetics_canary" in
  let __resource =
    aws_synthetics_canary ?delete_lambda ?failure_retention_period
      ?id ?s3_bucket ?s3_key ?s3_version ?start_canary
      ?success_retention_period ?tags ?tags_all ?zip_file
      ~artifact_s3_location ~execution_role_arn ~handler ~name
      ~runtime_version ~artifact_config ~run_config ~schedule
      ~vpc_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_synthetics_canary __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       artifact_s3_location =
         Prop.computed __resource_type __resource_id
           "artifact_s3_location";
       delete_lambda =
         Prop.computed __resource_type __resource_id "delete_lambda";
       engine_arn =
         Prop.computed __resource_type __resource_id "engine_arn";
       execution_role_arn =
         Prop.computed __resource_type __resource_id
           "execution_role_arn";
       failure_retention_period =
         Prop.computed __resource_type __resource_id
           "failure_retention_period";
       handler =
         Prop.computed __resource_type __resource_id "handler";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       runtime_version =
         Prop.computed __resource_type __resource_id
           "runtime_version";
       s3_bucket =
         Prop.computed __resource_type __resource_id "s3_bucket";
       s3_key = Prop.computed __resource_type __resource_id "s3_key";
       s3_version =
         Prop.computed __resource_type __resource_id "s3_version";
       source_location_arn =
         Prop.computed __resource_type __resource_id
           "source_location_arn";
       start_canary =
         Prop.computed __resource_type __resource_id "start_canary";
       status = Prop.computed __resource_type __resource_id "status";
       success_retention_period =
         Prop.computed __resource_type __resource_id
           "success_retention_period";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       timeline =
         Prop.computed __resource_type __resource_id "timeline";
       zip_file =
         Prop.computed __resource_type __resource_id "zip_file";
     }
      : t)
  in
  __resource_attributes
