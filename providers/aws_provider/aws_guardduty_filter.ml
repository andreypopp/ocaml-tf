(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_guardduty_filter__finding_criteria__criterion = {
  equals : string list option; [@option]  (** equals *)
  field : string;  (** field *)
  greater_than : string option; [@option]  (** greater_than *)
  greater_than_or_equal : string option; [@option]
      (** greater_than_or_equal *)
  less_than : string option; [@option]  (** less_than *)
  less_than_or_equal : string option; [@option]
      (** less_than_or_equal *)
  not_equals : string list option; [@option]  (** not_equals *)
}
[@@deriving yojson_of]
(** aws_guardduty_filter__finding_criteria__criterion *)

type aws_guardduty_filter__finding_criteria = {
  criterion : aws_guardduty_filter__finding_criteria__criterion list;
}
[@@deriving yojson_of]
(** aws_guardduty_filter__finding_criteria *)

type aws_guardduty_filter = {
  action : string;  (** action *)
  description : string option; [@option]  (** description *)
  detector_id : string;  (** detector_id *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  rank : float;  (** rank *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  finding_criteria : aws_guardduty_filter__finding_criteria list;
}
[@@deriving yojson_of]
(** aws_guardduty_filter *)

let aws_guardduty_filter ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria __resource_id =
  let __resource_type = "aws_guardduty_filter" in
  let __resource =
    {
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
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_guardduty_filter __resource);
  ()
