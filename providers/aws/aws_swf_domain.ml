(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_swf_domain = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  workflow_execution_retention_period_in_days : string prop;
      (** workflow_execution_retention_period_in_days *)
}
[@@deriving yojson_of]
(** aws_swf_domain *)

let aws_swf_domain ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days () :
    aws_swf_domain =
  {
    description;
    id;
    name;
    name_prefix;
    tags;
    tags_all;
    workflow_execution_retention_period_in_days;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  workflow_execution_retention_period_in_days : string prop;
}

let make ?description ?id ?name ?name_prefix ?tags ?tags_all
    ~workflow_execution_retention_period_in_days __id =
  let __type = "aws_swf_domain" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       workflow_execution_retention_period_in_days =
         Prop.computed __type __id
           "workflow_execution_retention_period_in_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_swf_domain
        (aws_swf_domain ?description ?id ?name ?name_prefix ?tags
           ?tags_all ~workflow_execution_retention_period_in_days ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?name ?name_prefix ?tags
    ?tags_all ~workflow_execution_retention_period_in_days __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?name ?name_prefix ?tags ?tags_all
      ~workflow_execution_retention_period_in_days __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
