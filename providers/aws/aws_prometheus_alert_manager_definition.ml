(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_prometheus_alert_manager_definition = {
  definition : string prop;  (** definition *)
  id : string prop option; [@option]  (** id *)
  workspace_id : string prop;  (** workspace_id *)
}
[@@deriving yojson_of]
(** aws_prometheus_alert_manager_definition *)

let aws_prometheus_alert_manager_definition ?id ~definition
    ~workspace_id () : aws_prometheus_alert_manager_definition =
  { definition; id; workspace_id }

type t = {
  definition : string prop;
  id : string prop;
  workspace_id : string prop;
}

let make ?id ~definition ~workspace_id __id =
  let __type = "aws_prometheus_alert_manager_definition" in
  let __attrs =
    ({
       definition = Prop.computed __type __id "definition";
       id = Prop.computed __type __id "id";
       workspace_id = Prop.computed __type __id "workspace_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_alert_manager_definition
        (aws_prometheus_alert_manager_definition ?id ~definition
           ~workspace_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~definition ~workspace_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~definition ~workspace_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
