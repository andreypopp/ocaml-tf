(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_glue_data_quality_ruleset__target_table = {
  catalog_id : string option; [@option]  (** catalog_id *)
  database_name : string;  (** database_name *)
  table_name : string;  (** table_name *)
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset__target_table *)

type aws_glue_data_quality_ruleset = {
  description : string option; [@option]  (** description *)
  name : string;  (** name *)
  ruleset : string;  (** ruleset *)
  tags : (string * string) list option; [@option]  (** tags *)
  target_table : aws_glue_data_quality_ruleset__target_table list;
}
[@@deriving yojson_of]
(** aws_glue_data_quality_ruleset *)

let aws_glue_data_quality_ruleset ?description ?tags ~name ~ruleset
    ~target_table __resource_id =
  let __resource_type = "aws_glue_data_quality_ruleset" in
  let __resource =
    { description; name; ruleset; tags; target_table }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_glue_data_quality_ruleset __resource);
  ()
