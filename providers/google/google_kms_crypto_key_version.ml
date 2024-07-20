(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type external_protection_level_options = {
  ekm_connection_key_path : string prop option; [@option]
  external_key_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : external_protection_level_options) -> ()

let yojson_of_external_protection_level_options =
  (function
   | {
       ekm_connection_key_path = v_ekm_connection_key_path;
       external_key_uri = v_external_key_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_external_key_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "external_key_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_ekm_connection_key_path with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "ekm_connection_key_path", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : external_protection_level_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_external_protection_level_options

[@@@deriving.end]

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

type attestation__external_protection_level_options = {
  ekm_connection_key_path : string prop;
  external_key_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : attestation__external_protection_level_options) -> ()

let yojson_of_attestation__external_protection_level_options =
  (function
   | {
       ekm_connection_key_path = v_ekm_connection_key_path;
       external_key_uri = v_external_key_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_external_key_uri
         in
         ("external_key_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_ekm_connection_key_path
         in
         ("ekm_connection_key_path", arg) :: bnds
       in
       `Assoc bnds
    : attestation__external_protection_level_options ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation__external_protection_level_options

[@@@deriving.end]

type attestation__cert_chains = {
  cavium_certs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google_card_certs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  google_partition_certs : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation__cert_chains) -> ()

let yojson_of_attestation__cert_chains =
  (function
   | {
       cavium_certs = v_cavium_certs;
       google_card_certs = v_google_card_certs;
       google_partition_certs = v_google_partition_certs;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_google_partition_certs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_google_partition_certs
           in
           let bnd = "google_partition_certs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_google_card_certs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_google_card_certs
           in
           let bnd = "google_card_certs", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cavium_certs then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_cavium_certs
           in
           let bnd = "cavium_certs", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : attestation__cert_chains -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation__cert_chains

[@@@deriving.end]

type attestation = {
  cert_chains : attestation__cert_chains list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  content : string prop;
  external_protection_level_options :
    attestation__external_protection_level_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  format : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : attestation) -> ()

let yojson_of_attestation =
  (function
   | {
       cert_chains = v_cert_chains;
       content = v_content;
       external_protection_level_options =
         v_external_protection_level_options;
       format = v_format;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_format in
         ("format", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_protection_level_options then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_attestation__external_protection_level_options)
               v_external_protection_level_options
           in
           let bnd = "external_protection_level_options", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cert_chains then bnds
         else
           let arg =
             (yojson_of_list yojson_of_attestation__cert_chains)
               v_cert_chains
           in
           let bnd = "cert_chains", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : attestation -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_attestation

[@@@deriving.end]

type google_kms_crypto_key_version = {
  crypto_key : string prop;
  id : string prop option; [@option]
  state : string prop option; [@option]
  external_protection_level_options :
    external_protection_level_options list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : google_kms_crypto_key_version) -> ()

let yojson_of_google_kms_crypto_key_version =
  (function
   | {
       crypto_key = v_crypto_key;
       id = v_id;
       state = v_state;
       external_protection_level_options =
         v_external_protection_level_options;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_external_protection_level_options then
           bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_external_protection_level_options)
               v_external_protection_level_options
           in
           let bnd = "external_protection_level_options", arg in
           bnd :: bnds
       in
       let bnds =
         match v_state with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "state", arg in
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
         let arg = yojson_of_prop yojson_of_string v_crypto_key in
         ("crypto_key", arg) :: bnds
       in
       `Assoc bnds
    : google_kms_crypto_key_version ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_google_kms_crypto_key_version

[@@@deriving.end]

let external_protection_level_options ?ekm_connection_key_path
    ?external_key_uri () : external_protection_level_options =
  { ekm_connection_key_path; external_key_uri }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_kms_crypto_key_version ?id ?state
    ?(external_protection_level_options = []) ?timeouts ~crypto_key
    () : google_kms_crypto_key_version =
  {
    crypto_key;
    id;
    state;
    external_protection_level_options;
    timeouts;
  }

type t = {
  tf_name : string;
  algorithm : string prop;
  attestation : attestation list prop;
  crypto_key : string prop;
  generate_time : string prop;
  id : string prop;
  name : string prop;
  protection_level : string prop;
  state : string prop;
}

let make ?id ?state ?(external_protection_level_options = [])
    ?timeouts ~crypto_key __id =
  let __type = "google_kms_crypto_key_version" in
  let __attrs =
    ({
       tf_name = __id;
       algorithm = Prop.computed __type __id "algorithm";
       attestation = Prop.computed __type __id "attestation";
       crypto_key = Prop.computed __type __id "crypto_key";
       generate_time = Prop.computed __type __id "generate_time";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       protection_level =
         Prop.computed __type __id "protection_level";
       state = Prop.computed __type __id "state";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_google_kms_crypto_key_version
        (google_kms_crypto_key_version ?id ?state
           ~external_protection_level_options ?timeouts ~crypto_key
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?state
    ?(external_protection_level_options = []) ?timeouts ~crypto_key
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?state ~external_protection_level_options ?timeouts
      ~crypto_key __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
