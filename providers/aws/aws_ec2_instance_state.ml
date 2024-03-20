(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_ec2_instance_state = {
  force : bool prop option; [@option]  (** force *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  state : string prop;  (** state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_ec2_instance_state *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_ec2_instance_state ?force ?id ?timeouts ~instance_id ~state
    () : aws_ec2_instance_state =
  { force; id; instance_id; state; timeouts }

type t = {
  force : bool prop;
  id : string prop;
  instance_id : string prop;
  state : string prop;
}

let make ?force ?id ?timeouts ~instance_id ~state __id =
  let __type = "aws_ec2_instance_state" in
  let __attrs =
    ({
       force = Prop.computed __type __id "force";
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ec2_instance_state
        (aws_ec2_instance_state ?force ?id ?timeouts ~instance_id
           ~state ());
    attrs = __attrs;
  }

let register ?tf_module ?force ?id ?timeouts ~instance_id ~state __id
    =
  let (r : _ Tf_core.resource) =
    make ?force ?id ?timeouts ~instance_id ~state __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
