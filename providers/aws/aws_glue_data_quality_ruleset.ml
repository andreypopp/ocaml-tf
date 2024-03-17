(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_data_quality_ruleset__target_table = {
  catalog_id : string prop option; [@option]  (** catalog_id *)
  database_name : string prop;  (** database_name *)
  table_name : string prop;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset__target_table *)

type aws_glue_data_quality_ruleset = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  ruleset : string prop;  (** ruleset *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  target_table : aws_glue_data_quality_ruleset__target_table list;
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset *)

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

let aws_glue_data_quality_ruleset ?description ?id ?tags ?tags_all
    ~name ~ruleset ~target_table __resource_id =
  let __resource_type = "aws_glue_data_quality_ruleset" in
  let __resource =
    ({ description; id; name; ruleset; tags; tags_all; target_table }
      : aws_glue_data_quality_ruleset)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_data_quality_ruleset __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       created_on =
         Prop.computed __resource_type __resource_id "created_on";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       last_modified_on =
         Prop.computed __resource_type __resource_id
           "last_modified_on";
       name = Prop.computed __resource_type __resource_id "name";
       recommendation_run_id =
         Prop.computed __resource_type __resource_id
           "recommendation_run_id";
       ruleset =
         Prop.computed __resource_type __resource_id "ruleset";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
