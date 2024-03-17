(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_batch_job_queue__compute_environment_order = {
  compute_environment : string;  (** compute_environment *)
  order : float;  (** order *)
}
[@@deriving yojson_of]
(** aws_batch_job_queue__compute_environment_order *)

type aws_batch_job_queue__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_batch_job_queue__timeouts *)

type aws_batch_job_queue = {
  compute_environments : string list option; [@option]
      (** compute_environments *)
  name : string;  (** name *)
  priority : float;  (** priority *)
  scheduling_policy_arn : string option; [@option]
      (** scheduling_policy_arn *)
  state : string;  (** state *)
  tags : (string * string) list option; [@option]  (** tags *)
  compute_environment_order :
    aws_batch_job_queue__compute_environment_order list;
  timeouts : aws_batch_job_queue__timeouts option;
}
[@@deriving yojson_of]
(** aws_batch_job_queue *)

let aws_batch_job_queue ?compute_environments ?scheduling_policy_arn
    ?tags ?timeouts ~name ~priority ~state ~compute_environment_order
    __resource_id =
  let __resource_type = "aws_batch_job_queue" in
  let __resource =
    {
      compute_environments;
      name;
      priority;
      scheduling_policy_arn;
      state;
      tags;
      compute_environment_order;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_job_queue __resource);
  ()
