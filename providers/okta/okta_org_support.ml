(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_org_support = {
  extend_by : float prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_org_support) -> ()

let yojson_of_okta_org_support =
  (function
   | { extend_by = v_extend_by; id = v_id } ->
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
         match v_extend_by with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "extend_by", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_org_support -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_org_support

[@@@deriving.end]

let okta_org_support ?extend_by ?id () : okta_org_support =
  { extend_by; id }

type t = {
  tf_name : string;
  expiration : string prop;
  extend_by : float prop;
  id : string prop;
  status : string prop;
}

let make ?extend_by ?id __id =
  let __type = "okta_org_support" in
  let __attrs =
    ({
       tf_name = __id;
       expiration = Prop.computed __type __id "expiration";
       extend_by = Prop.computed __type __id "extend_by";
       id = Prop.computed __type __id "id";
       status = Prop.computed __type __id "status";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_org_support (okta_org_support ?extend_by ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?extend_by ?id __id =
  let (r : _ Tf_core.resource) = make ?extend_by ?id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
