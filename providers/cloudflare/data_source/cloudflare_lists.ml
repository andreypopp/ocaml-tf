(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type lists = {
  description : string prop;
  id : string prop;
  kind : string prop;
  name : string prop;
  numitems : float prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : lists) -> ()

let yojson_of_lists =
  (function
   | {
       description = v_description;
       id = v_id;
       kind = v_kind;
       name = v_name;
       numitems = v_numitems;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_numitems in
         ("numitems", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kind in
         ("kind", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_description in
         ("description", arg) :: bnds
       in
       `Assoc bnds
    : lists -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_lists

[@@@deriving.end]

type cloudflare_lists = {
  account_id : string prop;
  id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_lists) -> ()

let yojson_of_cloudflare_lists =
  (function
   | { account_id = v_account_id; id = v_id } ->
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
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_lists -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_lists

[@@@deriving.end]

let cloudflare_lists ?id ~account_id () : cloudflare_lists =
  { account_id; id }

type t = {
  tf_name : string;
  account_id : string prop;
  id : string prop;
  lists : lists list prop;
}

let make ?id ~account_id __id =
  let __type = "cloudflare_lists" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       lists = Prop.computed __type __id "lists";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_lists
        (cloudflare_lists ?id ~account_id ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~account_id __id =
  let (r : _ Tf_core.resource) = make ?id ~account_id __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
