(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type sql_injection_match_tuple__field_to_match = {
  data : string prop option; [@option]  (** data *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** sql_injection_match_tuple__field_to_match *)

type sql_injection_match_tuple = {
  text_transformation : string prop;  (** text_transformation *)
  field_to_match : sql_injection_match_tuple__field_to_match list;
}
[@@deriving yojson_of]
(** sql_injection_match_tuple *)

type aws_wafregional_sql_injection_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  sql_injection_match_tuple : sql_injection_match_tuple list;
}
[@@deriving yojson_of]
(** aws_wafregional_sql_injection_match_set *)

let sql_injection_match_tuple__field_to_match ?data ~type_ () :
    sql_injection_match_tuple__field_to_match =
  { data; type_ }

let sql_injection_match_tuple ~text_transformation ~field_to_match ()
    : sql_injection_match_tuple =
  { text_transformation; field_to_match }

let aws_wafregional_sql_injection_match_set ?id ~name
    ~sql_injection_match_tuple () :
    aws_wafregional_sql_injection_match_set =
  { id; name; sql_injection_match_tuple }

type t = { id : string prop; name : string prop }

let make ?id ~name ~sql_injection_match_tuple __id =
  let __type = "aws_wafregional_sql_injection_match_set" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_wafregional_sql_injection_match_set
        (aws_wafregional_sql_injection_match_set ?id ~name
           ~sql_injection_match_tuple ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~sql_injection_match_tuple __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~sql_injection_match_tuple __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
