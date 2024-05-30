(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_signon_policy = {
  app_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_signon_policy) -> ()

let yojson_of_okta_app_signon_policy =
  (function
   | { app_id = v_app_id; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_app_id in
         ("app_id", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_signon_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_signon_policy

[@@@deriving.end]

let okta_app_signon_policy ?id ~app_id () : okta_app_signon_policy =
  { app_id; id }

type t = {
  tf_name : string;
  app_id : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~app_id __id =
  let __type = "okta_app_signon_policy" in
  let __attrs =
    ({
       tf_name = __id;
       app_id = Prop.computed __type __id "app_id";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_app_signon_policy
        (okta_app_signon_policy ?id ~app_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~app_id __id =
  let (r : _ Tf_core.resource) = make ?id ~app_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
