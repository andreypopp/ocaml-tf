(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_rule_group_namespace = {
  data : string prop;  (** data *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_prometheus_rule_group_namespace *)

let aws_prometheus_rule_group_namespace ?id ~data ~name ~workspace_id
    () : aws_prometheus_rule_group_namespace =
  { data; id; name; workspace_id }

type t = {
  data : string prop;
  id : string prop;
  name : string prop;
  workspace_id : string prop;
}

let make ?id ~data ~name ~workspace_id __id =
  let __type = "aws_prometheus_rule_group_namespace" in
  let __attrs =
    ({
       data = Prop.computed __type __id "data";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_rule_group_namespace
        (aws_prometheus_rule_group_namespace ?id ~data ~name
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~data ~name ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~data ~name ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
