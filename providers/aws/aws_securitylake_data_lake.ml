(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__lifecycle_configuration__expiration = {
  days : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__lifecycle_configuration__expiration) -> ()

let yojson_of_configuration__lifecycle_configuration__expiration =
  (function
   | { days = v_days } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__lifecycle_configuration__expiration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__lifecycle_configuration__expiration

[@@@deriving.end]

type configuration__lifecycle_configuration__transition = {
  days : float prop option; [@option]
  storage_class : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : configuration__lifecycle_configuration__transition) -> ()

let yojson_of_configuration__lifecycle_configuration__transition =
  (function
   | { days = v_days; storage_class = v_storage_class } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         match v_days with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "days", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__lifecycle_configuration__transition ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__lifecycle_configuration__transition

[@@@deriving.end]

type configuration__lifecycle_configuration = {
  expiration :
    configuration__lifecycle_configuration__expiration list;
      [@default []] [@yojson_drop_default ( = )]
  transition :
    configuration__lifecycle_configuration__transition list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__lifecycle_configuration) -> ()

let yojson_of_configuration__lifecycle_configuration =
  (function
   | { expiration = v_expiration; transition = v_transition } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_transition then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__lifecycle_configuration__transition)
               v_transition
           in
           let bnd = "transition", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_expiration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__lifecycle_configuration__expiration)
               v_expiration
           in
           let bnd = "expiration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration__lifecycle_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__lifecycle_configuration

[@@@deriving.end]

type configuration__replication_configuration = {
  regions : string prop list option; [@option]
  role_arn : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__replication_configuration) -> ()

let yojson_of_configuration__replication_configuration =
  (function
   | { regions = v_regions; role_arn = v_role_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_role_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "role_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_regions with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "regions", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__replication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__replication_configuration

[@@@deriving.end]

type configuration__encryption_configuration = {
  kms_key_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__encryption_configuration) -> ()

let yojson_of_configuration__encryption_configuration =
  (function
   | { kms_key_id = v_kms_key_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_kms_key_id in
         ("kms_key_id", arg) :: bnds
       in
       `Assoc bnds
    : configuration__encryption_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__encryption_configuration

[@@@deriving.end]

type configuration = {
  encryption_configuration :
    configuration__encryption_configuration list option;
      [@option]
  region : string prop;
  lifecycle_configuration :
    configuration__lifecycle_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  replication_configuration :
    configuration__replication_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | {
       encryption_configuration = v_encryption_configuration;
       region = v_region;
       lifecycle_configuration = v_lifecycle_configuration;
       replication_configuration = v_replication_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_replication_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__replication_configuration)
               v_replication_configuration
           in
           let bnd = "replication_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_lifecycle_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_configuration__lifecycle_configuration)
               v_lifecycle_configuration
           in
           let bnd = "lifecycle_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       let bnds =
         match v_encryption_configuration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 yojson_of_configuration__encryption_configuration v
             in
             let bnd = "encryption_configuration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

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

type aws_securitylake_data_lake = {
  meta_store_manager_role_arn : string prop;
  tags : (string * string prop) list option; [@option]
  configuration : configuration list;
      [@default []] [@yojson_drop_default ( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_securitylake_data_lake) -> ()

let yojson_of_aws_securitylake_data_lake =
  (function
   | {
       meta_store_manager_role_arn = v_meta_store_manager_role_arn;
       tags = v_tags;
       configuration = v_configuration;
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
         if [] = v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_tags with
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
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string
             v_meta_store_manager_role_arn
         in
         ("meta_store_manager_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_securitylake_data_lake -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_securitylake_data_lake

[@@@deriving.end]

let configuration__lifecycle_configuration__expiration ?days () :
    configuration__lifecycle_configuration__expiration =
  { days }

let configuration__lifecycle_configuration__transition ?days
    ?storage_class () :
    configuration__lifecycle_configuration__transition =
  { days; storage_class }

let configuration__lifecycle_configuration ?(expiration = [])
    ~transition () : configuration__lifecycle_configuration =
  { expiration; transition }

let configuration__replication_configuration ?regions ?role_arn () :
    configuration__replication_configuration =
  { regions; role_arn }

let configuration ?encryption_configuration
    ?(lifecycle_configuration = []) ?(replication_configuration = [])
    ~region () : configuration =
  {
    encryption_configuration;
    region;
    lifecycle_configuration;
    replication_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securitylake_data_lake ?tags ?(configuration = []) ?timeouts
    ~meta_store_manager_role_arn () : aws_securitylake_data_lake =
  { meta_store_manager_role_arn; tags; configuration; timeouts }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  meta_store_manager_role_arn : string prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?(configuration = []) ?timeouts
    ~meta_store_manager_role_arn __id =
  let __type = "aws_securitylake_data_lake" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       meta_store_manager_role_arn =
         Prop.computed __type __id "meta_store_manager_role_arn";
       s3_bucket_arn = Prop.computed __type __id "s3_bucket_arn";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_securitylake_data_lake
        (aws_securitylake_data_lake ?tags ~configuration ?timeouts
           ~meta_store_manager_role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?(configuration = []) ?timeouts
    ~meta_store_manager_role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?tags ~configuration ?timeouts ~meta_store_manager_role_arn
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
