(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_everyone_group = {
  id : string prop option; [@option]
  include_users : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_everyone_group) -> ()

let yojson_of_okta_everyone_group =
  (function
   | { id = v_id; include_users = v_include_users } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_include_users with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "include_users", arg in
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
       `Assoc bnds
    : okta_everyone_group -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_everyone_group

[@@@deriving.end]

let okta_everyone_group ?id ?include_users () : okta_everyone_group =
  { id; include_users }

type t = {
  tf_name : string;
  description : string prop;
  id : string prop;
  include_users : bool prop;
}

let make ?id ?include_users __id =
  let __type = "okta_everyone_group" in
  let __attrs =
    ({
       tf_name = __id;
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       include_users = Prop.computed __type __id "include_users";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_everyone_group
        (okta_everyone_group ?id ?include_users ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?include_users __id =
  let (r : _ Tf_core.resource) = make ?id ?include_users __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
