(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_log_stream = {
  id : string prop option; [@option]  (** id *)
  log_group_name : string prop;  (** log_group_name *)
  name : string prop;  (** name *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_log_stream *)

let aws_cloudwatch_log_stream ?id ~log_group_name ~name () :
    aws_cloudwatch_log_stream =
  { id; log_group_name; name }

type t = {
  arn : string prop;
  id : string prop;
  log_group_name : string prop;
  name : string prop;
}

let make ?id ~log_group_name ~name __id =
  let __type = "aws_cloudwatch_log_stream" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       log_group_name = Prop.computed __type __id "log_group_name";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_log_stream
        (aws_cloudwatch_log_stream ?id ~log_group_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~log_group_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~log_group_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
