(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_batch_job_queue__compute_environment_order = {
  compute_environment : string prop;  (** compute_environment *)
  order : float prop;  (** order *)
}
[@@deriving yojson_of]
(** aws_batch_job_queue__compute_environment_order *)

type aws_batch_job_queue__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_batch_job_queue__timeouts *)

type aws_batch_job_queue = {
  compute_environments : string prop list option; [@option]
      (** compute_environments *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  scheduling_policy_arn : string prop option; [@option]
      (** scheduling_policy_arn *)
  state : string prop;  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  compute_environment_order :
    aws_batch_job_queue__compute_environment_order list;
  timeouts : aws_batch_job_queue__timeouts option;
}
[@@deriving yojson_of]
(** aws_batch_job_queue *)

type t = {
  arn : string prop;
  compute_environments : string list prop;
  id : string prop;
  name : string prop;
  priority : float prop;
  scheduling_policy_arn : string prop;
  state : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_batch_job_queue ?compute_environments ?scheduling_policy_arn
    ?tags ?timeouts ~name ~priority ~state ~compute_environment_order
    __resource_id =
  let __resource_type = "aws_batch_job_queue" in
  let __resource =
    ({
       compute_environments;
       name;
       priority;
       scheduling_policy_arn;
       state;
       tags;
       compute_environment_order;
       timeouts;
     }
      : aws_batch_job_queue)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_batch_job_queue __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       compute_environments =
         Prop.computed __resource_type __resource_id
           "compute_environments";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       priority =
         Prop.computed __resource_type __resource_id "priority";
       scheduling_policy_arn =
         Prop.computed __resource_type __resource_id
           "scheduling_policy_arn";
       state = Prop.computed __resource_type __resource_id "state";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
