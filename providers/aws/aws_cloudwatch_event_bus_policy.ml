(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_cloudwatch_event_bus_policy = {
  event_bus_name : string prop option; [@option]
      (** event_bus_name *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_bus_policy *)

let aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy () :
    aws_cloudwatch_event_bus_policy =
  { event_bus_name; id; policy }

type t = {
  event_bus_name : string prop;
  id : string prop;
  policy : string prop;
}

let make ?event_bus_name ?id ~policy __id =
  let __type = "aws_cloudwatch_event_bus_policy" in
  let __attrs =
    ({
       event_bus_name = Prop.computed __type __id "event_bus_name";
       id = Prop.computed __type __id "id";
       policy = Prop.computed __type __id "policy";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_cloudwatch_event_bus_policy
        (aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy
           ());
    attrs = __attrs;
  }

let register ?tf_module ?event_bus_name ?id ~policy __id =
  let (r : _ Tf_core.resource) =
    make ?event_bus_name ?id ~policy __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
