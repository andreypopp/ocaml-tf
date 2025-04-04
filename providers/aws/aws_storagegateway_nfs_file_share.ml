(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type cache_attributes = {
  cache_stale_timeout_in_seconds : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cache_attributes) -> ()

let yojson_of_cache_attributes =
  (function
   | {
       cache_stale_timeout_in_seconds =
         v_cache_stale_timeout_in_seconds;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_cache_stale_timeout_in_seconds with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "cache_stale_timeout_in_seconds", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : cache_attributes -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cache_attributes

[@@@deriving.end]

type nfs_file_share_defaults = {
  directory_mode : string prop option; [@option]
  file_mode : string prop option; [@option]
  group_id : string prop option; [@option]
  owner_id : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : nfs_file_share_defaults) -> ()

let yojson_of_nfs_file_share_defaults =
  (function
   | {
       directory_mode = v_directory_mode;
       file_mode = v_file_mode;
       group_id = v_group_id;
       owner_id = v_owner_id;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_owner_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "owner_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_file_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_directory_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "directory_mode", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : nfs_file_share_defaults -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_nfs_file_share_defaults

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

type aws_storagegateway_nfs_file_share = {
  audit_destination_arn : string prop option; [@option]
  bucket_region : string prop option; [@option]
  client_list : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  default_storage_class : string prop option; [@option]
  file_share_name : string prop option; [@option]
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  kms_encrypted : bool prop option; [@option]
  kms_key_arn : string prop option; [@option]
  location_arn : string prop;
  notification_policy : string prop option; [@option]
  object_acl : string prop option; [@option]
  read_only : bool prop option; [@option]
  requester_pays : bool prop option; [@option]
  role_arn : string prop;
  squash : string prop option; [@option]
  tags : string prop Tf_core.assoc option; [@option]
  tags_all : string prop Tf_core.assoc option; [@option]
  vpc_endpoint_dns_name : string prop option; [@option]
  cache_attributes : cache_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  nfs_file_share_defaults : nfs_file_share_defaults list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_nfs_file_share) -> ()

let yojson_of_aws_storagegateway_nfs_file_share =
  (function
   | {
       audit_destination_arn = v_audit_destination_arn;
       bucket_region = v_bucket_region;
       client_list = v_client_list;
       default_storage_class = v_default_storage_class;
       file_share_name = v_file_share_name;
       gateway_arn = v_gateway_arn;
       guess_mime_type_enabled = v_guess_mime_type_enabled;
       id = v_id;
       kms_encrypted = v_kms_encrypted;
       kms_key_arn = v_kms_key_arn;
       location_arn = v_location_arn;
       notification_policy = v_notification_policy;
       object_acl = v_object_acl;
       read_only = v_read_only;
       requester_pays = v_requester_pays;
       role_arn = v_role_arn;
       squash = v_squash;
       tags = v_tags;
       tags_all = v_tags_all;
       vpc_endpoint_dns_name = v_vpc_endpoint_dns_name;
       cache_attributes = v_cache_attributes;
       nfs_file_share_defaults = v_nfs_file_share_defaults;
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
         if Stdlib.( = ) [] v_nfs_file_share_defaults then bnds
         else
           let arg =
             (yojson_of_list yojson_of_nfs_file_share_defaults)
               v_nfs_file_share_defaults
           in
           let bnd = "nfs_file_share_defaults", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_cache_attributes then bnds
         else
           let arg =
             (yojson_of_list yojson_of_cache_attributes)
               v_cache_attributes
           in
           let bnd = "cache_attributes", arg in
           bnd :: bnds
       in
       let bnds =
         match v_vpc_endpoint_dns_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vpc_endpoint_dns_name", arg in
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
         match v_squash with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "squash", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_role_arn in
         ("role_arn", arg) :: bnds
       in
       let bnds =
         match v_requester_pays with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "requester_pays", arg in
             bnd :: bnds
       in
       let bnds =
         match v_read_only with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "read_only", arg in
             bnd :: bnds
       in
       let bnds =
         match v_object_acl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "object_acl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_notification_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "notification_policy", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_location_arn in
         ("location_arn", arg) :: bnds
       in
       let bnds =
         match v_kms_key_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_arn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kms_encrypted with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "kms_encrypted", arg in
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
         match v_guess_mime_type_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "guess_mime_type_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_gateway_arn in
         ("gateway_arn", arg) :: bnds
       in
       let bnds =
         match v_file_share_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "file_share_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_default_storage_class with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "default_storage_class", arg in
             bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_client_list then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_client_list
           in
           let bnd = "client_list", arg in
           bnd :: bnds
       in
       let bnds =
         match v_bucket_region with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "bucket_region", arg in
             bnd :: bnds
       in
       let bnds =
         match v_audit_destination_arn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "audit_destination_arn", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_nfs_file_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_nfs_file_share

[@@@deriving.end]

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let nfs_file_share_defaults ?directory_mode ?file_mode ?group_id
    ?owner_id () : nfs_file_share_defaults =
  { directory_mode; file_mode; group_id; owner_id }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_storagegateway_nfs_file_share ?audit_destination_arn
    ?bucket_region ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?kms_encrypted ?kms_key_arn
    ?notification_policy ?object_acl ?read_only ?requester_pays
    ?squash ?tags ?tags_all ?vpc_endpoint_dns_name
    ?(cache_attributes = []) ?(nfs_file_share_defaults = [])
    ?timeouts ~client_list ~gateway_arn ~location_arn ~role_arn () :
    aws_storagegateway_nfs_file_share =
  {
    audit_destination_arn;
    bucket_region;
    client_list;
    default_storage_class;
    file_share_name;
    gateway_arn;
    guess_mime_type_enabled;
    id;
    kms_encrypted;
    kms_key_arn;
    location_arn;
    notification_policy;
    object_acl;
    read_only;
    requester_pays;
    role_arn;
    squash;
    tags;
    tags_all;
    vpc_endpoint_dns_name;
    cache_attributes;
    nfs_file_share_defaults;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  audit_destination_arn : string prop;
  bucket_region : string prop;
  client_list : string list prop;
  default_storage_class : string prop;
  file_share_name : string prop;
  fileshare_id : string prop;
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop;
  id : string prop;
  kms_encrypted : bool prop;
  kms_key_arn : string prop;
  location_arn : string prop;
  notification_policy : string prop;
  object_acl : string prop;
  path : string prop;
  read_only : bool prop;
  requester_pays : bool prop;
  role_arn : string prop;
  squash : string prop;
  tags : string Tf_core.assoc prop;
  tags_all : string Tf_core.assoc prop;
  vpc_endpoint_dns_name : string prop;
}

let make ?audit_destination_arn ?bucket_region ?default_storage_class
    ?file_share_name ?guess_mime_type_enabled ?id ?kms_encrypted
    ?kms_key_arn ?notification_policy ?object_acl ?read_only
    ?requester_pays ?squash ?tags ?tags_all ?vpc_endpoint_dns_name
    ?(cache_attributes = []) ?(nfs_file_share_defaults = [])
    ?timeouts ~client_list ~gateway_arn ~location_arn ~role_arn __id
    =
  let __type = "aws_storagegateway_nfs_file_share" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       audit_destination_arn =
         Prop.computed __type __id "audit_destination_arn";
       bucket_region = Prop.computed __type __id "bucket_region";
       client_list = Prop.computed __type __id "client_list";
       default_storage_class =
         Prop.computed __type __id "default_storage_class";
       file_share_name = Prop.computed __type __id "file_share_name";
       fileshare_id = Prop.computed __type __id "fileshare_id";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       guess_mime_type_enabled =
         Prop.computed __type __id "guess_mime_type_enabled";
       id = Prop.computed __type __id "id";
       kms_encrypted = Prop.computed __type __id "kms_encrypted";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       location_arn = Prop.computed __type __id "location_arn";
       notification_policy =
         Prop.computed __type __id "notification_policy";
       object_acl = Prop.computed __type __id "object_acl";
       path = Prop.computed __type __id "path";
       read_only = Prop.computed __type __id "read_only";
       requester_pays = Prop.computed __type __id "requester_pays";
       role_arn = Prop.computed __type __id "role_arn";
       squash = Prop.computed __type __id "squash";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       vpc_endpoint_dns_name =
         Prop.computed __type __id "vpc_endpoint_dns_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_nfs_file_share
        (aws_storagegateway_nfs_file_share ?audit_destination_arn
           ?bucket_region ?default_storage_class ?file_share_name
           ?guess_mime_type_enabled ?id ?kms_encrypted ?kms_key_arn
           ?notification_policy ?object_acl ?read_only
           ?requester_pays ?squash ?tags ?tags_all
           ?vpc_endpoint_dns_name ~cache_attributes
           ~nfs_file_share_defaults ?timeouts ~client_list
           ~gateway_arn ~location_arn ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?audit_destination_arn ?bucket_region
    ?default_storage_class ?file_share_name ?guess_mime_type_enabled
    ?id ?kms_encrypted ?kms_key_arn ?notification_policy ?object_acl
    ?read_only ?requester_pays ?squash ?tags ?tags_all
    ?vpc_endpoint_dns_name ?(cache_attributes = [])
    ?(nfs_file_share_defaults = []) ?timeouts ~client_list
    ~gateway_arn ~location_arn ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?audit_destination_arn ?bucket_region ?default_storage_class
      ?file_share_name ?guess_mime_type_enabled ?id ?kms_encrypted
      ?kms_key_arn ?notification_policy ?object_acl ?read_only
      ?requester_pays ?squash ?tags ?tags_all ?vpc_endpoint_dns_name
      ~cache_attributes ~nfs_file_share_defaults ?timeouts
      ~client_list ~gateway_arn ~location_arn ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
