(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type geo_match_constraint = {
  type_ : string prop; [@key "type"]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : geo_match_constraint) -> ()

let yojson_of_geo_match_constraint =
  (function
   | { type_ = v_type_; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       `Assoc bnds
    : geo_match_constraint -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_geo_match_constraint

[@@@deriving.end]

type aws_wafregional_geo_match_set = {
  id : string prop option; [@option]
  name : string prop;
  geo_match_constraint : geo_match_constraint list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_wafregional_geo_match_set) -> ()

let yojson_of_aws_wafregional_geo_match_set =
  (function
   | {
       id = v_id;
       name = v_name;
       geo_match_constraint = v_geo_match_constraint;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_geo_match_constraint then bnds
         else
           let arg =
             (yojson_of_list yojson_of_geo_match_constraint)
               v_geo_match_constraint
           in
           let bnd = "geo_match_constraint", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_wafregional_geo_match_set ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_wafregional_geo_match_set

[@@@deriving.end]

let geo_match_constraint ~type_ ~value () : geo_match_constraint =
  { type_; value }

let aws_wafregional_geo_match_set ?id ~name ~geo_match_constraint ()
    : aws_wafregional_geo_match_set =
  { id; name; geo_match_constraint }

type t = { tf_name : string; id : string prop; name : string prop }

let make ?id ~name ~geo_match_constraint __id =
  let __type = "aws_wafregional_geo_match_set" in
  let __attrs =
    ({
       tf_name = __id;
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
