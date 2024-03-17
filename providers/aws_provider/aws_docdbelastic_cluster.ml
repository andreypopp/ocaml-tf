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
  name : string;  (** name *)
  shard_capacity : float;  (** shard_capacity *)
  shard_count : float;  (** shard_count *)
  tags : (string * string) list option; [@option]  (** tags *)
  timeouts : aws_docdbelastic_cluster__timeouts option;
}
[@@deriving yojson_of]
(** aws_docdbelastic_cluster *)

let aws_docdbelastic_cluster ?tags ?timeouts ~admin_user_name
    ~admin_user_password ~auth_type ~name ~shard_capacity
    ~shard_count __resource_id =
  let __resource_type = "aws_docdbelastic_cluster" in
  let __resource =
    {
      admin_user_name;
      admin_user_password;
      auth_type;
      name;
      shard_capacity;
      shard_count;
      tags;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_docdbelastic_cluster __resource);
  ()
