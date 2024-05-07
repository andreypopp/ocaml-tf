(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cloudflare_teams_list = {
  account_id : string prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  items : string prop list option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_teams_list) -> ()

let yojson_of_cloudflare_teams_list =
  (function
   | {
       account_id = v_account_id;
       description = v_description;
       id = v_id;
       items = v_items;
       name = v_name;
       type_ = v_type_;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_items with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "items", arg in
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
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_teams_list -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_teams_list

[@@@deriving.end]

let cloudflare_teams_list ?description ?id ?items ~account_id ~name
    ~type_ () : cloudflare_teams_list =
  { account_id; description; id; items; name; type_ }

type t = {
  tf_name : string;
  account_id : string prop;
  description : string prop;
  id : string prop;
  items : string list prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ?id ?items ~account_id ~name ~type_ __id =
  let __type = "cloudflare_teams_list" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       items = Prop.computed __type __id "items";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_teams_list
        (cloudflare_teams_list ?description ?id ?items ~account_id
           ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?items ~account_id ~name
    ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?items ~account_id ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
