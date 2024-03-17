(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_accessanalyzer_archive_rule__filter = {
  contains : string prop list option; [@option]  (** contains *)
  criteria : string prop;  (** criteria *)
  eq : string prop list option; [@option]  (** eq *)
  exists : string prop option; [@option]  (** exists *)
  neq : string prop list option; [@option]  (** neq *)
}
[@@deriving yojson_of]
(** aws_accessanalyzer_archive_rule__filter *)

type aws_accessanalyzer_archive_rule = {
  analyzer_name : string prop;  (** analyzer_name *)
  id : string prop option; [@option]  (** id *)
  rule_name : string prop;  (** rule_name *)
  filter : aws_accessanalyzer_archive_rule__filter list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_archive_rule *)

type t = {
  analyzer_name : string prop;
  id : string prop;
  rule_name : string prop;
}

let aws_accessanalyzer_archive_rule ?id ~analyzer_name ~rule_name
    ~filter __resource_id =
  let __resource_type = "aws_accessanalyzer_archive_rule" in
  let __resource =
    ({ analyzer_name; id; rule_name; filter }
      : aws_accessanalyzer_archive_rule)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_accessanalyzer_archive_rule __resource);
  let __resource_attributes =
    ({
       analyzer_name =
         Prop.computed __resource_type __resource_id "analyzer_name";
       id = Prop.computed __resource_type __resource_id "id";
       rule_name =
         Prop.computed __resource_type __resource_id "rule_name";
     }
      : t)
  in
  __resource_attributes
