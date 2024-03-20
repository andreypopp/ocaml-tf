(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type runtime = {
  name : string prop;  (** name *)
  runtime_version : string prop;  (** runtime_version *)
}
[@@deriving yojson_of]
(** runtime *)

type sync_config__lambda_conflict_handler_config = {
  lambda_conflict_handler_arn : string prop option; [@option]
      (** lambda_conflict_handler_arn *)
}
[@@deriving yojson_of]
(** sync_config__lambda_conflict_handler_config *)

type sync_config = {
  conflict_detection : string prop option; [@option]
      (** conflict_detection *)
  conflict_handler : string prop option; [@option]
      (** conflict_handler *)
  lambda_conflict_handler_config :
    sync_config__lambda_conflict_handler_config list;
}
[@@deriving yojson_of]
(** sync_config *)

type aws_appsync_function = {
  api_id : string prop;  (** api_id *)
  code : string prop option; [@option]  (** code *)
  data_source : string prop;  (** data_source *)
  description : string prop option; [@option]  (** description *)
  function_version : string prop option; [@option]
      (** function_version *)
  id : string prop option; [@option]  (** id *)
  max_batch_size : float prop option; [@option]
      (** max_batch_size *)
  name : string prop;  (** name *)
  request_mapping_template : string prop option; [@option]
      (** request_mapping_template *)
  response_mapping_template : string prop option; [@option]
      (** response_mapping_template *)
  runtime : runtime list;
  sync_config : sync_config list;
}
[@@deriving yojson_of]
(** aws_appsync_function *)

let runtime ~name ~runtime_version () : runtime =
  { name; runtime_version }

let sync_config__lambda_conflict_handler_config
    ?lambda_conflict_handler_arn () :
    sync_config__lambda_conflict_handler_config =
  { lambda_conflict_handler_arn }

let sync_config ?conflict_detection ?conflict_handler
    ~lambda_conflict_handler_config () : sync_config =
  {
    conflict_detection;
    conflict_handler;
    lambda_conflict_handler_config;
  }

let aws_appsync_function ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ~api_id ~data_source ~name ~runtime
    ~sync_config () : aws_appsync_function =
  {
    api_id;
    code;
    data_source;
    description;
    function_version;
    id;
    max_batch_size;
    name;
    request_mapping_template;
    response_mapping_template;
    runtime;
    sync_config;
  }

type t = {
  api_id : string prop;
  arn : string prop;
  code : string prop;
  data_source : string prop;
  description : string prop;
  function_id : string prop;
  function_version : string prop;
  id : string prop;
  max_batch_size : float prop;
  name : string prop;
  request_mapping_template : string prop;
  response_mapping_template : string prop;
}

let make ?code ?description ?function_version ?id ?max_batch_size
    ?request_mapping_template ?response_mapping_template ~api_id
    ~data_source ~name ~runtime ~sync_config __id =
  let __type = "aws_appsync_function" in
  let __attrs =
    ({
       api_id = Prop.computed __type __id "api_id";
       arn = Prop.computed __type __id "arn";
       code = Prop.computed __type __id "code";
       data_source = Prop.computed __type __id "data_source";
       description = Prop.computed __type __id "description";
       function_id = Prop.computed __type __id "function_id";
       function_version =
         Prop.computed __type __id "function_version";
       id = Prop.computed __type __id "id";
       max_batch_size = Prop.computed __type __id "max_batch_size";
       name = Prop.computed __type __id "name";
       request_mapping_template =
         Prop.computed __type __id "request_mapping_template";
       response_mapping_template =
         Prop.computed __type __id "response_mapping_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_appsync_function
        (aws_appsync_function ?code ?description ?function_version
           ?id ?max_batch_size ?request_mapping_template
           ?response_mapping_template ~api_id ~data_source ~name
           ~runtime ~sync_config ());
    attrs = __attrs;
  }

let register ?tf_module ?code ?description ?function_version ?id
    ?max_batch_size ?request_mapping_template
    ?response_mapping_template ~api_id ~data_source ~name ~runtime
    ~sync_config __id =
  let (r : _ Tf_core.resource) =
    make ?code ?description ?function_version ?id ?max_batch_size
      ?request_mapping_template ?response_mapping_template ~api_id
      ~data_source ~name ~runtime ~sync_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
