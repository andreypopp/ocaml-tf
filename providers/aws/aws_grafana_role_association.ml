(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_grafana_role_association = {
  group_ids : string prop list option; [@option]  (** group_ids *)
  id : string prop option; [@option]  (** id *)
  role : string prop;  (** role *)
  user_ids : string prop list option; [@option]  (** user_ids *)
  workspace_id : string prop;  (** workspace_id *)
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_grafana_role_association *)

let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_grafana_role_association ?group_ids ?id ?user_ids ?timeouts
    ~role ~workspace_id () : aws_grafana_role_association =
  { group_ids; id; role; user_ids; workspace_id; timeouts }

type t = {
  group_ids : string list prop;
  id : string prop;
  role : string prop;
  user_ids : string list prop;
  workspace_id : string prop;
}

let make ?group_ids ?id ?user_ids ?timeouts ~role ~workspace_id __id
    =
  let __type = "aws_grafana_role_association" in
  let __attrs =
    ({
       group_ids = Prop.computed __type __id "group_ids";
       id = Prop.computed __type __id "id";
       role = Prop.computed __type __id "role";
       user_ids = Prop.computed __type __id "user_ids";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_role_association
        (aws_grafana_role_association ?group_ids ?id ?user_ids
           ?timeouts ~role ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?group_ids ?id ?user_ids ?timeouts ~role
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?group_ids ?id ?user_ids ?timeouts ~role ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
