(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lambda_provisioned_concurrency_config__timeouts = {
  create : string prop option; [@option]  (** create *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_lambda_provisioned_concurrency_config__timeouts *)

type aws_lambda_provisioned_concurrency_config = {
  function_name : string prop;  (** function_name *)
  id : string prop option; [@option]  (** id *)
  provisioned_concurrent_executions : float prop;
      (** provisioned_concurrent_executions *)
  qualifier : string prop;  (** qualifier *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  timeouts :
    aws_lambda_provisioned_concurrency_config__timeouts option;
}
[@@deriving yojson_of]
(** aws_lambda_provisioned_concurrency_config *)

let aws_lambda_provisioned_concurrency_config ?id ?skip_destroy
    ?timeouts ~function_name ~provisioned_concurrent_executions
    ~qualifier __resource_id =
  let __resource_type =
    "aws_lambda_provisioned_concurrency_config"
  in
  let __resource =
    {
      function_name;
      id;
      provisioned_concurrent_executions;
      qualifier;
      skip_destroy;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lambda_provisioned_concurrency_config __resource);
  ()
