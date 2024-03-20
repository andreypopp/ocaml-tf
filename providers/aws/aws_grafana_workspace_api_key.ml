(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_grafana_workspace_api_key = {
  id : string prop option; [@option]  (** id *)
  key_name : string prop;  (** key_name *)
  key_role : string prop;  (** key_role *)
  seconds_to_live : float prop;  (** seconds_to_live *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_grafana_workspace_api_key *)

let aws_grafana_workspace_api_key ?id ~key_name ~key_role
    ~seconds_to_live ~workspace_id () : aws_grafana_workspace_api_key
    =
  { id; key_name; key_role; seconds_to_live; workspace_id }

type t = {
  id : string prop;
  key : string prop;
  key_name : string prop;
  key_role : string prop;
  seconds_to_live : float prop;
  workspace_id : string prop;
}

let make ?id ~key_name ~key_role ~seconds_to_live ~workspace_id __id
    =
  let __type = "aws_grafana_workspace_api_key" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       key_name = Prop.computed __type __id "key_name";
       key_role = Prop.computed __type __id "key_role";
       seconds_to_live = Prop.computed __type __id "seconds_to_live";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_grafana_workspace_api_key
        (aws_grafana_workspace_api_key ?id ~key_name ~key_role
           ~seconds_to_live ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_name ~key_role ~seconds_to_live
    ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~key_name ~key_role ~seconds_to_live ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
