(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_domain_verification = {
  domain_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_domain_verification) -> ()

let yojson_of_okta_domain_verification =
  (function
   | { domain_id = v_domain_id; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_domain_id in
         ("domain_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_domain_verification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_domain_verification

[@@@deriving.end]

let okta_domain_verification ?id ~domain_id () :
    okta_domain_verification =
  { domain_id; id }

type t = {
  tf_name : string;
  domain_id : string prop;
  id : string prop;
}

let make ?id ~domain_id __id =
  let __type = "okta_domain_verification" in
  let __attrs =
    ({
       tf_name = __id;
       domain_id = Prop.computed __type __id "domain_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_domain_verification
        (okta_domain_verification ?id ~domain_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~domain_id __id =
  let (r : _ Tf_core.resource) = make ?id ~domain_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
