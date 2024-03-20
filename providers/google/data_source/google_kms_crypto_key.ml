(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type primary = { name : string prop; state : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : primary) -> ()

let yojson_of_primary =
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
    : primary -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_primary

[@@@deriving.end]

type version_template = {
  algorithm : string prop;
  protection_level : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : version_template) -> ()

let yojson_of_version_template =
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
    : version_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version_template

[@@@deriving.end]

type google_kms_crypto_key = {
  id : string prop option; [@option]
  key_ring : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_crypto_key) -> ()

let yojson_of_google_kms_crypto_key =
  (function
   | { id = v_id; key_ring = v_key_ring; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
       `Assoc bnds
    : google_kms_crypto_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_crypto_key

[@@@deriving.end]

let google_kms_crypto_key ?id ~key_ring ~name () :
    google_kms_crypto_key =
  { id; key_ring; name }

type t = {
  destroy_scheduled_duration : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  import_only : bool prop;
  key_ring : string prop;
  labels : (string * string) list prop;
  name : string prop;
  primary : primary list prop;
  purpose : string prop;
  rotation_period : string prop;
  skip_initial_version_creation : bool prop;
  terraform_labels : (string * string) list prop;
  version_template : version_template list prop;
}

let make ?id ~key_ring ~name __id =
  let __type = "google_kms_crypto_key" in
  let __attrs =
    ({
       destroy_scheduled_duration =
         Prop.computed __type __id "destroy_scheduled_duration";
       effective_labels =
         Prop.computed __type __id "effective_labels";
       id = Prop.computed __type __id "id";
       import_only = Prop.computed __type __id "import_only";
       key_ring = Prop.computed __type __id "key_ring";
       labels = Prop.computed __type __id "labels";
       name = Prop.computed __type __id "name";
       primary = Prop.computed __type __id "primary";
       purpose = Prop.computed __type __id "purpose";
       rotation_period = Prop.computed __type __id "rotation_period";
       skip_initial_version_creation =
         Prop.computed __type __id "skip_initial_version_creation";
       terraform_labels =
         Prop.computed __type __id "terraform_labels";
       version_template =
         Prop.computed __type __id "version_template";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_crypto_key
        (google_kms_crypto_key ?id ~key_ring ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ~key_ring ~name __id =
  let (r : _ Tf_core.resource) = make ?id ~key_ring ~name __id in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
