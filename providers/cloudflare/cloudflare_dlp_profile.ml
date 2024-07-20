(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type context_awareness__skip = { files : bool prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : context_awareness__skip) -> ()

let yojson_of_context_awareness__skip =
  (function
   | { files = v_files } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_files in
         ("files", arg) :: bnds
       in
       `Assoc bnds
    : context_awareness__skip -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_context_awareness__skip

[@@@deriving.end]

type context_awareness = {
  enabled : bool prop;
  skip : context_awareness__skip list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : context_awareness) -> ()

let yojson_of_context_awareness =
  (function
   | { enabled = v_enabled; skip = v_skip } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_skip then bnds
         else
           let arg =
             (yojson_of_list yojson_of_context_awareness__skip)
               v_skip
           in
           let bnd = "skip", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_enabled in
         ("enabled", arg) :: bnds
       in
       `Assoc bnds
    : context_awareness -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_context_awareness

[@@@deriving.end]

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
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
         if Stdlib.( = ) [] v_pattern then bnds
         else
           let arg =
             (yojson_of_list yojson_of_entry__pattern) v_pattern
           in
           let bnd = "pattern", arg in
           bnd :: bnds
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
  ocr_enabled : bool prop option; [@option]
  type_ : string prop; [@key "type"]
  context_awareness : context_awareness list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  entry : entry list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
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
       ocr_enabled = v_ocr_enabled;
       type_ = v_type_;
       context_awareness = v_context_awareness;
       entry = v_entry;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_entry then bnds
         else
           let arg = (yojson_of_list yojson_of_entry) v_entry in
           let bnd = "entry", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_context_awareness then bnds
         else
           let arg =
             (yojson_of_list yojson_of_context_awareness)
               v_context_awareness
           in
           let bnd = "context_awareness", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
       in
       let bnds =
         match v_ocr_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ocr_enabled", arg in
             bnd :: bnds
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

let context_awareness__skip ~files () : context_awareness__skip =
  { files }

let context_awareness ~enabled ~skip () : context_awareness =
  { enabled; skip }

let entry__pattern ?validation ~regex () : entry__pattern =
  { regex; validation }

let entry ?enabled ?id ?(pattern = []) ~name () : entry =
  { enabled; id; name; pattern }

let cloudflare_dlp_profile ?description ?id ?ocr_enabled
    ?(context_awareness = []) ~account_id ~allowed_match_count ~name
    ~type_ ~entry () : cloudflare_dlp_profile =
  {
    account_id;
    allowed_match_count;
    description;
    id;
    name;
    ocr_enabled;
    type_;
    context_awareness;
    entry;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  allowed_match_count : float prop;
  description : string prop;
  id : string prop;
  name : string prop;
  ocr_enabled : bool prop;
  type_ : string prop;
}

let make ?description ?id ?ocr_enabled ?(context_awareness = [])
    ~account_id ~allowed_match_count ~name ~type_ ~entry __id =
  let __type = "cloudflare_dlp_profile" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       allowed_match_count =
         Prop.computed __type __id "allowed_match_count";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       ocr_enabled = Prop.computed __type __id "ocr_enabled";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_dlp_profile
        (cloudflare_dlp_profile ?description ?id ?ocr_enabled
           ~context_awareness ~account_id ~allowed_match_count ~name
           ~type_ ~entry ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?ocr_enabled
    ?(context_awareness = []) ~account_id ~allowed_match_count ~name
    ~type_ ~entry __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?ocr_enabled ~context_awareness ~account_id
      ~allowed_match_count ~name ~type_ ~entry __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
