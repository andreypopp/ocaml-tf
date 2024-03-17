(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_vpc_endpoint__timeouts = {
  create : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
  delete : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). Setting a timeout for a Delete operation is only applicable if changes are saved into state before the destroy operation occurs. *)
  update : string option; [@option]
      (** A string that can be [parsed as a duration](https://pkg.go.dev/time#ParseDuration) consisting of numbers and unit suffixes, such as 30s or 2h45m. Valid time units are s (seconds), m (minutes), h (hours). *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_vpc_endpoint__timeouts *)

type aws_opensearchserverless_vpc_endpoint = {
  name : string;  (** name *)
  security_group_ids : string list option; [@option]
      (** security_group_ids *)
  subnet_ids : string list;  (** subnet_ids *)
  vpc_id : string;  (** vpc_id *)
  timeouts : aws_opensearchserverless_vpc_endpoint__timeouts option;
}
[@@deriving yojson_of]
(** aws_opensearchserverless_vpc_endpoint *)

let aws_opensearchserverless_vpc_endpoint ?security_group_ids
    ?timeouts ~name ~subnet_ids ~vpc_id __resource_id =
  let __resource_type = "aws_opensearchserverless_vpc_endpoint" in
  let __resource =
    { name; security_group_ids; subnet_ids; vpc_id; timeouts }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_vpc_endpoint __resource);
  ()
