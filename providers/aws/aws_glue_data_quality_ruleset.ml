(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target_table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** target_table *)

type aws_glue_data_quality_ruleset = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ruleset : string prop;  (** ruleset *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_table : target_table list;
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset *)

let target_table ?catalog_id ~database_name ~table_name () :
    target_table =
  { catalog_id; database_name; table_name }

let aws_glue_data_quality_ruleset ?description ?id ?tags ?tags_all
    ~name ~ruleset ~target_table () : aws_glue_data_quality_ruleset =
  { description; id; name; ruleset; tags; tags_all; target_table }

type t = {
  arn : string prop;
  created_on : string prop;
  description : string prop;
  id : string prop;
  last_modified_on : string prop;
  name : string prop;
  recommendation_run_id : string prop;
  ruleset : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~name ~ruleset
    ~target_table __id =
  let __type = "aws_glue_data_quality_ruleset" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       created_on = Prop.computed __type __id "created_on";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_modified_on =
         Prop.computed __type __id "last_modified_on";
       name = Prop.computed __type __id "name";
       recommendation_run_id =
         Prop.computed __type __id "recommendation_run_id";
       ruleset = Prop.computed __type __id "ruleset";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_glue_data_quality_ruleset
        (aws_glue_data_quality_ruleset ?description ?id ?tags
           ?tags_all ~name ~ruleset ~target_table ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all ~name
    ~ruleset ~target_table __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~name ~ruleset
      ~target_table __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
