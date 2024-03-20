(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration = { target : string prop; value : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { target = v_target; value = v_value } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_value in
         ("value", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_target in
         ("target", arg) :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type cloudflare_access_rule = {
  account_id : string prop option; [@option]
  id : string prop option; [@option]
  mode : string prop;
  notes : string prop option; [@option]
  zone_id : string prop option; [@option]
  configuration : configuration list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_access_rule) -> ()

let yojson_of_cloudflare_access_rule =
  (function
   | {
       account_id = v_account_id;
       id = v_id;
       mode = v_mode;
       notes = v_notes;
       zone_id = v_zone_id;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_configuration v_configuration
         in
         ("configuration", arg) :: bnds
       in
       let bnds =
         match v_zone_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "zone_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notes", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
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
         match v_account_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "account_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cloudflare_access_rule -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_access_rule

[@@@deriving.end]

let configuration ~target ~value () : configuration =
  { target; value }

let cloudflare_access_rule ?account_id ?id ?notes ?zone_id ~mode
    ~configuration () : cloudflare_access_rule =
  { account_id; id; mode; notes; zone_id; configuration }

type t = {
  account_id : string prop;
  id : string prop;
  mode : string prop;
  notes : string prop;
  zone_id : string prop;
}

let make ?account_id ?id ?notes ?zone_id ~mode ~configuration __id =
  let __type = "cloudflare_access_rule" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       id = Prop.computed __type __id "id";
       mode = Prop.computed __type __id "mode";
       notes = Prop.computed __type __id "notes";
       zone_id = Prop.computed __type __id "zone_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_access_rule
        (cloudflare_access_rule ?account_id ?id ?notes ?zone_id ~mode
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?account_id ?id ?notes ?zone_id ~mode
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?account_id ?id ?notes ?zone_id ~mode ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
