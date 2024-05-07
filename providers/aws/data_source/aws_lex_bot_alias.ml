(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_lex_bot_alias = {
  bot_name : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_lex_bot_alias) -> ()

let yojson_of_aws_lex_bot_alias =
  (function
   | { bot_name = v_bot_name; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bot_name in
         ("bot_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_lex_bot_alias -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_lex_bot_alias

[@@@deriving.end]

let aws_lex_bot_alias ?id ~bot_name ~name () : aws_lex_bot_alias =
  { bot_name; id; name }

type t = {
  tf_name : string;
  arn : string prop;
  bot_name : string prop;
  bot_version : string prop;
  checksum : string prop;
  created_date : string prop;
  description : string prop;
  id : string prop;
  last_updated_date : string prop;
  name : string prop;
}

let make ?id ~bot_name ~name __id =
  let __type = "aws_lex_bot_alias" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       bot_name = Prop.computed __type __id "bot_name";
       bot_version = Prop.computed __type __id "bot_version";
       checksum = Prop.computed __type __id "checksum";
       created_date = Prop.computed __type __id "created_date";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       last_updated_date =
         Prop.computed __type __id "last_updated_date";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_lex_bot_alias
        (aws_lex_bot_alias ?id ~bot_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~bot_name ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~bot_name ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
