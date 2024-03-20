(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type filter = {
  contains : string prop list option; [@option]  (** contains *)
  criteria : string prop;  (** criteria *)
  eq : string prop list option; [@option]  (** eq *)
  exists : string prop option; [@option]  (** exists *)
  neq : string prop list option; [@option]  (** neq *)
}
[@@deriving yojson_of]
(** filter *)

type aws_accessanalyzer_archive_rule = {
  analyzer_name : string prop;  (** analyzer_name *)
  id : string prop option; [@option]  (** id *)
  rule_name : string prop;  (** rule_name *)
  filter : filter list;
}
[@@deriving yojson_of]
(** aws_accessanalyzer_archive_rule *)

let filter ?contains ?eq ?exists ?neq ~criteria () : filter =
  { contains; criteria; eq; exists; neq }

let aws_accessanalyzer_archive_rule ?id ~analyzer_name ~rule_name
    ~filter () : aws_accessanalyzer_archive_rule =
  { analyzer_name; id; rule_name; filter }

type t = {
  analyzer_name : string prop;
  id : string prop;
  rule_name : string prop;
}

let make ?id ~analyzer_name ~rule_name ~filter __id =
  let __type = "aws_accessanalyzer_archive_rule" in
  let __attrs =
    ({
       analyzer_name = Prop.computed __type __id "analyzer_name";
       id = Prop.computed __type __id "id";
       rule_name = Prop.computed __type __id "rule_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_accessanalyzer_archive_rule
        (aws_accessanalyzer_archive_rule ?id ~analyzer_name
           ~rule_name ~filter ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~analyzer_name ~rule_name ~filter __id =
  let (r : _ Tf_core.resource) =
    make ?id ~analyzer_name ~rule_name ~filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
