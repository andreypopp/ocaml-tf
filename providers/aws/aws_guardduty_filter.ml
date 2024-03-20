(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type finding_criteria__criterion = {
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
(** finding_criteria__criterion *)

type finding_criteria = {
  criterion : finding_criteria__criterion list;
}
[@@deriving yojson_of]
(** finding_criteria *)

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
  finding_criteria : finding_criteria list;
}
[@@deriving yojson_of]
(** aws_guardduty_filter *)

let finding_criteria__criterion ?equals ?greater_than
    ?greater_than_or_equal ?less_than ?less_than_or_equal ?not_equals
    ~field () : finding_criteria__criterion =
  {
    equals;
    field;
    greater_than;
    greater_than_or_equal;
    less_than;
    less_than_or_equal;
    not_equals;
  }

let finding_criteria ~criterion () : finding_criteria = { criterion }

let aws_guardduty_filter ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria () :
    aws_guardduty_filter =
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

let make ?description ?id ?tags ?tags_all ~action ~detector_id ~name
    ~rank ~finding_criteria __id =
  let __type = "aws_guardduty_filter" in
  let __attrs =
    ({
       action = Prop.computed __type __id "action";
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       detector_id = Prop.computed __type __id "detector_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       rank = Prop.computed __type __id "rank";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_guardduty_filter
        (aws_guardduty_filter ?description ?id ?tags ?tags_all
           ~action ~detector_id ~name ~rank ~finding_criteria ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~action
    ~detector_id ~name ~rank ~finding_criteria __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~action ~detector_id ~name
      ~rank ~finding_criteria __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
