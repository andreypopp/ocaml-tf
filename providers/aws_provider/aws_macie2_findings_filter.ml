(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_findings_filter__finding_criteria__criterion = {
  eq : string list option; [@option]  (** eq *)
  eq_exact_match : string list option; [@option]
      (** eq_exact_match *)
  field : string;  (** field *)
  gt : string option; [@option]  (** gt *)
  gte : string option; [@option]  (** gte *)
  lt : string option; [@option]  (** lt *)
  lte : string option; [@option]  (** lte *)
  neq : string list option; [@option]  (** neq *)
}
[@@deriving yojson_of]
(** aws_macie2_findings_filter__finding_criteria__criterion *)

type aws_macie2_findings_filter__finding_criteria = {
  criterion :
    aws_macie2_findings_filter__finding_criteria__criterion list;
}
[@@deriving yojson_of]
(** aws_macie2_findings_filter__finding_criteria *)

type aws_macie2_findings_filter = {
  action : string;  (** action *)
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string option; [@option]  (** name *)
  name_prefix : string option; [@option]  (** name_prefix *)
  position : float option; [@option]  (** position *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
      (** tags_all *)
  finding_criteria :
    aws_macie2_findings_filter__finding_criteria list;
}
[@@deriving yojson_of]
(** aws_macie2_findings_filter *)

let aws_macie2_findings_filter ?description ?id ?name ?name_prefix
    ?position ?tags ?tags_all ~action ~finding_criteria __resource_id
    =
  let __resource_type = "aws_macie2_findings_filter" in
  let __resource =
    {
      action;
      description;
      id;
      name;
      name_prefix;
      position;
      tags;
      tags_all;
      finding_criteria;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_findings_filter __resource);
  ()
