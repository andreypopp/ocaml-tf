(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_cloudwatch_event_permission__condition = {
  key : string;  (** key *)
  type_ : string; [@key "type"]  (** type *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_permission__condition *)

type aws_cloudwatch_event_permission = {
  action : string option; [@option]  (** action *)
  event_bus_name : string option; [@option]  (** event_bus_name *)
  principal : string;  (** principal *)
  statement_id : string;  (** statement_id *)
  condition : aws_cloudwatch_event_permission__condition list;
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_permission *)

let aws_cloudwatch_event_permission ?action ?event_bus_name
    ~principal ~statement_id ~condition __resource_id =
  let __resource_type = "aws_cloudwatch_event_permission" in
  let __resource =
    { action; event_bus_name; principal; statement_id; condition }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_permission __resource);
  ()
