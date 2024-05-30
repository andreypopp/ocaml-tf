(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_app_signon_policy = {
  description : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_app_signon_policy) -> ()

let yojson_of_okta_app_signon_policy =
  (function
   | { description = v_description; id = v_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : okta_app_signon_policy -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_app_signon_policy

[@@@deriving.end]

let okta_app_signon_policy ?id ~description ~name () :
    okta_app_signon_policy =
  { description; id; name }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~description ~name __id =
  let __type = "okta_app_signon_policy" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
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
        (okta_app_signon_policy ?id ~description ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~description ~name __id in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
