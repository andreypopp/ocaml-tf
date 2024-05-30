(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type questions = { key : string prop; text : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : questions) -> ()

let yojson_of_questions =
  (function
   | { key = v_key; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
       in
       `Assoc bnds
    : questions -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_questions

[@@@deriving.end]

type okta_user_security_questions = {
  id : string prop option; [@option]
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_security_questions) -> ()

let yojson_of_okta_user_security_questions =
  (function
   | { id = v_id; user_id = v_user_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
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
    : okta_user_security_questions ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_security_questions

[@@@deriving.end]

let okta_user_security_questions ?id ~user_id () :
    okta_user_security_questions =
  { id; user_id }

type t = {
  tf_name : string;
  id : string prop;
  questions : questions list prop;
  user_id : string prop;
}

let make ?id ~user_id __id =
  let __type = "okta_user_security_questions" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       questions = Prop.computed __type __id "questions";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_security_questions
        (okta_user_security_questions ?id ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~user_id __id =
  let (r : _ Tf_core.resource) = make ?id ~user_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
