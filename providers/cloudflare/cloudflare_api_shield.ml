(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auth_id_characteristics = {
  name : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auth_id_characteristics) -> ()

let yojson_of_auth_id_characteristics =
  (function
   | { name = v_name; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auth_id_characteristics -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auth_id_characteristics

[@@@deriving.end]

type cloudflare_api_shield = {
  id : string prop option; [@option]
  zone_id : string prop;
  auth_id_characteristics : auth_id_characteristics list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_api_shield) -> ()

let yojson_of_cloudflare_api_shield =
  (function
   | {
       id = v_id;
       zone_id = v_zone_id;
       auth_id_characteristics = v_auth_id_characteristics;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_auth_id_characteristics
             v_auth_id_characteristics
         in
         ("auth_id_characteristics", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_zone_id in
         ("zone_id", arg) :: bnds
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
    : cloudflare_api_shield -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_api_shield

[@@@deriving.end]

let auth_id_characteristics ?name ?type_ () : auth_id_characteristics
    =
  { name; type_ }

let cloudflare_api_shield ?id ?(auth_id_characteristics = [])
    ~zone_id () : cloudflare_api_shield =
  { id; zone_id; auth_id_characteristics }

type t = { id : string prop; zone_id : string prop }

let make ?id ?(auth_id_characteristics = []) ~zone_id __id =
  let __type = "cloudflare_api_shield" in
  let __attrs =
    ({
       id = Prop.computed __type __id "id";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_api_shield
        (cloudflare_api_shield ?id ~auth_id_characteristics ~zone_id
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(auth_id_characteristics = []) ~zone_id
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ~auth_id_characteristics ~zone_id __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
