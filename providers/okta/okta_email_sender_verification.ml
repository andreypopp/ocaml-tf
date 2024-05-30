(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_email_sender_verification = {
  id : string prop option; [@option]
  sender_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_email_sender_verification) -> ()

let yojson_of_okta_email_sender_verification =
  (function
   | { id = v_id; sender_id = v_sender_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sender_id in
         ("sender_id", arg) :: bnds
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
    : okta_email_sender_verification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_email_sender_verification

[@@@deriving.end]

let okta_email_sender_verification ?id ~sender_id () :
    okta_email_sender_verification =
  { id; sender_id }

type t = {
  tf_name : string;
  id : string prop;
  sender_id : string prop;
}

let make ?id ~sender_id __id =
  let __type = "okta_email_sender_verification" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       sender_id = Prop.computed __type __id "sender_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_email_sender_verification
        (okta_email_sender_verification ?id ~sender_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~sender_id __id =
  let (r : _ Tf_core.resource) = make ?id ~sender_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
