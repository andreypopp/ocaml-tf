(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type finding_criteria__criterion = {
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
(** finding_criteria__criterion *)

type finding_criteria = {
  criterion : finding_criteria__criterion list;
}
[@@deriving yojson_of]
(** finding_criteria *)

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
  finding_criteria : finding_criteria list;
}
[@@deriving yojson_of]
(** aws_macie2_findings_filter *)

let finding_criteria__criterion ?eq ?eq_exact_match ?gt ?gte ?lt ?lte
    ?neq ~field () : finding_criteria__criterion =
  { eq; eq_exact_match; field; gt; gte; lt; lte; neq }

let finding_criteria ~criterion () : finding_criteria = { criterion }

let aws_macie2_findings_filter ?description ?id ?name ?name_prefix
    ?position ?tags ?tags_all ~action ~finding_criteria () :
    aws_macie2_findings_filter =
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

let make ?description ?id ?name ?name_prefix ?position ?tags
    ?tags_all ~action ~finding_criteria __id =
  let __type = "aws_macie2_findings_filter" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       position = Prop.computed __type __id "position";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_macie2_findings_filter
        (aws_macie2_findings_filter ?description ?id ?name
           ?name_prefix ?position ?tags ?tags_all ~action
           ~finding_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?position
    ?tags ?tags_all ~action ~finding_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?position ?tags
      ?tags_all ~action ~finding_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
