(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_email_routing_address = {
  account_id : string prop;
  email : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_email_routing_address) -> ()

let yojson_of_cloudflare_email_routing_address =
  (function
   | { account_id = v_account_id; email = v_email } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_email in
         ("email", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_email_routing_address ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_email_routing_address

[@@@deriving.end]

let cloudflare_email_routing_address ~account_id ~email () :
    cloudflare_email_routing_address =
  { account_id; email }

type t = {
  tf_name : string;
  account_id : string prop;
  created : string prop;
  email : string prop;
  id : string prop;
  modified : string prop;
  tag : string prop;
  verified : string prop;
}

let make ~account_id ~email __id =
  let __type = "cloudflare_email_routing_address" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       created = Prop.computed __type __id "created";
       email = Prop.computed __type __id "email";
       id = Prop.computed __type __id "id";
       modified = Prop.computed __type __id "modified";
       tag = Prop.computed __type __id "tag";
       verified = Prop.computed __type __id "verified";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_email_routing_address
        (cloudflare_email_routing_address ~account_id ~email ());
    attrs = __attrs;
  }

let register ?tf_module ~account_id ~email __id =
  let (r : _ Tf_core.resource) = make ~account_id ~email __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
