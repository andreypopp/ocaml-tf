(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replica = {
  kms_key_id : string prop option; [@option]
  region : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replica) -> ()

let yojson_of_replica =
  (function
   | { kms_key_id = v_kms_key_id; region = v_region } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : replica -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replica

[@@@deriving.end]

type aws_secretsmanager_secret = {
  description : string prop option; [@option]
  force_overwrite_replica_secret : bool prop option; [@option]
  id : string prop option; [@option]
  kms_key_id : string prop option; [@option]
  name : string prop option; [@option]
  name_prefix : string prop option; [@option]
  policy : string prop option; [@option]
  recovery_window_in_days : float prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  replica : replica list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_secretsmanager_secret) -> ()

let yojson_of_aws_secretsmanager_secret =
  (function
   | {
       description = v_description;
       force_overwrite_replica_secret =
         v_force_overwrite_replica_secret;
       id = v_id;
       kms_key_id = v_kms_key_id;
       name = v_name;
       name_prefix = v_name_prefix;
       policy = v_policy;
       recovery_window_in_days = v_recovery_window_in_days;
       tags = v_tags;
       tags_all = v_tags_all;
       replica = v_replica;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_replica then bnds
         else
           let arg = (yojson_of_list yojson_of_replica) v_replica in
           let bnd = "replica", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               Tf_core.yojson_of_assoc
                 (yojson_of_prop yojson_of_string)
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_recovery_window_in_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "recovery_window_in_days", arg in
             bnd :: bnds
       in
       let bnds =
         match v_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "name_prefix", arg in
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
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
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
         match v_force_overwrite_replica_secret with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "force_overwrite_replica_secret", arg in
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
       `Assoc bnds
    : aws_secretsmanager_secret -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_secretsmanager_secret

[@@@deriving.end]

let replica ?kms_key_id ~region () : replica = { kms_key_id; region }

let aws_secretsmanager_secret ?description
    ?force_overwrite_replica_secret ?id ?kms_key_id ?name
    ?name_prefix ?policy ?recovery_window_in_days ?tags ?tags_all
    ~replica () : aws_secretsmanager_secret =
  {
    description;
    force_overwrite_replica_secret;
    id;
    kms_key_id;
    name;
    name_prefix;
    policy;
    recovery_window_in_days;
    tags;
    tags_all;
    replica;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  force_overwrite_replica_secret : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  name_prefix : string prop;
  policy : string prop;
  recovery_window_in_days : float prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
}

let make ?description ?force_overwrite_replica_secret ?id ?kms_key_id
    ?name ?name_prefix ?policy ?recovery_window_in_days ?tags
    ?tags_all ~replica __id =
  let __type = "aws_secretsmanager_secret" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       force_overwrite_replica_secret =
         Prop.computed __type __id "force_overwrite_replica_secret";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
       policy = Prop.computed __type __id "policy";
       recovery_window_in_days =
         Prop.computed __type __id "recovery_window_in_days";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_secretsmanager_secret
        (aws_secretsmanager_secret ?description
           ?force_overwrite_replica_secret ?id ?kms_key_id ?name
           ?name_prefix ?policy ?recovery_window_in_days ?tags
           ?tags_all ~replica ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?force_overwrite_replica_secret
    ?id ?kms_key_id ?name ?name_prefix ?policy
    ?recovery_window_in_days ?tags ?tags_all ~replica __id =
  let (r : _ Tf_core.resource) =
    make ?description ?force_overwrite_replica_secret ?id ?kms_key_id
      ?name ?name_prefix ?policy ?recovery_window_in_days ?tags
      ?tags_all ~replica __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
