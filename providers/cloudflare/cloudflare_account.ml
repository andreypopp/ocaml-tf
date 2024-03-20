(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_account = {
  enforce_twofactor : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_account) -> ()

let yojson_of_cloudflare_account =
  (function
   | {
       enforce_twofactor = v_enforce_twofactor;
       id = v_id;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
       let bnds =
         match v_enforce_twofactor with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enforce_twofactor", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_account -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_account

[@@@deriving.end]

let cloudflare_account ?enforce_twofactor ?id ?type_ ~name () :
    cloudflare_account =
  { enforce_twofactor; id; name; type_ }

type t = {
  enforce_twofactor : bool prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?enforce_twofactor ?id ?type_ ~name __id =
  let __type = "cloudflare_account" in
  let __attrs =
    ({
       enforce_twofactor =
         Prop.computed __type __id "enforce_twofactor";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_account
        (cloudflare_account ?enforce_twofactor ?id ?type_ ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?enforce_twofactor ?id ?type_ ~name __id =
  let (r : _ Tf_core.resource) =
    make ?enforce_twofactor ?id ?type_ ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
