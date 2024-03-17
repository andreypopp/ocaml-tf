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

type t = {
  consumer_arn : string prop;
  id : string prop;
  tracker_name : string prop;
}

let aws_location_tracker_association ?id ?timeouts ~consumer_arn
    ~tracker_name __resource_id =
  let __resource_type = "aws_location_tracker_association" in
  let __resource =
    ({ consumer_arn; id; tracker_name; timeouts }
      : aws_location_tracker_association)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_tracker_association __resource);
  let __resource_attributes =
    ({
       consumer_arn =
         Prop.computed __resource_type __resource_id "consumer_arn";
       id = Prop.computed __resource_type __resource_id "id";
       tracker_name =
         Prop.computed __resource_type __resource_id "tracker_name";
     }
      : t)
  in
  __resource_attributes
