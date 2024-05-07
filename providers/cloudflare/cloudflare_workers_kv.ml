(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_workers_kv = {
  account_id : string prop;
  id : string prop option; [@option]
  key : string prop;
  namespace_id : string prop;
  value : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_workers_kv) -> ()

let yojson_of_cloudflare_workers_kv =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       key = v_key;
       namespace_id = v_namespace_id;
       value = v_value;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_workers_kv -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_workers_kv

[@@@deriving.end]

let cloudflare_workers_kv ?id ~account_id ~key ~namespace_id ~value
    () : cloudflare_workers_kv =
  { account_id; id; key; namespace_id; value }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  key : string prop;
  namespace_id : string prop;
  value : string prop;
}

let make ?id ~account_id ~key ~namespace_id ~value __id =
  let __type = "cloudflare_workers_kv" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       key = Prop.computed __type __id "key";
       namespace_id = Prop.computed __type __id "namespace_id";
       value = Prop.computed __type __id "value";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_workers_kv
        (cloudflare_workers_kv ?id ~account_id ~key ~namespace_id
           ~value ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id ~key ~namespace_id ~value
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~account_id ~key ~namespace_id ~value __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
