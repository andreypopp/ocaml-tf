(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type multi_region_configuration__replica_keys = {
  arn : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_region_configuration__replica_keys) -> ()

let yojson_of_multi_region_configuration__replica_keys =
  (function
   | { arn = v_arn; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : multi_region_configuration__replica_keys ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_region_configuration__replica_keys

[@@@deriving.end]

type multi_region_configuration__primary_key = {
  arn : string prop;
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_region_configuration__primary_key) -> ()

let yojson_of_multi_region_configuration__primary_key =
  (function
   | { arn = v_arn; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_arn in
         ("arn", arg) :: bnds
       in
       `Assoc bnds
    : multi_region_configuration__primary_key ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_region_configuration__primary_key

[@@@deriving.end]

type multi_region_configuration = {
  multi_region_key_type : string prop;
  primary_key : multi_region_configuration__primary_key list;
  replica_keys : multi_region_configuration__replica_keys list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : multi_region_configuration) -> ()

let yojson_of_multi_region_configuration =
  (function
   | {
       multi_region_key_type = v_multi_region_key_type;
       primary_key = v_primary_key;
       replica_keys = v_replica_keys;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_multi_region_configuration__replica_keys
             v_replica_keys
         in
         ("replica_keys", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_multi_region_configuration__primary_key
             v_primary_key
         in
         ("primary_key", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_multi_region_key_type
         in
         ("multi_region_key_type", arg) :: bnds
       in
       `Assoc bnds
    : multi_region_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_multi_region_configuration

[@@@deriving.end]

type xks_key_configuration = { id : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : xks_key_configuration) -> ()

let yojson_of_xks_key_configuration =
  (function
   | { id = v_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_id in
         ("id", arg) :: bnds
       in
       `Assoc bnds
    : xks_key_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_xks_key_configuration

[@@@deriving.end]

type aws_kms_key = {
  grant_tokens : string prop list option; [@option]
  id : string prop option; [@option]
  key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_kms_key) -> ()

let yojson_of_aws_kms_key =
  (function
   | { grant_tokens = v_grant_tokens; id = v_id; key_id = v_key_id }
     ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_key_id in
         ("key_id", arg) :: bnds
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
         match v_grant_tokens with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "grant_tokens", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_kms_key -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_kms_key

[@@@deriving.end]

let aws_kms_key ?grant_tokens ?id ~key_id () : aws_kms_key =
  { grant_tokens; id; key_id }

type t = {
  tf_name : string;
  arn : string prop;
  aws_account_id : string prop;
  cloud_hsm_cluster_id : string prop;
  creation_date : string prop;
  custom_key_store_id : string prop;
  customer_master_key_spec : string prop;
  deletion_date : string prop;
  description : string prop;
  enabled : bool prop;
  expiration_model : string prop;
  grant_tokens : string list prop;
  id : string prop;
  key_id : string prop;
  key_manager : string prop;
  key_spec : string prop;
  key_state : string prop;
  key_usage : string prop;
  multi_region : bool prop;
  multi_region_configuration : multi_region_configuration list prop;
  origin : string prop;
  pending_deletion_window_in_days : float prop;
  valid_to : string prop;
  xks_key_configuration : xks_key_configuration list prop;
}

let make ?grant_tokens ?id ~key_id __id =
  let __type = "aws_kms_key" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       aws_account_id = Prop.computed __type __id "aws_account_id";
       cloud_hsm_cluster_id =
         Prop.computed __type __id "cloud_hsm_cluster_id";
       creation_date = Prop.computed __type __id "creation_date";
       custom_key_store_id =
         Prop.computed __type __id "custom_key_store_id";
       customer_master_key_spec =
         Prop.computed __type __id "customer_master_key_spec";
       deletion_date = Prop.computed __type __id "deletion_date";
       description = Prop.computed __type __id "description";
       enabled = Prop.computed __type __id "enabled";
       expiration_model =
         Prop.computed __type __id "expiration_model";
       grant_tokens = Prop.computed __type __id "grant_tokens";
       id = Prop.computed __type __id "id";
       key_id = Prop.computed __type __id "key_id";
       key_manager = Prop.computed __type __id "key_manager";
       key_spec = Prop.computed __type __id "key_spec";
       key_state = Prop.computed __type __id "key_state";
       key_usage = Prop.computed __type __id "key_usage";
       multi_region = Prop.computed __type __id "multi_region";
       multi_region_configuration =
         Prop.computed __type __id "multi_region_configuration";
       origin = Prop.computed __type __id "origin";
       pending_deletion_window_in_days =
         Prop.computed __type __id "pending_deletion_window_in_days";
       valid_to = Prop.computed __type __id "valid_to";
       xks_key_configuration =
         Prop.computed __type __id "xks_key_configuration";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_kms_key
        (aws_kms_key ?grant_tokens ?id ~key_id ());
    attrs = __attrs;
  }

let register ?tf_module ?grant_tokens ?id ~key_id __id =
  let (r : _ Tf_core.resource) =
    make ?grant_tokens ?id ~key_id __id
  in
  Data.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
