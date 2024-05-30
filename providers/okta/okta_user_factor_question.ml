(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_factor_question = {
  answer : string prop;
  id : string prop option; [@option]
  key : string prop;
  user_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_factor_question) -> ()

let yojson_of_okta_user_factor_question =
  (function
   | {
       answer = v_answer;
       id = v_id;
       key = v_key;
       user_id = v_user_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_user_id in
         ("user_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key in
         ("key", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_answer in
         ("answer", arg) :: bnds
       in
       `Assoc bnds
    : okta_user_factor_question -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_factor_question

[@@@deriving.end]

let okta_user_factor_question ?id ~answer ~key ~user_id () :
    okta_user_factor_question =
  { answer; id; key; user_id }

type t = {
  tf_name : string;
  answer : string prop;
  id : string prop;
  key : string prop;
  status : string prop;
  text : string prop;
  user_id : string prop;
}

let make ?id ~answer ~key ~user_id __id =
  let __type = "okta_user_factor_question" in
  let __attrs =
    ({
       tf_name = __id;
       answer = Prop.computed __type __id "answer";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       status = Prop.computed __type __id "status";
       text = Prop.computed __type __id "text";
       user_id = Prop.computed __type __id "user_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_factor_question
        (okta_user_factor_question ?id ~answer ~key ~user_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~answer ~key ~user_id __id =
  let (r : _ Tf_core.resource) =
    make ?id ~answer ~key ~user_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
