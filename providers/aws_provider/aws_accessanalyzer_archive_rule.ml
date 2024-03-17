(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_accessanalyzer_archive_rule__filter = {
  contains : string list option; [@option]  (** contains *)
  criteria : string;  (** criteria *)
  eq : string list option; [@option]  (** eq *)
  exists : string option; [@option]  (** exists *)
  neq : string list option; [@option]  (** neq *)
}
[@@deriving yojson_of]
(** aws_accessanalyzer_archive_rule__filter *)

type aws_accessanalyzer_archive_rule = {
  analyzer_name : string;  (** analyzer_name *)
  rule_name : string;  (** rule_name *)
  filter : aws_accessanalyzer_archive_rule__filter list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_archive_rule *)

let aws_accessanalyzer_archive_rule ~analyzer_name ~rule_name ~filter
    __resource_id =
  let __resource_type = "aws_accessanalyzer_archive_rule" in
  let __resource = { analyzer_name; rule_name; filter } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_accessanalyzer_archive_rule __resource);
  ()
