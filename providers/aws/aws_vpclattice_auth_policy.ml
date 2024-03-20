(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_vpclattice_auth_policy = {
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
  resource_identifier : string prop;  (** resource_identifier *)
  state : string prop option; [@option]  (** state *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_vpclattice_auth_policy *)

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_vpclattice_auth_policy ?id ?state ?timeouts ~policy
    ~resource_identifier () : aws_vpclattice_auth_policy =
  { id; policy; resource_identifier; state; timeouts }

type t = {
  id : string prop;
  policy : string prop;
  resource_identifier : string prop;
  state : string prop;
}

let make ?id ?state ?timeouts ~policy ~resource_identifier __id =
  let __type = "aws_vpclattice_auth_policy" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
       resource_identifier =
         Prop.computed __type __id "resource_identifier";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_vpclattice_auth_policy
        (aws_vpclattice_auth_policy ?id ?state ?timeouts ~policy
           ~resource_identifier ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?state ?timeouts ~policy
    ~resource_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?state ?timeouts ~policy ~resource_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
