(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_filter__finding_criteria__criterion = {
  equals : string prop list option; [@option]  (** equals *)
  field : string prop;  (** field *)
  greater_than : string prop option; [@option]  (** greater_than *)
  greater_than_or_equal : string prop option; [@option]
      (** greater_than_or_equal *)
  less_than : string prop option; [@option]  (** less_than *)
  less_than_or_equal : string prop option; [@option]
      (** less_than_or_equal *)
  not_equals : string prop list option; [@option]  (** not_equals *)
}
[@@deriving yojson_of]
(** aws_guardduty_filter__finding_criteria__criterion *)

type aws_guardduty_filter__finding_criteria = {
  criterion : aws_guardduty_filter__finding_criteria__criterion list;
}
[@@deriving yojson_of]
(** aws_guardduty_filter__finding_criteria *)

type aws_guardduty_filter = {
  action : string prop;  (** action *)
  description : string prop option; [@option]  (** description *)
  detector_id : string prop;  (** detector_id *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  rank : float prop;  (** rank *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  finding_criteria : aws_guardduty_filter__finding_criteria list;
}
[@@deriving yojson_of]
(** aws_guardduty_filter *)

type t = {
  action : string prop;
  arn : string prop;
  description : string prop;
  detector_id : string prop;
  id : string prop;
  name : string prop;
  rank : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_guardduty_filter ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria __resource_id =
  let __resource_type = "aws_guardduty_filter" in
  let __resource =
    ({
       action;
       description;
       detector_id;
       id;
       name;
       rank;
       tags;
       tags_all;
       finding_criteria;
     }
      : aws_guardduty_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_filter __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       detector_id =
         Prop.computed __resource_type __resource_id "detector_id";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       rank = Prop.computed __resource_type __resource_id "rank";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
