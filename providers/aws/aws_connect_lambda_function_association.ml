(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_connect_lambda_function_association = {
  function_arn : string prop;  (** function_arn *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
}
[@@deriving yojson_of]
(** aws_connect_lambda_function_association *)

let aws_connect_lambda_function_association ?id ~function_arn
    ~instance_id () : aws_connect_lambda_function_association =
  { function_arn; id; instance_id }

type t = {
  function_arn : string prop;
  id : string prop;
  instance_id : string prop;
}

let make ?id ~function_arn ~instance_id __id =
  let __type = "aws_connect_lambda_function_association" in
  let __attrs =
    ({
       function_arn = Prop.computed __type __id "function_arn";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_lambda_function_association
        (aws_connect_lambda_function_association ?id ~function_arn
           ~instance_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~function_arn ~instance_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~function_arn ~instance_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
