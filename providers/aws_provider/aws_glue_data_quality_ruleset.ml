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

let aws_glue_data_quality_ruleset ?description ?id ?tags ?tags_all
    ~name ~ruleset ~target_table __resource_id =
  let __resource_type = "aws_glue_data_quality_ruleset" in
  let __resource =
    { description; id; name; ruleset; tags; tags_all; target_table }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_data_quality_ruleset __resource);
  ()
