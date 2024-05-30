(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type trusted_origins = {
  active : bool prop;
  id : string prop;
  name : string prop;
  origin : string prop;
  scopes : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : trusted_origins) -> ()

let yojson_of_trusted_origins =
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
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_active in
         ("active", arg) :: bnds
       in
       `Assoc bnds
    : trusted_origins -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_trusted_origins

[@@@deriving.end]

type okta_trusted_origins = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : okta_trusted_origins) -> ()

let yojson_of_okta_trusted_origins =
  (function
   | { filter = v_filter; id = v_id } ->
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
         match v_filter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "filter", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : okta_trusted_origins -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_okta_trusted_origins

[@@@deriving.end]

let okta_trusted_origins ?filter ?id () : okta_trusted_origins =
  { filter; id }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  trusted_origins : trusted_origins list prop;
}

let make ?filter ?id __id =
  let __type = "okta_trusted_origins" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       trusted_origins = Prop.computed __type __id "trusted_origins";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_okta_trusted_origins
        (okta_trusted_origins ?filter ?id ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id __id =
  let (r : _ Tf_core.resource) = make ?filter ?id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
