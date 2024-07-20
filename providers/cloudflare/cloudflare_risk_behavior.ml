(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type behavior = {
  enabled : bool prop;
  name : string prop;
  risk_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : behavior) -> ()

let yojson_of_behavior =
  (function
   | {
       enabled = v_enabled;
       name = v_name;
       risk_level = v_risk_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_risk_level in
         ("risk_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_behavior

[@@@deriving.end]

type cloudflare_risk_behavior = {
  account_id : string prop;
  behavior : behavior list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_risk_behavior) -> ()

let yojson_of_cloudflare_risk_behavior =
  (function
   | { account_id = v_account_id; behavior = v_behavior } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_behavior then bnds
         else
           let arg =
             (yojson_of_list yojson_of_behavior) v_behavior
           in
           let bnd = "behavior", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_risk_behavior -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_risk_behavior

[@@@deriving.end]

let behavior ~enabled ~name ~risk_level () : behavior =
  { enabled; name; risk_level }

let cloudflare_risk_behavior ~account_id ~behavior () :
    cloudflare_risk_behavior =
  { account_id; behavior }

type t = { tf_name : string; account_id : string prop }

let make ~account_id ~behavior __id =
  let __type = "cloudflare_risk_behavior" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_risk_behavior
        (cloudflare_risk_behavior ~account_id ~behavior ());
    attrs = __attrs;
  }

let register ?tf_module ~account_id ~behavior __id =
  let (r : _ Tf_core.resource) = make ~account_id ~behavior __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
