(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_cloudwatch_event_bus = {
  event_source_name : string option; [@option]
      (** event_source_name *)
  name : string;  (** name *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_cloudwatch_event_bus *)

let aws_cloudwatch_event_bus ?event_source_name ?tags ~name
    __resource_id =
  let __resource_type = "aws_cloudwatch_event_bus" in
  let __resource = { event_source_name; name; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_bus __resource);
  ()
