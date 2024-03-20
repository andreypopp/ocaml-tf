(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type routing_config = {
  additional_version_weights : (string * float prop) list option;
      [@option]
      (** additional_version_weights *)
}
[@@deriving yojson_of]
(** routing_config *)

type aws_lambda_alias = {
  description : string prop option; [@option]  (** description *)
  function_name : string prop;  (** function_name *)
  function_version : string prop;  (** function_version *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  routing_config : routing_config list;
}
[@@deriving yojson_of]
(** aws_lambda_alias *)

let routing_config ?additional_version_weights () : routing_config =
  { additional_version_weights }

let aws_lambda_alias ?description ?id ~function_name
    ~function_version ~name ~routing_config () : aws_lambda_alias =
  {
    description;
    function_name;
    function_version;
    id;
    name;
    routing_config;
  }

type t = {
  arn : string prop;
  description : string prop;
  function_name : string prop;
  function_version : string prop;
  id : string prop;
  invoke_arn : string prop;
  name : string prop;
}

let make ?description ?id ~function_name ~function_version ~name
    ~routing_config __id =
  let __type = "aws_lambda_alias" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       function_name = Prop.computed __type __id "function_name";
       function_version =
         Prop.computed __type __id "function_version";
       id = Prop.computed __type __id "id";
       invoke_arn = Prop.computed __type __id "invoke_arn";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_alias
        (aws_lambda_alias ?description ?id ~function_name
           ~function_version ~name ~routing_config ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~function_name
    ~function_version ~name ~routing_config __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~function_name ~function_version ~name
      ~routing_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
