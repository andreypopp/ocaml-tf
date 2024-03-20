(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_amplify_backend_environment = {
  app_id : string prop;  (** app_id *)
  deployment_artifacts : string prop option; [@option]
      (** deployment_artifacts *)
  environment_name : string prop;  (** environment_name *)
  id : string prop option; [@option]  (** id *)
  stack_name : string prop option; [@option]  (** stack_name *)
}
[@@deriving yojson_of]
(** aws_amplify_backend_environment *)

let aws_amplify_backend_environment ?deployment_artifacts ?id
    ?stack_name ~app_id ~environment_name () :
    aws_amplify_backend_environment =
  { app_id; deployment_artifacts; environment_name; id; stack_name }

type t = {
  app_id : string prop;
  arn : string prop;
  deployment_artifacts : string prop;
  environment_name : string prop;
  id : string prop;
  stack_name : string prop;
}

let make ?deployment_artifacts ?id ?stack_name ~app_id
    ~environment_name __id =
  let __type = "aws_amplify_backend_environment" in
  let __attrs =
    ({
       app_id = Prop.computed __type __id "app_id";
       arn = Prop.computed __type __id "arn";
       deployment_artifacts =
         Prop.computed __type __id "deployment_artifacts";
       environment_name =
         Prop.computed __type __id "environment_name";
       id = Prop.computed __type __id "id";
       stack_name = Prop.computed __type __id "stack_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_amplify_backend_environment
        (aws_amplify_backend_environment ?deployment_artifacts ?id
           ?stack_name ~app_id ~environment_name ());
    attrs = __attrs;
  }

let register ?tf_module ?deployment_artifacts ?id ?stack_name ~app_id
    ~environment_name __id =
  let (r : _ Tf_core.resource) =
    make ?deployment_artifacts ?id ?stack_name ~app_id
      ~environment_name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
