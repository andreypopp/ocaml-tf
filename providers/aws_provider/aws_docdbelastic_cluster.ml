(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_docdbelastic_cluster__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_docdbelastic_cluster__timeouts *)

type aws_docdbelastic_cluster = {
  admin_user_name : string;  (** admin_user_name *)
  admin_user_password : string;  (** admin_user_password *)
  auth_type : string;  (** auth_type *)
  kms_key_id : string option; [@option]  (** kms_key_id *)
  name : string;  (** name *)
  preferred_maintenance_window : string option; [@option]
      (** preferred_maintenance_window *)
  shard_capacity : float;  (** shard_capacity *)
  shard_count : float;  (** shard_count *)
  subnet_ids : string list option; [@option]  (** subnet_ids *)
  tags : (string * string) list option; [@option]  (** tags *)
  vpc_security_group_ids : string list option; [@option]
      (** vpc_security_group_ids *)
  timeouts : aws_docdbelastic_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdbelastic_cluster *)

let aws_docdbelastic_cluster ?kms_key_id
    ?preferred_maintenance_window ?subnet_ids ?tags
    ?vpc_security_group_ids ?timeouts ~admin_user_name
    ~admin_user_password ~auth_type ~name ~shard_capacity
    ~shard_count __resource_id =
  let __resource_type = "aws_docdbelastic_cluster" in
  let __resource =
    {
      admin_user_name;
      admin_user_password;
      auth_type;
      kms_key_id;
      name;
      preferred_maintenance_window;
      shard_capacity;
      shard_count;
      subnet_ids;
      tags;
      vpc_security_group_ids;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdbelastic_cluster __resource);
  ()
