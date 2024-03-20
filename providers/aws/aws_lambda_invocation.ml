(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lambda_invocation = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  input : string prop;  (** input *)
  lifecycle_scope : string prop option; [@option]
      (** lifecycle_scope *)
  qualifier : string prop option; [@option]  (** qualifier *)
  terraform_key : string prop option; [@option]  (** terraform_key *)
  triggers : (string * string prop) list option; [@option]
      (** triggers *)
}
[@@deriving yojson_of]
(** aws_lambda_invocation *)

let aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input () :
    aws_lambda_invocation =
  {
    function_name;
    id;
    input;
    lifecycle_scope;
    qualifier;
    terraform_key;
    triggers;
  }

type t = {
  function_name : string prop;
  id : string prop;
  input : string prop;
  lifecycle_scope : string prop;
  qualifier : string prop;
  result : string prop;
  terraform_key : string prop;
  triggers : (string * string) list prop;
}

let make ?id ?lifecycle_scope ?qualifier ?terraform_key ?triggers
    ~function_name ~input __id =
  let __type = "aws_lambda_invocation" in
  let __attrs =
    ({
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       input = Prop.computed __type __id "input";
       lifecycle_scope = Prop.computed __type __id "lifecycle_scope";
       qualifier = Prop.computed __type __id "qualifier";
       result = Prop.computed __type __id "result";
       terraform_key = Prop.computed __type __id "terraform_key";
       triggers = Prop.computed __type __id "triggers";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_invocation
        (aws_lambda_invocation ?id ?lifecycle_scope ?qualifier
           ?terraform_key ?triggers ~function_name ~input ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?lifecycle_scope ?qualifier
    ?terraform_key ?triggers ~function_name ~input __id =
  let (r : _ Tf_core.resource) =
    make ?id ?lifecycle_scope ?qualifier ?terraform_key ?triggers
      ~function_name ~input __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
