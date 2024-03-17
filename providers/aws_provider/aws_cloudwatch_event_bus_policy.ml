(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_event_bus_policy = {
  event_bus_name : string option; [@option]  (** event_bus_name *)
  policy : string;  (** policy *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_bus_policy *)

let aws_cloudwatch_event_bus_policy ?event_bus_name ~policy
    __resource_id =
  let __resource_type = "aws_cloudwatch_event_bus_policy" in
  let __resource = { event_bus_name; policy } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_bus_policy __resource);
  ()
