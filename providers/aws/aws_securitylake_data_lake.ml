(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_securitylake_data_lake__configuration__lifecycle_configuration__expiration = {
  days : float prop option; [@option]  (** days *)
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__configuration__lifecycle_configuration__expiration *)

type aws_securitylake_data_lake__configuration__lifecycle_configuration__transition = {
  days : float prop option; [@option]  (** days *)
  storage_class : string prop option; [@option]  (** storage_class *)
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__configuration__lifecycle_configuration__transition *)

type aws_securitylake_data_lake__configuration__lifecycle_configuration = {
  expiration :
    aws_securitylake_data_lake__configuration__lifecycle_configuration__expiration
    list;
  transition :
    aws_securitylake_data_lake__configuration__lifecycle_configuration__transition
    list;
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__configuration__lifecycle_configuration *)

type aws_securitylake_data_lake__configuration__replication_configuration = {
  regions : string prop list option; [@option]  (** regions *)
  role_arn : string prop option; [@option]  (** role_arn *)
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__configuration__replication_configuration *)

type aws_securitylake_data_lake__configuration__encryption_configuration = {
  kms_key_id : string prop;  (** kms_key_id *)
}
[@@deriving yojson_of]

type aws_securitylake_data_lake__configuration = {
  encryption_configuration :
    aws_securitylake_data_lake__configuration__encryption_configuration
    list
    option;
      [@option]
      (** encryption_configuration *)
  region : string prop;  (** region *)
  lifecycle_configuration :
    aws_securitylake_data_lake__configuration__lifecycle_configuration
    list;
  replication_configuration :
    aws_securitylake_data_lake__configuration__replication_configuration
    list;
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__configuration *)

type aws_securitylake_data_lake__timeouts = {
  create : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string prop option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake__timeouts *)

type aws_securitylake_data_lake = {
  meta_store_manager_role_arn : string prop;
      (** meta_store_manager_role_arn *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  configuration : aws_securitylake_data_lake__configuration list;
  timeouts : aws_securitylake_data_lake__timeouts option;
}
[@@deriving yojson_of]
(** aws_securitylake_data_lake *)

type t = {
  arn : string prop;
  id : string prop;
  meta_store_manager_role_arn : string prop;
  s3_bucket_arn : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let aws_securitylake_data_lake ?tags ?timeouts
    ~meta_store_manager_role_arn ~configuration __resource_id =
  let __resource_type = "aws_securitylake_data_lake" in
  let __resource =
    ({ meta_store_manager_role_arn; tags; configuration; timeouts }
      : aws_securitylake_data_lake)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_securitylake_data_lake __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       id = Prop.computed __resource_type __resource_id "id";
       meta_store_manager_role_arn =
         Prop.computed __resource_type __resource_id
           "meta_store_manager_role_arn";
       s3_bucket_arn =
         Prop.computed __resource_type __resource_id "s3_bucket_arn";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
