(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_glue_data_quality_ruleset__target_table = {
  catalog_id : string option; [@option]  (** catalog_id *)
  database_name : string;  (** database_name *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset__target_table *)

type aws_glue_data_quality_ruleset = {
  description : string option; [@option]  (** description *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  ruleset : string;  (** ruleset *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]
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
