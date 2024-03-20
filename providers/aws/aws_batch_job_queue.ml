(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type compute_environment_order = {
  compute_environment : string prop;  (** compute_environment *)
  order : float prop;  (** order *)
}
[@@deriving yojson_of]
(** compute_environment_order *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_batch_job_queue = {
  compute_environments : string prop list option; [@option]
      (** compute_environments *)
  name : string prop;  (** name *)
  priority : float prop;  (** priority *)
  scheduling_policy_arn : string prop option; [@option]
      (** scheduling_policy_arn *)
  state : string prop;  (** state *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  compute_environment_order : compute_environment_order list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_batch_job_queue *)

let compute_environment_order ~compute_environment ~order () :
    compute_environment_order =
  { compute_environment; order }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_batch_job_queue ?compute_environments ?scheduling_policy_arn
    ?tags ?timeouts ~name ~priority ~state ~compute_environment_order
    () : aws_batch_job_queue =
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

let make ?compute_environments ?scheduling_policy_arn ?tags ?timeouts
    ~name ~priority ~state ~compute_environment_order __id =
  let __type = "aws_batch_job_queue" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       compute_environments =
         Prop.computed __type __id "compute_environments";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       priority = Prop.computed __type __id "priority";
       scheduling_policy_arn =
         Prop.computed __type __id "scheduling_policy_arn";
       state = Prop.computed __type __id "state";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_batch_job_queue
        (aws_batch_job_queue ?compute_environments
           ?scheduling_policy_arn ?tags ?timeouts ~name ~priority
           ~state ~compute_environment_order ());
    attrs = __attrs;
  }

let register ?tf_module ?compute_environments ?scheduling_policy_arn
    ?tags ?timeouts ~name ~priority ~state ~compute_environment_order
    __id =
  let (r : _ Tf_core.resource) =
    make ?compute_environments ?scheduling_policy_arn ?tags ?timeouts
      ~name ~priority ~state ~compute_environment_order __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
