(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type keys__version_template = {
  algorithm : string prop;
  protection_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : keys__version_template) -> ()

let yojson_of_keys__version_template =
  (function
   | {
       algorithm = v_algorithm;
       protection_level = v_protection_level;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_protection_level
         in
         ("protection_level", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : keys__version_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys__version_template

[@@@deriving.end]

type keys__primary = { name : string prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : keys__primary) -> ()

let yojson_of_keys__primary =
  (function
   | { name = v_name; state = v_state } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_state in
         ("state", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : keys__primary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys__primary

[@@@deriving.end]

type keys = {
  crypto_key_backend : string prop;
  destroy_scheduled_duration : string prop;
  effective_labels : string prop Tf_core.assoc;
  id : string prop;
  import_only : bool prop;
  key_ring : string prop;
  labels : string prop Tf_core.assoc;
  name : string prop;
  primary : keys__primary list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  purpose : string prop;
  rotation_period : string prop;
  skip_initial_version_creation : bool prop;
  terraform_labels : string prop Tf_core.assoc;
  version_template : keys__version_template list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : keys) -> ()

let yojson_of_keys =
  (function
   | {
       crypto_key_backend = v_crypto_key_backend;
       destroy_scheduled_duration = v_destroy_scheduled_duration;
       effective_labels = v_effective_labels;
       id = v_id;
       import_only = v_import_only;
       key_ring = v_key_ring;
       labels = v_labels;
       name = v_name;
       primary = v_primary;
       purpose = v_purpose;
       rotation_period = v_rotation_period;
       skip_initial_version_creation =
         v_skip_initial_version_creation;
       terraform_labels = v_terraform_labels;
       version_template = v_version_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_version_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_keys__version_template)
               v_version_template
           in
           let bnd = "version_template", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_terraform_labels
         in
         ("terraform_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_bool
             v_skip_initial_version_creation
         in
         ("skip_initial_version_creation", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_rotation_period
         in
         ("rotation_period", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_purpose in
         ("purpose", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_primary then bnds
         else
           let arg =
             (yojson_of_list yojson_of_keys__primary) v_primary
           in
           let bnd = "primary", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_labels
         in
         ("labels", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_ring in
         ("key_ring", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_bool v_import_only in
         ("import_only", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       let bnds =
         let arg =
           Tf_core.yojson_of_assoc
             (yojson_of_prop yojson_of_string)
             v_effective_labels
         in
         ("effective_labels", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_destroy_scheduled_duration
         in
         ("destroy_scheduled_duration", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_crypto_key_backend
         in
         ("crypto_key_backend", arg) :: bnds
       in
       `Assoc bnds
    : keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_keys

[@@@deriving.end]

type google_kms_crypto_keys = {
  filter : string prop option; [@option]
  id : string prop option; [@option]
  key_ring : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_crypto_keys) -> ()

let yojson_of_google_kms_crypto_keys =
  (function
   | { filter = v_filter; id = v_id; key_ring = v_key_ring } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_ring in
         ("key_ring", arg) :: bnds
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
    : google_kms_crypto_keys -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_crypto_keys

[@@@deriving.end]

let google_kms_crypto_keys ?filter ?id ~key_ring () :
    google_kms_crypto_keys =
  { filter; id; key_ring }

type t = {
  tf_name : string;
  filter : string prop;
  id : string prop;
  key_ring : string prop;
  keys : keys list prop;
}

let make ?filter ?id ~key_ring __id =
  let __type = "google_kms_crypto_keys" in
  let __attrs =
    ({
       tf_name = __id;
       filter = Prop.computed __type __id "filter";
       id = Prop.computed __type __id "id";
       key_ring = Prop.computed __type __id "key_ring";
       keys = Prop.computed __type __id "keys";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_crypto_keys
        (google_kms_crypto_keys ?filter ?id ~key_ring ());
    attrs = __attrs;
  }

let register ?tf_module ?filter ?id ~key_ring __id =
  let (r : _ Tf_core.resource) = make ?filter ?id ~key_ring __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
