(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_threat_insight_settings = {
  action : string prop;
  id : string prop option; [@option]
  network_excludes : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_threat_insight_settings) -> ()

let yojson_of_okta_threat_insight_settings =
  (function
   | {
       action = v_action;
       id = v_id;
       network_excludes = v_network_excludes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_network_excludes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "network_excludes", arg in
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
         let arg = yojson_of_prop yojson_of_string v_action in
         ("action", arg) :: bnds
       in
       `Assoc bnds
    : okta_threat_insight_settings ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_threat_insight_settings

[@@@deriving.end]

let okta_threat_insight_settings ?id ?network_excludes ~action () :
    okta_threat_insight_settings =
  { action; id; network_excludes }

type t = {
  tf_name : string;
  action : string prop;
  id : string prop;
  network_excludes : string list prop;
}

let make ?id ?network_excludes ~action __id =
  let __type = "okta_threat_insight_settings" in
  let __attrs =
    ({
       tf_name = __id;
       action = Prop.computed __type __id "action";
       id = Prop.computed __type __id "id";
       network_excludes =
         Prop.computed __type __id "network_excludes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_threat_insight_settings
        (okta_threat_insight_settings ?id ?network_excludes ~action
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?network_excludes ~action __id =
  let (r : _ Tf_core.resource) =
    make ?id ?network_excludes ~action __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
