(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type domains = unit [@@deriving_inline yojson_of]

let _ = fun (_ : domains) -> ()

let yojson_of_domains =
  (yojson_of_unit : domains -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_domains

[@@@deriving.end]

type settings = unit [@@deriving_inline yojson_of]

let _ = fun (_ : settings) -> ()

let yojson_of_settings =
  (yojson_of_unit : settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_settings

[@@@deriving.end]

type okta_org_metadata = { domains : domains; settings : settings }
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_org_metadata) -> ()

let yojson_of_okta_org_metadata =
  (function
   | { domains = v_domains; settings = v_settings } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_settings v_settings in
         ("settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_domains v_domains in
         ("domains", arg) :: bnds
       in
       `Assoc bnds
    : okta_org_metadata -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_org_metadata

[@@@deriving.end]

let domains () = ()
let settings () = ()

let okta_org_metadata ~domains ~settings () : okta_org_metadata =
  { domains; settings }

type t = {
  tf_name : string;
  id : string prop;
  pipeline : string prop;
}

let make ~domains ~settings __id =
  let __type = "okta_org_metadata" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       pipeline = Prop.computed __type __id "pipeline";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_org_metadata
        (okta_org_metadata ~domains ~settings ());
    attrs = __attrs;
  }

let register ?tf_module ~domains ~settings __id =
  let (r : _ Tf_core.resource) = make ~domains ~settings __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
