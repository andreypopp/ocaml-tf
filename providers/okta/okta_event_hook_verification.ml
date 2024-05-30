(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_event_hook_verification = {
  event_hook_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_event_hook_verification) -> ()

let yojson_of_okta_event_hook_verification =
  (function
   | { event_hook_id = v_event_hook_id; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_event_hook_id in
         ("event_hook_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_event_hook_verification ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_event_hook_verification

[@@@deriving.end]

let okta_event_hook_verification ?id ~event_hook_id () :
    okta_event_hook_verification =
  { event_hook_id; id }

type t = {
  tf_name : string;
  event_hook_id : string prop;
  id : string prop;
}

let make ?id ~event_hook_id __id =
  let __type = "okta_event_hook_verification" in
  let __attrs =
    ({
       tf_name = __id;
       event_hook_id = Prop.computed __type __id "event_hook_id";
       id = Prop.computed __type __id "id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_event_hook_verification
        (okta_event_hook_verification ?id ~event_hook_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~event_hook_id __id =
  let (r : _ Tf_core.resource) = make ?id ~event_hook_id __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
