(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_user_type = {
  description : string prop;
  display_name : string prop;
  id : string prop option; [@option]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_user_type) -> ()

let yojson_of_okta_user_type =
  (function
   | {
       description = v_description;
       display_name = v_display_name;
       id = v_id;
       name = v_name;
     } ->
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
         let arg = yojson_of_prop yojson_of_string v_display_name in
         ("display_name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : okta_user_type -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_user_type

[@@@deriving.end]

let okta_user_type ?id ~description ~display_name ~name () :
    okta_user_type =
  { description; display_name; id; name }

type t = {
  tf_name : string;
  description : string prop;
  display_name : string prop;
  id : string prop;
  name : string prop;
}

let make ?id ~description ~display_name ~name __id =
  let __type = "okta_user_type" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       display_name = Prop.computed __type __id "display_name";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_user_type
        (okta_user_type ?id ~description ~display_name ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~description ~display_name ~name __id =
  let (r : _ Tf_core.resource) =
    make ?id ~description ~display_name ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
