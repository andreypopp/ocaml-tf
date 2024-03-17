(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_location_tracker = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  position_filtering : string prop option; [@option]
      (** position_filtering *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tracker_name : string prop;  (** tracker_name *)
}
[@@deriving yojson_of]
(** aws_location_tracker *)

type t = {
  create_time : string prop;
  description : string prop;
  id : string prop;
  kms_key_id : string prop;
  position_filtering : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tracker_arn : string prop;
  tracker_name : string prop;
  update_time : string prop;
}

let aws_location_tracker ?description ?id ?kms_key_id
    ?position_filtering ?tags ?tags_all ~tracker_name __resource_id =
  let __resource_type = "aws_location_tracker" in
  let __resource =
    ({
       description;
       id;
       kms_key_id;
       position_filtering;
       tags;
       tags_all;
       tracker_name;
     }
      : aws_location_tracker)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_location_tracker __resource);
  let __resource_attributes =
    ({
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       kms_key_id =
         Prop.computed __resource_type __resource_id "kms_key_id";
       position_filtering =
         Prop.computed __resource_type __resource_id
           "position_filtering";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       tracker_arn =
         Prop.computed __resource_type __resource_id "tracker_arn";
       tracker_name =
         Prop.computed __resource_type __resource_id "tracker_name";
       update_time =
         Prop.computed __resource_type __resource_id "update_time";
     }
      : t)
  in
  __resource_attributes
