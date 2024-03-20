(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_workers_kv_namespace = {
  account_id : string prop;
  id : string prop option; [@option]
  title : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_workers_kv_namespace) -> ()

let yojson_of_cloudflare_workers_kv_namespace =
  (function
   | { account_id = v_account_id; id = v_id; title = v_title } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_title in
         ("title", arg) :: bnds
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
    : cloudflare_workers_kv_namespace ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_workers_kv_namespace

[@@@deriving.end]

let cloudflare_workers_kv_namespace ?id ~account_id ~title () :
    cloudflare_workers_kv_namespace =
  { account_id; id; title }

type t = {
  account_id : string prop;
  id : string prop;
  title : string prop;
}

let make ?id ~account_id ~title __id =
  let __type = "cloudflare_workers_kv_namespace" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       title = Prop.computed __type __id "title";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_workers_kv_namespace
        (cloudflare_workers_kv_namespace ?id ~account_id ~title ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~title __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id ~title __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
