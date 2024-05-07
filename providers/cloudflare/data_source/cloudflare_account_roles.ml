(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type roles = {
  description : string prop;
  id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : roles) -> ()

let yojson_of_roles =
  (function
   | { description = v_description; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_roles

[@@@deriving.end]

type cloudflare_account_roles = {
  account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_account_roles) -> ()

let yojson_of_cloudflare_account_roles =
  (function
   | { account_id = v_account_id; id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_account_roles -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_account_roles

[@@@deriving.end]

let cloudflare_account_roles ?id ~account_id () :
    cloudflare_account_roles =
  { account_id; id }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  roles : roles list prop;
}

let make ?id ~account_id __id =
  let __type = "cloudflare_account_roles" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       roles = Prop.computed __type __id "roles";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_account_roles
        (cloudflare_account_roles ?id ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
