(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type enumeration_value = {
  synonyms : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : enumeration_value) -> ()

let yojson_of_enumeration_value =
  (function
   | { synonyms = v_synonyms; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_synonyms then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_synonyms
           in
           let bnd = "synonyms", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : enumeration_value -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_enumeration_value

[@@@deriving.end]

type aws_lex_slot_type = {
  id : string prop option; [@option]
  name : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_slot_type) -> ()

let yojson_of_aws_lex_slot_type =
  (function
   | { id = v_id; name = v_name; version = v_version } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version", arg in
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
    : aws_lex_slot_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_slot_type

[@@@deriving.end]

let aws_lex_slot_type ?id ?version ~name () : aws_lex_slot_type =
  { id; name; version }

type t = {
  tf_name : string;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  enumeration_value : enumeration_value list prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  value_selection_strategy : string prop;
  version : string prop;
}

let make ?id ?version ~name __id =
  let __type = "aws_lex_slot_type" in
  let __attrs =
    ({
       tf_name = __id;
       checksum = Prop.computed __type __id "checksum";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       enumeration_value =
         Prop.computed __type __id "enumeration_value";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       value_selection_strategy =
         Prop.computed __type __id "value_selection_strategy";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_slot_type
        (aws_lex_slot_type ?id ?version ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?version ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
