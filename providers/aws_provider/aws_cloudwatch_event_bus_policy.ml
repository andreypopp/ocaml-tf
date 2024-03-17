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

let aws_cloudwatch_event_bus_policy ?event_bus_name ?id ~policy
    __resource_id =
  let __resource_type = "aws_cloudwatch_event_bus_policy" in
  let __resource = { event_bus_name; id; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_bus_policy __resource);
  ()
