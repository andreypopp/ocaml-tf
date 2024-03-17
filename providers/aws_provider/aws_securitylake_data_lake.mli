(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_securitylake_data_lake__configuration__lifecycle_configuration__expiration

type aws_securitylake_data_lake__configuration__lifecycle_configuration__transition

type aws_securitylake_data_lake__configuration__lifecycle_configuration

type aws_securitylake_data_lake__configuration__replication_configuration

type aws_securitylake_data_lake__configuration__encryption_configuration = {
  kms_key_id : string;  (** kms_key_id *)
}
[@@deriving yojson_of]

type aws_securitylake_data_lake__configuration
type aws_securitylake_data_lake__timeouts
type aws_securitylake_data_lake

val aws_securitylake_data_lake :
  ?tags:(string * string) list ->
  ?timeouts:aws_securitylake_data_lake__timeouts ->
  meta_store_manager_role_arn:string ->
  configuration:aws_securitylake_data_lake__configuration list ->
  string ->
  unit
