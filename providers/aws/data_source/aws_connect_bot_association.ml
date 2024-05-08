(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lex_bot = {
  lex_region : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lex_bot) -> ()

let yojson_of_lex_bot =
  (function
   | { lex_region = v_lex_region; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_lex_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "lex_region", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : lex_bot -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lex_bot

[@@@deriving.end]

type aws_connect_bot_association = {
  id : string prop option; [@option]
  instance_id : string prop;
  lex_bot : lex_bot list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_connect_bot_association) -> ()

let yojson_of_aws_connect_bot_association =
  (function
   | { id = v_id; instance_id = v_instance_id; lex_bot = v_lex_bot }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_lex_bot then bnds
         else
           let arg = (yojson_of_list yojson_of_lex_bot) v_lex_bot in
           let bnd = "lex_bot", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_instance_id in
         ("instance_id", arg) :: bnds
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
    : aws_connect_bot_association ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_connect_bot_association

[@@@deriving.end]

let lex_bot ?lex_region ~name () : lex_bot = { lex_region; name }

let aws_connect_bot_association ?id ~instance_id ~lex_bot () :
    aws_connect_bot_association =
  { id; instance_id; lex_bot }

type t = {
  tf_name : string;
  id : string prop;
  instance_id : string prop;
}

let make ?id ~instance_id ~lex_bot __id =
  let __type = "aws_connect_bot_association" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       instance_id = Prop.computed __type __id "instance_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_connect_bot_association
        (aws_connect_bot_association ?id ~instance_id ~lex_bot ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~instance_id ~lex_bot __id =
  let (r : _ Tf_core.resource) =
    make ?id ~instance_id ~lex_bot __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
