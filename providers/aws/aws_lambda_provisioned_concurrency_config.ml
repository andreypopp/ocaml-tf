(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_lambda_provisioned_concurrency_config = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  provisioned_concurrent_executions : float prop;
      (** provisioned_concurrent_executions *)
  qualifier : string prop;  (** qualifier *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_lambda_provisioned_concurrency_config *)

let timeouts ?create ?update () : timeouts = { create; update }

let aws_lambda_provisioned_concurrency_config ?id ?skip_destroy
    ?timeouts ~function_name ~provisioned_concurrent_executions
    ~qualifier () : aws_lambda_provisioned_concurrency_config =
  {
    function_name;
    id;
    provisioned_concurrent_executions;
    qualifier;
    skip_destroy;
    timeouts;
  }

type t = {
  function_name : string prop;
  id : string prop;
  provisioned_concurrent_executions : float prop;
  qualifier : string prop;
  skip_destroy : bool prop;
}

let make ?id ?skip_destroy ?timeouts ~function_name
    ~provisioned_concurrent_executions ~qualifier __id =
  let __type = "aws_lambda_provisioned_concurrency_config" in
  let __attrs =
    ({
       function_name = Prop.computed __type __id "function_name";
       id = Prop.computed __type __id "id";
       provisioned_concurrent_executions =
         Prop.computed __type __id
           "provisioned_concurrent_executions";
       qualifier = Prop.computed __type __id "qualifier";
       skip_destroy = Prop.computed __type __id "skip_destroy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lambda_provisioned_concurrency_config
        (aws_lambda_provisioned_concurrency_config ?id ?skip_destroy
           ?timeouts ~function_name
           ~provisioned_concurrent_executions ~qualifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?skip_destroy ?timeouts ~function_name
    ~provisioned_concurrent_executions ~qualifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?skip_destroy ?timeouts ~function_name
      ~provisioned_concurrent_executions ~qualifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
