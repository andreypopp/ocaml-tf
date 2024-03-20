(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type entry__pattern = {
  regex : string prop;
  validation : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entry__pattern) -> ()

let yojson_of_entry__pattern =
  (function
   | { regex = v_regex; validation = v_validation } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_validation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "validation", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_regex in
         ("regex", arg) :: bnds
       in
       `Assoc bnds
    : entry__pattern -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entry__pattern

[@@@deriving.end]

type entry = {
  enabled : bool prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  pattern : entry__pattern list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : entry) -> ()

let yojson_of_entry =
  (function
   | {
       enabled = v_enabled;
       id = v_id;
       name = v_name;
       pattern = v_pattern;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_entry__pattern v_pattern
         in
         ("pattern", arg) :: bnds
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
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : entry -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_entry

[@@@deriving.end]

type cloudflare_dlp_profile = {
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  type_ : string prop; [@key "type"]
  entry : entry list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_dlp_profile) -> ()

let yojson_of_cloudflare_dlp_profile =
  (function
   | {
       account_id = v_account_id;
       allowed_match_count = v_allowed_match_count;
       description = v_description;
       id = v_id;
       name = v_name;
       type_ = v_type_;
       entry = v_entry;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_entry v_entry in
         ("entry", arg) :: bnds
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
         let arg =
           yojson_of_prop yojson_of_float v_allowed_match_count
         in
         ("allowed_match_count", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_dlp_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_dlp_profile

[@@@deriving.end]

let entry__pattern ?validation ~regex () : entry__pattern =
  { regex; validation }

let entry ?enabled ?id ~name ~pattern () : entry =
  { enabled; id; name; pattern }

let cloudflare_dlp_profile ?description ?id ~account_id
    ~allowed_match_count ~name ~type_ ~entry () :
    cloudflare_dlp_profile =
  {
    account_id;
    allowed_match_count;
    description;
    id;
    name;
    type_;
    entry;
  }

type t = {
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  type_ : string prop;
}

let make ?description ?id ~account_id ~allowed_match_count ~name
    ~type_ ~entry __id =
  let __type = "cloudflare_dlp_profile" in
  let __attrs =
    ({
       account_id = Prop.computed __type __id "account_id";
       allowed_match_count =
         Prop.computed __type __id "allowed_match_count";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_dlp_profile
        (cloudflare_dlp_profile ?description ?id ~account_id
           ~allowed_match_count ~name ~type_ ~entry ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ~account_id
    ~allowed_match_count ~name ~type_ ~entry __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ~account_id ~allowed_match_count ~name
      ~type_ ~entry __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
