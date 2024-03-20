(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__lifecycle_configuration__expiration = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** configuration__lifecycle_configuration__expiration *)

type configuration__lifecycle_configuration__transition = {
  days : float prop option; [@option]  (** days *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** configuration__lifecycle_configuration__transition *)

type configuration__lifecycle_configuration = {
  expiration :
    configuration__lifecycle_configuration__expiration list;
  transition :
    configuration__lifecycle_configuration__transition list;
}
[@@deriving yojson_of]
(** configuration__lifecycle_configuration *)

type configuration__replication_configuration = {
  regions : string prop list option; [@option]  (** regions *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** configuration__replication_configuration *)

type configuration__encryption_configuration = {
  kms_key_id : string prop;  (** kms_key_id *)
}
[@@deriving yojson_of]

type configuration = {
  encryption_configuration :
    configuration__encryption_configuration list option;
      [@option]
      (** encryption_configuration *)
  region : string prop;  (** region *)
  lifecycle_configuration :
    configuration__lifecycle_configuration list;
  replication_configuration :
    configuration__replication_configuration list;
}
[@@deriving yojson_of]
(** configuration *)

type timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_securitylake_data_lake = {
  meta_store_manager_role_arn : string prop;
      (** meta_store_manager_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  configuration : configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake *)

let configuration__lifecycle_configuration__expiration ?days () :
    configuration__lifecycle_configuration__expiration =
  { days }

let configuration__lifecycle_configuration__transition ?days
    ?storage_class () :
    configuration__lifecycle_configuration__transition =
  { days; storage_class }

let configuration__lifecycle_configuration ~expiration ~transition ()
    : configuration__lifecycle_configuration =
  { expiration; transition }

let configuration__replication_configuration ?regions ?role_arn () :
    configuration__replication_configuration =
  { regions; role_arn }

let configuration ?encryption_configuration ~region
    ~lifecycle_configuration ~replication_configuration () :
    configuration =
  {
    encryption_configuration;
    region;
    lifecycle_configuration;
    replication_configuration;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_securitylake_data_lake ?tags ?timeouts
    ~meta_store_manager_role_arn ~configuration () :
    aws_securitylake_data_lake =
  { meta_store_manager_role_arn; tags; configuration; timeouts }

type t = {
  arn : string prop;
  id : string prop;
  meta_store_manager_role_arn : string prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?tags ?timeouts ~meta_store_manager_role_arn ~configuration
    __id =
  let __type = "aws_securitylake_data_lake" in
  let __attrs =
    ({
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
        (aws_securitylake_data_lake ?tags ?timeouts
           ~meta_store_manager_role_arn ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?tags ?timeouts ~meta_store_manager_role_arn
    ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?tags ?timeouts ~meta_store_manager_role_arn ~configuration
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
