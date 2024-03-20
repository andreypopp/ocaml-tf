(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_glue_workflow = {
  default_run_properties : (string * string prop) list option;
      [@option]
      (** default_run_properties *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  max_concurrent_runs : float prop option; [@option]
      (** max_concurrent_runs *)
  name : string prop option; [@option]  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_glue_workflow *)

let aws_glue_workflow ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all () : aws_glue_workflow
    =
  {
    default_run_properties;
    description;
    id;
    max_concurrent_runs;
    name;
    tags;
    tags_all;
  }

type t = {
  arn : string prop;
  default_run_properties : (string * string) list prop;
  description : string prop;
  id : string prop;
  max_concurrent_runs : float prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __id =
  let __type = "aws_glue_workflow" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       default_run_properties =
         Prop.computed __type __id "default_run_properties";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       max_concurrent_runs =
         Prop.computed __type __id "max_concurrent_runs";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_workflow
        (aws_glue_workflow ?default_run_properties ?description ?id
           ?max_concurrent_runs ?name ?tags ?tags_all ());
    attrs = __attrs;
  }

let register ?tf_module ?default_run_properties ?description ?id
    ?max_concurrent_runs ?name ?tags ?tags_all __id =
  let (r : _ Tf_core.resource) =
    make ?default_run_properties ?description ?id
      ?max_concurrent_runs ?name ?tags ?tags_all __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
