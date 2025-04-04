(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_tunnel = {
  account_id : string prop;
  is_deleted : bool prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_tunnel) -> ()

let yojson_of_cloudflare_tunnel =
  (function
   | {
       account_id = v_account_id;
       is_deleted = v_is_deleted;
       name = v_name;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_is_deleted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "is_deleted", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_tunnel -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_tunnel

[@@@deriving.end]

let cloudflare_tunnel ?is_deleted ~account_id ~name () :
    cloudflare_tunnel =
  { account_id; is_deleted; name }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  is_deleted : bool prop;
  name : string prop;
  remote_config : bool prop;
  status : string prop;
  tunnel_type : string prop;
}

let make ?is_deleted ~account_id ~name __id =
  let __type = "cloudflare_tunnel" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       is_deleted = Prop.computed __type __id "is_deleted";
       name = Prop.computed __type __id "name";
       remote_config = Prop.computed __type __id "remote_config";
       status = Prop.computed __type __id "status";
       tunnel_type = Prop.computed __type __id "tunnel_type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_tunnel
        (cloudflare_tunnel ?is_deleted ~account_id ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?is_deleted ~account_id ~name __id =
  let (r : _ Tf_core.resource) =
    make ?is_deleted ~account_id ~name __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
