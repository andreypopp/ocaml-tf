(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type monitoring_schedule_config__schedule_config = {
  schedule_expression : string prop;  (** schedule_expression *)
}
[@@deriving yojson_of]
(** monitoring_schedule_config__schedule_config *)

type monitoring_schedule_config = {
  monitoring_job_definition_name : string prop;
      (** monitoring_job_definition_name *)
  monitoring_type : string prop;  (** monitoring_type *)
  schedule_config : monitoring_schedule_config__schedule_config list;
}
[@@deriving yojson_of]
(** monitoring_schedule_config *)

type aws_sagemaker_monitoring_schedule = {
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  monitoring_schedule_config : monitoring_schedule_config list;
}
[@@deriving yojson_of]
(** aws_sagemaker_monitoring_schedule *)

let monitoring_schedule_config__schedule_config ~schedule_expression
    () : monitoring_schedule_config__schedule_config =
  { schedule_expression }

let monitoring_schedule_config ~monitoring_job_definition_name
    ~monitoring_type ~schedule_config () : monitoring_schedule_config
    =
  {
    monitoring_job_definition_name;
    monitoring_type;
    schedule_config;
  }

let aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config () :
    aws_sagemaker_monitoring_schedule =
  { id; name; tags; tags_all; monitoring_schedule_config }

type t = {
  arn : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?name ?tags ?tags_all ~monitoring_schedule_config __id =
  let __type = "aws_sagemaker_monitoring_schedule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_sagemaker_monitoring_schedule
        (aws_sagemaker_monitoring_schedule ?id ?name ?tags ?tags_all
           ~monitoring_schedule_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?tags ?tags_all
    ~monitoring_schedule_config __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?tags ?tags_all ~monitoring_schedule_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
