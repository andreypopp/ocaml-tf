(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_access_keys_configuration = {
  account_id : string prop;
  id : string prop option; [@option]
  key_rotation_interval_days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_keys_configuration) -> ()

let yojson_of_cloudflare_access_keys_configuration =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       key_rotation_interval_days = v_key_rotation_interval_days;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_key_rotation_interval_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "key_rotation_interval_days", arg in
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_access_keys_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_keys_configuration

[@@@deriving.end]

let cloudflare_access_keys_configuration ?id
    ?key_rotation_interval_days ~account_id () :
    cloudflare_access_keys_configuration =
  { account_id; id; key_rotation_interval_days }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  key_rotation_interval_days : float prop;
}

let make ?id ?key_rotation_interval_days ~account_id __id =
  let __type = "cloudflare_access_keys_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       key_rotation_interval_days =
         Prop.computed __type __id "key_rotation_interval_days";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_keys_configuration
        (cloudflare_access_keys_configuration ?id
           ?key_rotation_interval_days ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?key_rotation_interval_days ~account_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?key_rotation_interval_days ~account_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
