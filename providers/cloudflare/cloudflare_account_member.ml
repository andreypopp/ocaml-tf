(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_account_member = {
  account_id : string prop;
  email_address : string prop;
  id : string prop option; [@option]
  role_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  status : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_account_member) -> ()

let yojson_of_cloudflare_account_member =
  (function
   | {
       account_id = v_account_id;
       email_address = v_email_address;
       id = v_id;
       role_ids = v_role_ids;
       status = v_status;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_role_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_role_ids
           in
           let bnd = "role_ids", arg in
           bnd :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_email_address in
         ("email_address", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_account_member -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_account_member

[@@@deriving.end]

let cloudflare_account_member ?id ?status ~account_id ~email_address
    ~role_ids () : cloudflare_account_member =
  { account_id; email_address; id; role_ids; status }

type t = {
  tf_name : string;
  account_id : string prop;
  email_address : string prop;
  id : string prop;
  role_ids : string list prop;
  status : string prop;
}

let make ?id ?status ~account_id ~email_address ~role_ids __id =
  let __type = "cloudflare_account_member" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       email_address = Prop.computed __type __id "email_address";
       id = Prop.computed __type __id "id";
       role_ids = Prop.computed __type __id "role_ids";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_account_member
        (cloudflare_account_member ?id ?status ~account_id
           ~email_address ~role_ids ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ~account_id ~email_address
    ~role_ids __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ~account_id ~email_address ~role_ids __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
