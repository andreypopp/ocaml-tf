(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__engine_version = {
  selected_engine_version : string prop option; [@option]
      (** selected_engine_version *)
}
[@@deriving yojson_of]
(** configuration__engine_version *)

type configuration__result_configuration__acl_configuration = {
  s3_acl_option : string prop;  (** s3_acl_option *)
}
[@@deriving yojson_of]
(** configuration__result_configuration__acl_configuration *)

type configuration__result_configuration__encryption_configuration = {
  encryption_option : string prop option; [@option]
      (** encryption_option *)
  kms_key_arn : string prop option; [@option]  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** configuration__result_configuration__encryption_configuration *)

type configuration__result_configuration = {
  expected_bucket_owner : string prop option; [@option]
      (** expected_bucket_owner *)
  output_location : string prop option; [@option]
      (** output_location *)
  acl_configuration :
    configuration__result_configuration__acl_configuration list;
  encryption_configuration :
    configuration__result_configuration__encryption_configuration
    list;
}
[@@deriving yojson_of]
(** configuration__result_configuration *)

type configuration = {
  bytes_scanned_cutoff_per_query : float prop option; [@option]
      (** bytes_scanned_cutoff_per_query *)
  enforce_workgroup_configuration : bool prop option; [@option]
      (** enforce_workgroup_configuration *)
  execution_role : string prop option; [@option]
      (** execution_role *)
  publish_cloudwatch_metrics_enabled : bool prop option; [@option]
      (** publish_cloudwatch_metrics_enabled *)
  requester_pays_enabled : bool prop option; [@option]
      (** requester_pays_enabled *)
  engine_version : configuration__engine_version list;
  result_configuration : configuration__result_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type aws_athena_workgroup = {
  description : string prop option; [@option]  (** description *)
  force_destroy : bool prop option; [@option]  (** force_destroy *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  state : string prop option; [@option]  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  configuration : configuration list;
}
[@@deriving yojson_of]
(** aws_athena_workgroup *)

let configuration__engine_version ?selected_engine_version () :
    configuration__engine_version =
  { selected_engine_version }

let configuration__result_configuration__acl_configuration
    ~s3_acl_option () :
    configuration__result_configuration__acl_configuration =
  { s3_acl_option }

let configuration__result_configuration__encryption_configuration
    ?encryption_option ?kms_key_arn () :
    configuration__result_configuration__encryption_configuration =
  { encryption_option; kms_key_arn }

let configuration__result_configuration ?expected_bucket_owner
    ?output_location ~acl_configuration ~encryption_configuration ()
    : configuration__result_configuration =
  {
    expected_bucket_owner;
    output_location;
    acl_configuration;
    encryption_configuration;
  }

let configuration ?bytes_scanned_cutoff_per_query
    ?enforce_workgroup_configuration ?execution_role
    ?publish_cloudwatch_metrics_enabled ?requester_pays_enabled
    ~engine_version ~result_configuration () : configuration =
  {
    bytes_scanned_cutoff_per_query;
    enforce_workgroup_configuration;
    execution_role;
    publish_cloudwatch_metrics_enabled;
    requester_pays_enabled;
    engine_version;
    result_configuration;
  }

let aws_athena_workgroup ?description ?force_destroy ?id ?state ?tags
    ?tags_all ~name ~configuration () : aws_athena_workgroup =
  {
    description;
    force_destroy;
    id;
    name;
    state;
    tags;
    tags_all;
    configuration;
  }

type t = {
  arn : string prop;
  description : string prop;
  force_destroy : bool prop;
  id : string prop;
  name : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?force_destroy ?id ?state ?tags ?tags_all ~name
    ~configuration __id =
  let __type = "aws_athena_workgroup" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       force_destroy = Prop.computed __type __id "force_destroy";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_athena_workgroup
        (aws_athena_workgroup ?description ?force_destroy ?id ?state
           ?tags ?tags_all ~name ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_destroy ?id ?state ?tags
    ?tags_all ~name ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_destroy ?id ?state ?tags ?tags_all ~name
      ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
