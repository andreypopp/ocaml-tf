(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ebs_fast_snapshot_restore = {
  availability_zone : string prop;  (** availability_zone *)
  snapshot_id : string prop;  (** snapshot_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ebs_fast_snapshot_restore *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_ebs_fast_snapshot_restore ?timeouts ~availability_zone
    ~snapshot_id () : aws_ebs_fast_snapshot_restore =
  { availability_zone; snapshot_id; timeouts }

type t = {
  availability_zone : string prop;
  id : string prop;
  snapshot_id : string prop;
  state : string prop;
}

let make ?timeouts ~availability_zone ~snapshot_id __id =
  let __type = "aws_ebs_fast_snapshot_restore" in
  let __attrs =
    ({
       availability_zone =
         Prop.computed __type __id "availability_zone";
       id = Prop.computed __type __id "id";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ebs_fast_snapshot_restore
        (aws_ebs_fast_snapshot_restore ?timeouts ~availability_zone
           ~snapshot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?timeouts ~availability_zone ~snapshot_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?timeouts ~availability_zone ~snapshot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
