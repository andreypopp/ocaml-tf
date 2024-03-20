(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_worker_secret = {
  account_id : string prop;
  id : string prop option; [@option]
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_worker_secret) -> ()

let yojson_of_cloudflare_worker_secret =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       name = v_name;
       script_name = v_script_name;
       secret_text = v_secret_text;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_secret_text in
         ("secret_text", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_script_name in
         ("script_name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_worker_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_worker_secret

[@@@deriving.end]

let cloudflare_worker_secret ?id ~account_id ~name ~script_name
    ~secret_text () : cloudflare_worker_secret =
  { account_id; id; name; script_name; secret_text }

type t = {
  account_id : string prop;
  id : string prop;
  name : string prop;
  script_name : string prop;
  secret_text : string prop;
}

let make ?id ~account_id ~name ~script_name ~secret_text __id =
  let __type = "cloudflare_worker_secret" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       script_name = Prop.computed __type __id "script_name";
       secret_text = Prop.computed __type __id "secret_text";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_secret
        (cloudflare_worker_secret ?id ~account_id ~name ~script_name
           ~secret_text ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~name ~script_name
    ~secret_text __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~name ~script_name ~secret_text __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
