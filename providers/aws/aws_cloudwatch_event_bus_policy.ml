(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_bus_policy = {
  event_bus_name : string prop option; [@option]
      (** event_bus_name *)
  id : string prop option; [@option]  (** id *)
  policy : string prop;  (** policy *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_bus_policy *)

type t = {
  event_bus_name : string prop;
  id : string prop;
  policy : string prop;
}

let aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy
    __resource_id =
  let __resource_type = "aws_cloudwatch_event_bus_policy" in
  let __resource =
    ({ event_bus_name; id; policy }
      : aws_cloudwatch_event_bus_policy)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_bus_policy __resource);
  let __resource_attributes =
    ({
       event_bus_name =
         Prop.computed __resource_type __resource_id "event_bus_name";
       id = Prop.computed __resource_type __resource_id "id";
       policy = Prop.computed __resource_type __resource_id "policy";
     }
      : t)
  in
  __resource_attributes
