(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type geo_match_constraint = {
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** geo_match_constraint *)

type aws_wafregional_geo_match_set = {
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  geo_match_constraint : geo_match_constraint list;
}
[@@deriving yojson_of]
(** aws_wafregional_geo_match_set *)

let geo_match_constraint ~type_ ~value () : geo_match_constraint =
  { type_; value }

let aws_wafregional_geo_match_set ?id ~name ~geo_match_constraint ()
    : aws_wafregional_geo_match_set =
  { id; name; geo_match_constraint }

type t = { id : string prop; name : string prop }

let make ?id ~name ~geo_match_constraint __id =
  let __type = "aws_wafregional_geo_match_set" in
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
      yojson_of_aws_wafregional_geo_match_set
        (aws_wafregional_geo_match_set ?id ~name
           ~geo_match_constraint ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~name ~geo_match_constraint __id =
  let (r : _ Tf_core.resource) =
    make ?id ~name ~geo_match_constraint __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
