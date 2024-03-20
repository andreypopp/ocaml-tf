(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_snapshot_create_volume_permission = {
  account_id : string prop;  (** account_id *)
  id : string prop option; [@option]  (** id *)
  snapshot_id : string prop;  (** snapshot_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_snapshot_create_volume_permission *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_snapshot_create_volume_permission ?id ?timeouts ~account_id
    ~snapshot_id () : aws_snapshot_create_volume_permission =
  { account_id; id; snapshot_id; timeouts }

type t = {
  account_id : string prop;
  id : string prop;
  snapshot_id : string prop;
}

let make ?id ?timeouts ~account_id ~snapshot_id __id =
  let __type = "aws_snapshot_create_volume_permission" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       snapshot_id = Prop.computed __type __id "snapshot_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_snapshot_create_volume_permission
        (aws_snapshot_create_volume_permission ?id ?timeouts
           ~account_id ~snapshot_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?timeouts ~account_id ~snapshot_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ?timeouts ~account_id ~snapshot_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
