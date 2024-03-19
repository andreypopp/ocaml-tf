(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?action ?event_bus_name ?id ~principal
    ~statement_id ~condition __resource_id =
  let __resource_type = "aws_cloudwatch_event_permission" in
  let __resource =
    aws_cloudwatch_event_permission ?action ?event_bus_name ?id
      ~principal ~statement_id ~condition ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_cloudwatch_event_permission __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       event_bus_name =
         Prop.computed __resource_type __resource_id "event_bus_name";
       id = Prop.computed __resource_type __resource_id "id";
       principal =
         Prop.computed __resource_type __resource_id "principal";
       statement_id =
         Prop.computed __resource_type __resource_id "statement_id";
     }
      : t)
  in
  __resource_attributes
