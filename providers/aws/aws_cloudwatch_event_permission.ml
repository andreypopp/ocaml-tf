(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type condition = {
  key : string prop;  (** key *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** condition *)

type aws_cloudwatch_event_permission = {
  action : string prop option; [@option]  (** action *)
  event_bus_name : string prop option; [@option]
      (** event_bus_name *)
  id : string prop option; [@option]  (** id *)
  principal : string prop;  (** principal *)
  statement_id : string prop;  (** statement_id *)
  condition : condition list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_permission *)

let condition ~key ~type_ ~value () : condition =
  { key; type_; value }

let aws_cloudwatch_event_permission ?action ?event_bus_name ?id
    ~principal ~statement_id ~condition () :
    aws_cloudwatch_event_permission =
  { action; event_bus_name; id; principal; statement_id; condition }

type t = {
  action : string prop;
  event_bus_name : string prop;
  id : string prop;
  principal : string prop;
  statement_id : string prop;
}

let make ?action ?event_bus_name ?id ~principal ~statement_id
    ~condition __id =
  let __type = "aws_cloudwatch_event_permission" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       event_bus_name = Prop.computed __type __id "event_bus_name";
       id = Prop.computed __type __id "id";
       principal = Prop.computed __type __id "principal";
       statement_id = Prop.computed __type __id "statement_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_permission
        (aws_cloudwatch_event_permission ?action ?event_bus_name ?id
           ~principal ~statement_id ~condition ());
    attrs = __attrs;
  }

let register ?tf_module ?action ?event_bus_name ?id ~principal
    ~statement_id ~condition __id =
  let (r : _ Tf_core.resource) =
    make ?action ?event_bus_name ?id ~principal ~statement_id
      ~condition __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
