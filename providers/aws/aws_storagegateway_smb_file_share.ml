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

type aws_storagegateway_smb_file_share = {
  access_based_enumeration : bool prop option; [@option]
  admin_user_list : string prop list option; [@option]
  audit_destination_arn : string prop option; [@option]
  authentication : string prop option; [@option]
  bucket_region : string prop option; [@option]
  case_sensitivity : string prop option; [@option]
  default_storage_class : string prop option; [@option]
  file_share_name : string prop option; [@option]
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop option; [@option]
  id : string prop option; [@option]
  invalid_user_list : string prop list option; [@option]
  kms_encrypted : bool prop option; [@option]
  kms_key_arn : string prop option; [@option]
  location_arn : string prop;
  notification_policy : string prop option; [@option]
  object_acl : string prop option; [@option]
  oplocks_enabled : bool prop option; [@option]
  read_only : bool prop option; [@option]
  requester_pays : bool prop option; [@option]
  role_arn : string prop;
  smb_acl_enabled : bool prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  valid_user_list : string prop list option; [@option]
  vpc_endpoint_dns_name : string prop option; [@option]
  cache_attributes : cache_attributes list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_storagegateway_smb_file_share) -> ()

let yojson_of_aws_storagegateway_smb_file_share =
  (function
   | {
       access_based_enumeration = v_access_based_enumeration;
       admin_user_list = v_admin_user_list;
       audit_destination_arn = v_audit_destination_arn;
       authentication = v_authentication;
       bucket_region = v_bucket_region;
       case_sensitivity = v_case_sensitivity;
       default_storage_class = v_default_storage_class;
       file_share_name = v_file_share_name;
       gateway_arn = v_gateway_arn;
       guess_mime_type_enabled = v_guess_mime_type_enabled;
       id = v_id;
       invalid_user_list = v_invalid_user_list;
       kms_encrypted = v_kms_encrypted;
       kms_key_arn = v_kms_key_arn;
       location_arn = v_location_arn;
       notification_policy = v_notification_policy;
       object_acl = v_object_acl;
       oplocks_enabled = v_oplocks_enabled;
       read_only = v_read_only;
       requester_pays = v_requester_pays;
       role_arn = v_role_arn;
       smb_acl_enabled = v_smb_acl_enabled;
       tags = v_tags;
       tags_all = v_tags_all;
       valid_user_list = v_valid_user_list;
       vpc_endpoint_dns_name = v_vpc_endpoint_dns_name;
       cache_attributes = v_cache_attributes;
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
         match v_valid_user_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "valid_user_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
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
             let bnd = "tags_all", arg in
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
         match v_smb_acl_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "smb_acl_enabled", arg in
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
         match v_oplocks_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "oplocks_enabled", arg in
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
         match v_invalid_user_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "invalid_user_list", arg in
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
         match v_case_sensitivity with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "case_sensitivity", arg in
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
         match v_authentication with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "authentication", arg in
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
       let bnds =
         match v_admin_user_list with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "admin_user_list", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_based_enumeration with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "access_based_enumeration", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_storagegateway_smb_file_share ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_storagegateway_smb_file_share

[@@@deriving.end]

let cache_attributes ?cache_stale_timeout_in_seconds () :
    cache_attributes =
  { cache_stale_timeout_in_seconds }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_storagegateway_smb_file_share ?access_based_enumeration
    ?admin_user_list ?audit_destination_arn ?authentication
    ?bucket_region ?case_sensitivity ?default_storage_class
    ?file_share_name ?guess_mime_type_enabled ?id ?invalid_user_list
    ?kms_encrypted ?kms_key_arn ?notification_policy ?object_acl
    ?oplocks_enabled ?read_only ?requester_pays ?smb_acl_enabled
    ?tags ?tags_all ?valid_user_list ?vpc_endpoint_dns_name
    ?(cache_attributes = []) ?timeouts ~gateway_arn ~location_arn
    ~role_arn () : aws_storagegateway_smb_file_share =
  {
    access_based_enumeration;
    admin_user_list;
    audit_destination_arn;
    authentication;
    bucket_region;
    case_sensitivity;
    default_storage_class;
    file_share_name;
    gateway_arn;
    guess_mime_type_enabled;
    id;
    invalid_user_list;
    kms_encrypted;
    kms_key_arn;
    location_arn;
    notification_policy;
    object_acl;
    oplocks_enabled;
    read_only;
    requester_pays;
    role_arn;
    smb_acl_enabled;
    tags;
    tags_all;
    valid_user_list;
    vpc_endpoint_dns_name;
    cache_attributes;
    timeouts;
  }

type t = {
  tf_name : string;
  access_based_enumeration : bool prop;
  admin_user_list : string list prop;
  arn : string prop;
  audit_destination_arn : string prop;
  authentication : string prop;
  bucket_region : string prop;
  case_sensitivity : string prop;
  default_storage_class : string prop;
  file_share_name : string prop;
  fileshare_id : string prop;
  gateway_arn : string prop;
  guess_mime_type_enabled : bool prop;
  id : string prop;
  invalid_user_list : string list prop;
  kms_encrypted : bool prop;
  kms_key_arn : string prop;
  location_arn : string prop;
  notification_policy : string prop;
  object_acl : string prop;
  oplocks_enabled : bool prop;
  path : string prop;
  read_only : bool prop;
  requester_pays : bool prop;
  role_arn : string prop;
  smb_acl_enabled : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  valid_user_list : string list prop;
  vpc_endpoint_dns_name : string prop;
}

let make ?access_based_enumeration ?admin_user_list
    ?audit_destination_arn ?authentication ?bucket_region
    ?case_sensitivity ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?invalid_user_list ?kms_encrypted
    ?kms_key_arn ?notification_policy ?object_acl ?oplocks_enabled
    ?read_only ?requester_pays ?smb_acl_enabled ?tags ?tags_all
    ?valid_user_list ?vpc_endpoint_dns_name ?(cache_attributes = [])
    ?timeouts ~gateway_arn ~location_arn ~role_arn __id =
  let __type = "aws_storagegateway_smb_file_share" in
  let __attrs =
    ({
       tf_name = __id;
       access_based_enumeration =
         Prop.computed __type __id "access_based_enumeration";
       admin_user_list = Prop.computed __type __id "admin_user_list";
       arn = Prop.computed __type __id "arn";
       audit_destination_arn =
         Prop.computed __type __id "audit_destination_arn";
       authentication = Prop.computed __type __id "authentication";
       bucket_region = Prop.computed __type __id "bucket_region";
       case_sensitivity =
         Prop.computed __type __id "case_sensitivity";
       default_storage_class =
         Prop.computed __type __id "default_storage_class";
       file_share_name = Prop.computed __type __id "file_share_name";
       fileshare_id = Prop.computed __type __id "fileshare_id";
       gateway_arn = Prop.computed __type __id "gateway_arn";
       guess_mime_type_enabled =
         Prop.computed __type __id "guess_mime_type_enabled";
       id = Prop.computed __type __id "id";
       invalid_user_list =
         Prop.computed __type __id "invalid_user_list";
       kms_encrypted = Prop.computed __type __id "kms_encrypted";
       kms_key_arn = Prop.computed __type __id "kms_key_arn";
       location_arn = Prop.computed __type __id "location_arn";
       notification_policy =
         Prop.computed __type __id "notification_policy";
       object_acl = Prop.computed __type __id "object_acl";
       oplocks_enabled = Prop.computed __type __id "oplocks_enabled";
       path = Prop.computed __type __id "path";
       read_only = Prop.computed __type __id "read_only";
       requester_pays = Prop.computed __type __id "requester_pays";
       role_arn = Prop.computed __type __id "role_arn";
       smb_acl_enabled = Prop.computed __type __id "smb_acl_enabled";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       valid_user_list = Prop.computed __type __id "valid_user_list";
       vpc_endpoint_dns_name =
         Prop.computed __type __id "vpc_endpoint_dns_name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_storagegateway_smb_file_share
        (aws_storagegateway_smb_file_share ?access_based_enumeration
           ?admin_user_list ?audit_destination_arn ?authentication
           ?bucket_region ?case_sensitivity ?default_storage_class
           ?file_share_name ?guess_mime_type_enabled ?id
           ?invalid_user_list ?kms_encrypted ?kms_key_arn
           ?notification_policy ?object_acl ?oplocks_enabled
           ?read_only ?requester_pays ?smb_acl_enabled ?tags
           ?tags_all ?valid_user_list ?vpc_endpoint_dns_name
           ~cache_attributes ?timeouts ~gateway_arn ~location_arn
           ~role_arn ());
    attrs = __attrs;
  }

let register ?tf_module ?access_based_enumeration ?admin_user_list
    ?audit_destination_arn ?authentication ?bucket_region
    ?case_sensitivity ?default_storage_class ?file_share_name
    ?guess_mime_type_enabled ?id ?invalid_user_list ?kms_encrypted
    ?kms_key_arn ?notification_policy ?object_acl ?oplocks_enabled
    ?read_only ?requester_pays ?smb_acl_enabled ?tags ?tags_all
    ?valid_user_list ?vpc_endpoint_dns_name ?(cache_attributes = [])
    ?timeouts ~gateway_arn ~location_arn ~role_arn __id =
  let (r : _ Tf_core.resource) =
    make ?access_based_enumeration ?admin_user_list
      ?audit_destination_arn ?authentication ?bucket_region
      ?case_sensitivity ?default_storage_class ?file_share_name
      ?guess_mime_type_enabled ?id ?invalid_user_list ?kms_encrypted
      ?kms_key_arn ?notification_policy ?object_acl ?oplocks_enabled
      ?read_only ?requester_pays ?smb_acl_enabled ?tags ?tags_all
      ?valid_user_list ?vpc_endpoint_dns_name ~cache_attributes
      ?timeouts ~gateway_arn ~location_arn ~role_arn __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
