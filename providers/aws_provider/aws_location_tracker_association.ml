(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_tracker_association__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
}
[@@deriving yojson_of]
(** aws_location_tracker_association__timeouts *)

type aws_location_tracker_association = {
  consumer_arn : string prop;  (** consumer_arn *)
  id : string prop option; [@option]  (** id *)
  tracker_name : string prop;  (** tracker_name *)
  timeouts : aws_location_tracker_association__timeouts option;
}
[@@deriving yojson_of]
(** aws_location_tracker_association *)

let aws_location_tracker_association ?id ?timeouts ~consumer_arn
    ~tracker_name __resource_id =
  let __resource_type = "aws_location_tracker_association" in
  let __resource = { consumer_arn; id; tracker_name; timeouts } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_tracker_association __resource);
  ()
