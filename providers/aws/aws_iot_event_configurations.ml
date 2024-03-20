(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_iot_event_configurations = {
  event_configurations : (string * bool prop) list;
      (** event_configurations *)
  id : string prop option; [@option]  (** id *)
}
[@@deriving yojson_of]
(** aws_iot_event_configurations *)

let aws_iot_event_configurations ?id ~event_configurations () :
    aws_iot_event_configurations =
  { event_configurations; id }

type t = {
  event_configurations : (string * bool) list prop;
  id : string prop;
}

let make ?id ~event_configurations __id =
  let __type = "aws_iot_event_configurations" in
  let __attrs =
    ({
       event_configurations =
         Prop.computed __type __id "event_configurations";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_iot_event_configurations
        (aws_iot_event_configurations ?id ~event_configurations ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~event_configurations __id =
  let (r : _ Tf_core.resource) =
    make ?id ~event_configurations __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
