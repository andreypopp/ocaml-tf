(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type okta_trusted_origin = {
  active : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  origin : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_trusted_origin) -> ()

let yojson_of_okta_trusted_origin =
  (function
   | {
       active = v_active;
       id = v_id;
       name = v_name;
       origin = v_origin;
       scopes = v_scopes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_scopes then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_scopes
           in
           let bnd = "scopes", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_origin in
         ("origin", arg) :: bnds
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
         match v_active with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "active", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_trusted_origin -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_trusted_origin

[@@@deriving.end]

let okta_trusted_origin ?active ?id ~name ~origin ~scopes () :
    okta_trusted_origin =
  { active; id; name; origin; scopes }

type t = {
  tf_name : string;
  active : bool prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  scopes : string list prop;
}

let make ?active ?id ~name ~origin ~scopes __id =
  let __type = "okta_trusted_origin" in
  let __attrs =
    ({
       tf_name = __id;
       active = Prop.computed __type __id "active";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       origin = Prop.computed __type __id "origin";
       scopes = Prop.computed __type __id "scopes";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_trusted_origin
        (okta_trusted_origin ?active ?id ~name ~origin ~scopes ());
    attrs = __attrs;
  }

let register ?tf_module ?active ?id ~name ~origin ~scopes __id =
  let (r : _ Tf_core.resource) =
    make ?active ?id ~name ~origin ~scopes __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
