(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type version_template = {
  algorithm : string prop;
  protection_level : string prop option; [@option]
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
         match v_protection_level with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protection_level", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_algorithm in
         ("algorithm", arg) :: bnds
       in
       `Assoc bnds
    : version_template -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_version_template

[@@@deriving.end]

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

type google_kms_crypto_key = {
  destroy_scheduled_duration : string prop option; [@option]
  id : string prop option; [@option]
  import_only : bool prop option; [@option]
  key_ring : string prop;
  labels : (string * string prop) list option; [@option]
  name : string prop;
  purpose : string prop option; [@option]
  rotation_period : string prop option; [@option]
  skip_initial_version_creation : bool prop option; [@option]
  timeouts : timeouts option;
  version_template : version_template list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_crypto_key) -> ()

let yojson_of_google_kms_crypto_key =
  (function
   | {
       destroy_scheduled_duration = v_destroy_scheduled_duration;
       id = v_id;
       import_only = v_import_only;
       key_ring = v_key_ring;
       labels = v_labels;
       name = v_name;
       purpose = v_purpose;
       rotation_period = v_rotation_period;
       skip_initial_version_creation =
         v_skip_initial_version_creation;
       timeouts = v_timeouts;
       version_template = v_version_template;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_version_template then bnds
         else
           let arg =
             (yojson_of_list yojson_of_version_template)
               v_version_template
           in
           let bnd = "version_template", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         match v_skip_initial_version_creation with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "skip_initial_version_creation", arg in
             bnd :: bnds
       in
       let bnds =
         match v_rotation_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "rotation_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_purpose with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "purpose", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_labels with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "labels", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_ring in
         ("key_ring", arg) :: bnds
       in
       let bnds =
         match v_import_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "import_only", arg in
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
         match v_destroy_scheduled_duration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "destroy_scheduled_duration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : google_kms_crypto_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_crypto_key

[@@@deriving.end]

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let version_template ?protection_level ~algorithm () :
    version_template =
  { algorithm; protection_level }

let google_kms_crypto_key ?destroy_scheduled_duration ?id
    ?import_only ?labels ?purpose ?rotation_period
    ?skip_initial_version_creation ?timeouts ?(version_template = [])
    ~key_ring ~name () : google_kms_crypto_key =
  {
    destroy_scheduled_duration;
    id;
    import_only;
    key_ring;
    labels;
    name;
    purpose;
    rotation_period;
    skip_initial_version_creation;
    timeouts;
    version_template;
  }

type t = {
  tf_name : string;
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
}

let make ?destroy_scheduled_duration ?id ?import_only ?labels
    ?purpose ?rotation_period ?skip_initial_version_creation
    ?timeouts ?(version_template = []) ~key_ring ~name __id =
  let __type = "google_kms_crypto_key" in
  let __attrs =
    ({
       tf_name = __id;
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
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_crypto_key
        (google_kms_crypto_key ?destroy_scheduled_duration ?id
           ?import_only ?labels ?purpose ?rotation_period
           ?skip_initial_version_creation ?timeouts ~version_template
           ~key_ring ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?destroy_scheduled_duration ?id ?import_only
    ?labels ?purpose ?rotation_period ?skip_initial_version_creation
    ?timeouts ?(version_template = []) ~key_ring ~name __id =
  let (r : _ Tf_core.resource) =
    make ?destroy_scheduled_duration ?id ?import_only ?labels
      ?purpose ?rotation_period ?skip_initial_version_creation
      ?timeouts ~version_template ~key_ring ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
