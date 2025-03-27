(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type vault_transit_secret_backend_key = {
  allow_plaintext_backup : bool prop option; [@option]
  auto_rotate_period : float prop option; [@option]
  backend : string prop;
  convergent_encryption : bool prop option; [@option]
  deletion_allowed : bool prop option; [@option]
  derived : bool prop option; [@option]
  exportable : bool prop option; [@option]
  hybrid_key_type_ec : string prop option; [@option]
  hybrid_key_type_pqc : string prop option; [@option]
  id : string prop option; [@option]
  key_size : float prop option; [@option]
  min_decryption_version : float prop option; [@option]
  min_encryption_version : float prop option; [@option]
  name : string prop;
  namespace : string prop option; [@option]
  parameter_set : string prop option; [@option]
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vault_transit_secret_backend_key) -> ()

let yojson_of_vault_transit_secret_backend_key =
  (function
   | {
       allow_plaintext_backup = v_allow_plaintext_backup;
       auto_rotate_period = v_auto_rotate_period;
       backend = v_backend;
       convergent_encryption = v_convergent_encryption;
       deletion_allowed = v_deletion_allowed;
       derived = v_derived;
       exportable = v_exportable;
       hybrid_key_type_ec = v_hybrid_key_type_ec;
       hybrid_key_type_pqc = v_hybrid_key_type_pqc;
       id = v_id;
       key_size = v_key_size;
       min_decryption_version = v_min_decryption_version;
       min_encryption_version = v_min_encryption_version;
       name = v_name;
       namespace = v_namespace;
       parameter_set = v_parameter_set;
       type_ = v_type_;
     } ->
     let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list = [] in
     let bnds =
       match v_type_ with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "type", arg in
         bnd :: bnds
     in
     let bnds =
       match v_parameter_set with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "parameter_set", arg in
         bnd :: bnds
     in
     let bnds =
       match v_namespace with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "namespace", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_name in
       ("name", arg) :: bnds
     in
     let bnds =
       match v_min_encryption_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "min_encryption_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_min_decryption_version with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "min_decryption_version", arg in
         bnd :: bnds
     in
     let bnds =
       match v_key_size with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "key_size", arg in
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
       match v_hybrid_key_type_pqc with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "hybrid_key_type_pqc", arg in
         bnd :: bnds
     in
     let bnds =
       match v_hybrid_key_type_ec with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_string v in
         let bnd = "hybrid_key_type_ec", arg in
         bnd :: bnds
     in
     let bnds =
       match v_exportable with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "exportable", arg in
         bnd :: bnds
     in
     let bnds =
       match v_derived with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "derived", arg in
         bnd :: bnds
     in
     let bnds =
       match v_deletion_allowed with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "deletion_allowed", arg in
         bnd :: bnds
     in
     let bnds =
       match v_convergent_encryption with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "convergent_encryption", arg in
         bnd :: bnds
     in
     let bnds =
       let arg = yojson_of_prop yojson_of_string v_backend in
       ("backend", arg) :: bnds
     in
     let bnds =
       match v_auto_rotate_period with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_float v in
         let bnd = "auto_rotate_period", arg in
         bnd :: bnds
     in
     let bnds =
       match v_allow_plaintext_backup with
       | Ppx_yojson_conv_lib.Option.None -> bnds
       | Ppx_yojson_conv_lib.Option.Some v ->
         let arg = yojson_of_prop yojson_of_bool v in
         let bnd = "allow_plaintext_backup", arg in
         bnd :: bnds
     in
     `Assoc bnds
    : vault_transit_secret_backend_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vault_transit_secret_backend_key

[@@@deriving.end]

let vault_transit_secret_backend_key ?allow_plaintext_backup ?auto_rotate_period ?convergent_encryption
  ?deletion_allowed ?derived ?exportable ?hybrid_key_type_ec ?hybrid_key_type_pqc ?id ?key_size ?min_decryption_version
  ?min_encryption_version ?namespace ?parameter_set ?type_ ~backend ~name () =
  ({
     allow_plaintext_backup;
     auto_rotate_period;
     backend;
     convergent_encryption;
     deletion_allowed;
     derived;
     exportable;
     hybrid_key_type_ec;
     hybrid_key_type_pqc;
     id;
     key_size;
     min_decryption_version;
     min_encryption_version;
     name;
     namespace;
     parameter_set;
     type_;
   }
    : vault_transit_secret_backend_key)

type t = {
  tf_name : string;
  allow_plaintext_backup : bool prop;
  auto_rotate_period : float prop;
  backend : string prop;
  convergent_encryption : bool prop;
  deletion_allowed : bool prop;
  derived : bool prop;
  exportable : bool prop;
  hybrid_key_type_ec : string prop;
  hybrid_key_type_pqc : string prop;
  id : string prop;
  key_size : float prop;
  keys : string Tf_core.assoc list prop;
  latest_version : float prop;
  min_available_version : float prop;
  min_decryption_version : float prop;
  min_encryption_version : float prop;
  name : string prop;
  namespace : string prop;
  parameter_set : string prop;
  supports_decryption : bool prop;
  supports_derivation : bool prop;
  supports_encryption : bool prop;
  supports_signing : bool prop;
  type_ : string prop;
}

let make ?allow_plaintext_backup ?auto_rotate_period ?convergent_encryption ?deletion_allowed ?derived ?exportable
  ?hybrid_key_type_ec ?hybrid_key_type_pqc ?id ?key_size ?min_decryption_version ?min_encryption_version ?namespace
  ?parameter_set ?type_ ~backend ~name __id =
  let __type = "vault_transit_secret_backend_key" in
  let __attrs =
    ({
       tf_name = __id;
       allow_plaintext_backup = Prop.computed __type __id "allow_plaintext_backup";
       auto_rotate_period = Prop.computed __type __id "auto_rotate_period";
       backend = Prop.computed __type __id "backend";
       convergent_encryption = Prop.computed __type __id "convergent_encryption";
       deletion_allowed = Prop.computed __type __id "deletion_allowed";
       derived = Prop.computed __type __id "derived";
       exportable = Prop.computed __type __id "exportable";
       hybrid_key_type_ec = Prop.computed __type __id "hybrid_key_type_ec";
       hybrid_key_type_pqc = Prop.computed __type __id "hybrid_key_type_pqc";
       id = Prop.computed __type __id "id";
       key_size = Prop.computed __type __id "key_size";
       keys = Prop.computed __type __id "keys";
       latest_version = Prop.computed __type __id "latest_version";
       min_available_version = Prop.computed __type __id "min_available_version";
       min_decryption_version = Prop.computed __type __id "min_decryption_version";
       min_encryption_version = Prop.computed __type __id "min_encryption_version";
       name = Prop.computed __type __id "name";
       namespace = Prop.computed __type __id "namespace";
       parameter_set = Prop.computed __type __id "parameter_set";
       supports_decryption = Prop.computed __type __id "supports_decryption";
       supports_derivation = Prop.computed __type __id "supports_derivation";
       supports_encryption = Prop.computed __type __id "supports_encryption";
       supports_signing = Prop.computed __type __id "supports_signing";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_vault_transit_secret_backend_key
        (vault_transit_secret_backend_key ?allow_plaintext_backup ?auto_rotate_period ?convergent_encryption
           ?deletion_allowed ?derived ?exportable ?hybrid_key_type_ec ?hybrid_key_type_pqc ?id ?key_size
           ?min_decryption_version ?min_encryption_version ?namespace ?parameter_set ?type_ ~backend ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?allow_plaintext_backup ?auto_rotate_period ?convergent_encryption ?deletion_allowed ?derived
  ?exportable ?hybrid_key_type_ec ?hybrid_key_type_pqc ?id ?key_size ?min_decryption_version ?min_encryption_version
  ?namespace ?parameter_set ?type_ ~backend ~name __id =
  let (r : _ Tf_core.resource) =
    make ?allow_plaintext_backup ?auto_rotate_period ?convergent_encryption ?deletion_allowed ?derived ?exportable
      ?hybrid_key_type_ec ?hybrid_key_type_pqc ?id ?key_size ?min_decryption_version ?min_encryption_version ?namespace
      ?parameter_set ?type_ ~backend ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
