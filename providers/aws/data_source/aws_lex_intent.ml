(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lex_intent = {
  id : string prop option; [@option]
  name : string prop;
  version : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_intent) -> ()

let yojson_of_aws_lex_intent =
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
    : aws_lex_intent -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_intent

[@@@deriving.end]

let aws_lex_intent ?id ?version ~name () : aws_lex_intent =
  { id; name; version }

type t = {
  tf_name : string;
  arn : string prop;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
  parent_intent_signature : string prop;
  version : string prop;
}

let make ?id ?version ~name __id =
  let __type = "aws_lex_intent" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       checksum = Prop.computed __type __id "checksum";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
       parent_intent_signature =
         Prop.computed __type __id "parent_intent_signature";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_intent (aws_lex_intent ?id ?version ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?version ~name __id =
  let (r : _ Tf_core.resource) = make ?id ?version ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
