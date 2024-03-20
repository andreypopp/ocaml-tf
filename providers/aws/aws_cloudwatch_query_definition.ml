(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_query_definition = {
  id : string prop option; [@option]  (** id *)
  log_group_names : string prop list option; [@option]
      (** log_group_names *)
  name : string prop;  (** name *)
  query_string : string prop;  (** query_string *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_query_definition *)

let aws_cloudwatch_query_definition ?id ?log_group_names ~name
    ~query_string () : aws_cloudwatch_query_definition =
  { id; log_group_names; name; query_string }

type t = {
  id : string prop;
  log_group_names : string list prop;
  name : string prop;
  query_definition_id : string prop;
  query_string : string prop;
}

let make ?id ?log_group_names ~name ~query_string __id =
  let __type = "aws_cloudwatch_query_definition" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       log_group_names = Prop.computed __type __id "log_group_names";
       name = Prop.computed __type __id "name";
       query_definition_id =
         Prop.computed __type __id "query_definition_id";
       query_string = Prop.computed __type __id "query_string";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_query_definition
        (aws_cloudwatch_query_definition ?id ?log_group_names ~name
           ~query_string ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?log_group_names ~name ~query_string __id
    =
  let (r : _ Tf_core.resource) =
    make ?id ?log_group_names ~name ~query_string __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
