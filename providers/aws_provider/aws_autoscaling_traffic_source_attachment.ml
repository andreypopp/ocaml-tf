(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_autoscaling_traffic_source_attachment__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_autoscaling_traffic_source_attachment__timeouts *)

type aws_autoscaling_traffic_source_attachment__traffic_source = {
  identifier : string prop;  (** identifier *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_autoscaling_traffic_source_attachment__traffic_source *)

type aws_autoscaling_traffic_source_attachment = {
  autoscaling_group_name : string prop;
      (** autoscaling_group_name *)
  id : string prop option; [@option]  (** id *)
  timeouts :
    aws_autoscaling_traffic_source_attachment__timeouts option;
  traffic_source :
    aws_autoscaling_traffic_source_attachment__traffic_source list;
}
[@@deriving yojson_of]
(** aws_autoscaling_traffic_source_attachment *)

let aws_autoscaling_traffic_source_attachment ?id ?timeouts
    ~autoscaling_group_name ~traffic_source __resource_id =
  let __resource_type =
    "aws_autoscaling_traffic_source_attachment"
  in
  let __resource =
    { autoscaling_group_name; id; timeouts; traffic_source }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_autoscaling_traffic_source_attachment __resource);
  ()
