(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_macie2_findings_filter__finding_criteria__criterion = {
  eq : string prop list option; [@option]  (** eq *)
  eq_exact_match : string prop list option; [@option]
      (** eq_exact_match *)
  field : string prop;  (** field *)
  gt : string prop option; [@option]  (** gt *)
  gte : string prop option; [@option]  (** gte *)
  lt : string prop option; [@option]  (** lt *)
  lte : string prop option; [@option]  (** lte *)
  neq : string prop list option; [@option]  (** neq *)
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
  action : string prop;  (** action *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  position : float prop option; [@option]  (** position *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  finding_criteria :
    aws_macie2_findings_filter__finding_criteria list;
}
[@@deriving yojson_of]
(** aws_macie2_findings_filter *)

type t = {
  action : string prop;
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  position : float prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_macie2_findings_filter ?description ?id ?name ?name_prefix
    ?position ?tags ?tags_all ~action ~finding_criteria __resource_id
    =
  let __resource_type = "aws_macie2_findings_filter" in
  let __resource =
    ({
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
      : aws_macie2_findings_filter)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_macie2_findings_filter __resource);
  let __resource_attributes =
    ({
       action = Prop.computed __resource_type __resource_id "action";
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
       position =
         Prop.computed __resource_type __resource_id "position";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
